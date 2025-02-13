-- An example to how small optimizations can make a massive difference. Example by superpowers04
--  This example is specifically setup for Figura, but will apply to other lua implementations
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


-- The optimized version and explainations for why I did something:

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



-- Some small side notes, doing things like
local stringVar = "meow"
if (stringVar:find("w")) then
	print(("%q is stringVar"):format(stringVar))
end
-- Can be faster than 
stringVar = "meow"
if (string.find(stringVar,"w")) then
	print(stringVar .. "is stringVar")
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