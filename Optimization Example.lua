--[[
	This is basically just a bunch of random things about lua by superpowers04. Mostly centered around optimization but also contains other information
	Why isn't this a markdown file? Because I'm lazy
	Everything is explained to the best of my knowledge of how lua works
	
	I highly recommend looking at the Programming In Lua book, https://www.lua.org/pil/(https://www.lua.org/pil/contents.html is the online version)
	It explains a lot of things about how lua works and you'll probably understand a lot of this document better
	
	GMod's own Wiki has a pretty good section on optimization - https://wiki.facepunch.com/gmod/optimizationTips

]]
-- Starting out with how seemingly small optimizations can make a massive difference

--  This example is specifically setup for Figura and LuaJ, but will apply to other lua implementations
--  These optimizations personally brought me from a 2% total rendertime down to a 0.03% total rendertime

-- Original code courtesy of @jceratops on Discord
-- Animation Blending Shenanigans - Mask
function events.render()
    if --What Animations We're Checking For (Walking, Sitting) - Making sure that the putting-on mask animation is also playing
    ((animations.Moth.walking:isPlaying() or animations.Moth.sit:isPlaying() or animations.Moth.sitting:isPlaying() or animations.Moth.crouching:isPlaying() or animations.Moth.sprinting:isPlaying()) and (animations.Moth.mask_on:isPlaying() or animations.Moth.mask_toggle:isPlaying())) 
    --What should happen if tue
    then animations.Moth.mask_on:setPriority(1)
         animations.Moth.mask_toggle_arm:setPriority(1)
         animations.Moth.mask_toggle:setPriority(2)
         animations.Moth.mask_swap:setPriority(1)
    --What happens when false
    else animations.Moth.mask_on:setPriority(-2)
         animations.Moth.mask_toggle:setPriority(-1)
         animations.Moth.mask_toggle_arm:setPriority(-2)
         animations.Moth.mask_swap:setPriority(0)
    end
end


-- The optimized version and explainations for why I did things certain ways:

-- Initialise the variable, we don't set it to anything because we need to set the priority still
local maskBlending 
-- lua takes a lot longer to access global variables. This prevents needing to index EVERY_SCOPE > _G > animations > moth down to function scope > script scope > moth
local animMoth = animations.Moth 
--  `local animMoth,maskBlending = animations.Moth` would've also been *slightly* faster but not by much and the readability here is more important
function events.render()
	-- Move the original if statement to a variable, this is a actually really important for this optimization
	--  Side note, you could also speed this up by putting isPlaying into a local variable just calling isPlaying(anim), but the performance gain probably isn't worth it here
	local newBlend = (animMoth.mask_on:isPlaying() or animMoth.mask_toggle:isPlaying()) -- Fail first, these first 2 checks will return false most of the time, no need to check the rest of the animations
		and ((animMoth.walking:isPlaying() or animMoth.sit:isPlaying() or animMoth.sitting:isPlaying() or animMoth.crouching:isPlaying() or animMoth.sprinting:isPlaying()))

	-- If variable hasn't changed, return. We don't need to re-run setPriority every frame. This can make a MASSIVE difference in performance
	--  This is called a guard clause, these usually should be faster than an if/else because you immediately return out of the function instead of lua having to jump to after the end of the if/else statement for no reason
	if newBlend == maskBlending then return end
	-- Set maskBlending to newBlend, without this, the check above would fail every time, removing it's purpose
	maskBlending = newBlend
	-- newBlend is slightly faster to index than maskBlending
	--  If you thought "lets use ternaries(`VALUE and 1 or 0` are ternaries in lua) for less repetition", they'll be slower because they have to check newBlend every time
	if newBlend then
		animMoth.mask_on:setPriority(1)
		animMoth.mask_toggle_arm:setPriority(1)
		animMoth.mask_toggle:setPriority(2)
		animMoth.mask_swap:setPriority(1)
	else 
		animMoth.mask_on:setPriority(-2)
		animMoth.mask_toggle:setPriority(-1)
		animMoth.mask_toggle_arm:setPriority(-2)
		animMoth.mask_swap:setPriority(0)
	end
end



-- Doing things like
stringVar = "meow"
if (string.find(stringVar,"w")) then
	print(stringVar .. "is stringVar")
end
-- is actually slower than
local stringVar = "meow"
if (stringVar:find("w")) then
	print(("%q is stringVar"):format(stringVar))
end

-- Assigning and accessing global variables is slower

-- `string` has to go through every environment looking for a table named `string`
--  Every string contains a direct reference to the string table, so it doesn't have to do this
--  If you're curious, this is actually pretty much the same as having
setmetatable("STRING_HERE",{_index=string}) 
--  BUT metatables ONLY work with objects, not Strings, Numbers, Bools or Nils

-- In LuaJ, it's not faster but most other lua implementations will probably be faster with string.format over string concatenation
--  This is because I think lua creates a new string object for each addition to the concatenation, where string.format just uses sprintf from C
--  "test" .. "test2" .. "test3" would create about 6 new strings


-- If possible, try to cache results in lua instead of retrieving them from a non-lua object. For example
part:setVisible(player:isSprinting() and player:isOnGround())
print(part:getVisible())
-- Lua is a very inefficient language for converting to and from variables outside of lua unless the underlying lua implementation directly references the stack
--  Usually functions have to convert values to and from lua, which can make things a bit slower.
local visible = player:isSprinting() and player:isOnGround()
part:setVisible(visible)
print(visible)
-- You went from checking (_ENV > part > setVisible()) AND (_G > print()) + (_ENV > part > getVisible())
--  to (_ENV > visible = X), (_ENV > part > setVisible()) and (_G > print()) + (_ENV > visible)
-- In this case, getVisible and setVisible have to convert values to and from lua, making local variables is a lot faster than conversion between luaj and lua
-- Infact, a bunch of the optimization in the first example is just preventing leaving lua as much as you can



-- Here's an example of an optimization attempt that doesn't optimise anything
local _tickEvent = events.tick
_tickEvent:register(function()
	host:setActionbar('hello')
end)

-- Now you're probably thinking "well this flies in the face of the entire file"
-- It doesn't. In this case, we're only using _tickEvent once when the file is loaded. Localising a variable for one use just adds complexity
-- This is basically as efficient as:
local _tickEvent = nil
events.tick:register(function()
	host:setActionbar('hello')
end)
-- Here's another example actually that won't work
local _tickEvent = events.tick
_tickEvent = function()
	host:setActionbar('hello')
end
-- Question, what is `events.tick =` actually doing that `_tickEvent =` doesn't? It's running __newindex from the metatable for `events`.
-- As a quick rundown, tables have metatables. 
--  Metatables can change how lua interacts with tables, for example:
local tbl = {0}
local metatable = { __newindex = print }
setmetatable(tbl,metatable)
tbl.name = 3 

-- This will actually just print something like `table: 0x58baec99ead0	name	3` instead of setting `tbl`'s `name` index to `3`.
--  You're actually running metatable.__newindex(tbl,"name",3), but because __newindex is just print, you're technically running print(tbl,"name",3)
--  Basically, __newindex will allow you to change how creating new indexes in a table works
-- So-
events.tick = function()
	host:setActionbar('hello')
end
-- Is actually running the __newindex function of event.tick's metatable. 
--  In Figura this is bound to events.tick.register, so this is the same as running
events.tick:register(function()
	host:setActionbar('hello')
end)


-- Fun fact, metatables can also apply to the local environment and global environment. 
--  So you could set the metatable of _ENV or _G to change how __index works and make it add to a different table or something



