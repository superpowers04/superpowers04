#!/bin/lua
--[[
	Uses https://raw.githubusercontent.com/itmesarah/classchanges/refs/heads/main/discordclasses.js to update a theme's classes

]]



local debugPrint = print or function() end
local arg = args or arg
local themePath = arg[1]
if not themePath then return print('Invalid usage, expected ThemePath.\n Proper usage: UpdateThemeClasses.lua (ThemePath) [(OutputPath)]') end


local outputPath = arg[2]
local themeContents = ""
local succ,err = pcall(function()
	local themeFile = io.open(themePath,'r')
	themeContents = themeFile:read('*a')
	themeFile:close()
end)
if not succ then 
	return print('Error trying to open theme file: '..err)
end

if not outputPath then 
	outputPath = themePath
	os.execute(('cp %q %q'):format(themePath,themePath..'.bak'))
	print('No output supplied, backed up theme')
end

local URL = "https://raw.githubusercontent.com/itmesarah/classchanges/refs/heads/main/discordclasses.js"
local curl = io.popen(('curl -L %q'):format(URL))
local classListJson = curl:read('*a')
curl:close()

if not classListJson or #classListJson < 10 or not classListJson:find('"') then 
	return print('Unable to load classlist: Recieved JSON is invalid!')
end

local classList = {}
local validClasses = {}
for str in classListJson:gmatch('"(.-)"') do
	for class in str:gmatch('[^ ]+') do
		classList['.'..class:match('[^_-]+')] = '.'..class
		validClasses['.'..class] = true
	end
end
local daWarning = false
local changed = 0
themeContents = themeContents:gsub('(%.[a-zA-Z0-9%-_]+)',function(a)
	if(#a < 5) then return a end -- Probably not a valid class, no need to scan it
	if(validClasses[a]) then return a end -- Already updated, skip it
	if(a:sub(1,4) == ".da-") then -- Normalised classes, these don't work anymore
		if not daWarning then
			daWarning = true
		end
		print(('Encountered %q'):format(a))
		return a
	end
	local actualClass = a:match('[a-zA-Z0-9]+')
	if actualClass and classList[a] then changed=changed+1; return classList[a] end
	local l = #a-3
	while l > 0 do
		local newClass = classList[a:sub(0,l)]
		if newClass then
			debugPrint(newClass,a)
			changed=changed+1; return newClass
		end
		l = l-1
	end
	return a
end)
if daWarning then
	print('Found instance of a BetterDiscord normalised class. These are no longer supported by BetterDiscord!')
end
local output = io.open(outputPath,'w')
output:write(themeContents)
output:close()
print(('Output to %q, changed %i classes'):format(outputPath,changed))