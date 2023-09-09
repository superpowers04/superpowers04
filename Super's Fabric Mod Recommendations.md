# Super's Minecraft recommendation list thing
(Unless specified, All mods work with Quilt, providing you have Quilt's libraries instead)
Note this doc is not affiliated with MinecraftHopper, Minecraft Community Support, Prism, Modrinth, Fabric, Quilt or anyone else. 

This is just a funni list of recommendations

**Using [Prism](https://prismlauncher.org) or [Modrinth Launcher](https://modrinth.com/app) is recommended.**
# Recommendations on stuff to **avoid**
* Hamachi -- Conflicts with the internet, and can cause issues with authentication(See E4MC for alternative)
* MCLeaks/TheAltening -- Stolen/Illegal account generator. Follow [this Minecraft Hopper article](https://minecrafthopper.net/help/hosts-file/) for fix/removal
* Feather Client -- Steals mods, suspicious behavior
* Lunar Client -- Suspicious behavior(Obfuscates logs or atleast used to)
  * I remember an issue where Lunar Client had broken hit detection for a short period of time, not sure if this was actually true, if so, it shouldn't be editing player behavior
* TLauncher -- Piracy, Installs suspicious certificates onto your computer, steals mods, Stole the name and some other drama with TL Legacy/Legacy Launcher
* Curse Forge/Curse Forge Launcher -- Curse forge has had issues with malware, weird practices(allowed illegal copies of Iris/Sodium for a while) and has been superseded by Modrinth
* Optifine -- Has violated Minecraft's EULA several times in the past, closed source, can cause a lot of issues. Sodium provides far better performance and you can find alternatives with more features


* Essential -- Honestly, I just don't like it. It adds expensive cosmetics and such(Refer to Figura below for *free* cosmetic alternative and refer to e4mc below for hosting alternative)

# Required
### [Fabric](https://fabricmc.net/use/installer/)
* [Fabric API](https://modrinth.com/mod/fabric-api) -- Fabric API, Required for most Fabric mods
* [Fabric Language Kotlin](https://modrinth.com/mod/fabric-language-kotlin) -- Allows mods to use Kotlin with Fabric, several mods need this
### [Quilt](https://quiltmc.org/en/)
* [Quilted Fabric API/Quilt Standard Libraries](https://modrinth.com/mod/qsl) -- Quilt API. Includes a Fabric API compatibility layer for Fabric mods 
* [Quilt Kotlin Libraries](https://modrinth.com/mod/qkl) -- Allows mods to use Kotlin with Quilt, several mods need this
  
### Mixed
* [Mod Menu](https://modrinth.com/mod/modmenu) -- Adds an ingame modlist allowing you to edit configs and such
* [Cloth Config API](https://modrinth.com/mod/cloth-config) -- Some mods use this for providing their config
* [Yet Another Config Library(YACL)](https://modrinth.com/mod/yacl) -- Some mods use this for providing their config

# Performance Stuff
* [Sodium](https://modrinth.com/mod/sodium) -- Optimises Clientside stuff(i.e more fps)
* [Lithium](https://modrinth.com/mod/lithium) -- Optimises Client/Serverside stuff
* [Sodium Extra](https://modrinth.com/mod/sodium-extra) -- Extra options for sodium
* [Reeses Sodium Options](https://modrinth.com/mod/reeses-sodium-options) -- Allows you to access said options
* [More Culling](https://modrinth.com/mod/moreculling) -- Adds more options for culling(Prevents things you can't see from taking up rendering time)
* [Iris Shaders](https://modrinth.com/mod/iris) -- Shader support

# Optifine features
* [Animatica](https://modrinth.com/mod/animatica) -- Support for Optifine/MCPatcher's animated textures
* [Entity Texture Features (ETF)](https://modrinth.com/mod/entity-model-features) -- Support for random textures on entities, and some other things
* [Entity Model Features (EMF)](https://modrinth.com/mod/entity-model-features) -- Support for Optifine Custom Entity models(Requires ETF)
* [CIT Resewn](https://modrinth.com/mod/cit-resewn) -- MCPatcher/Optifine CIT features(Basically the custom textures depending on item nbt instead of just id)
* [Zoomify](https://modrinth.com/mod/zoomify) -- A mod that allows you to zoom (Requires YACL)
  
# Random stuff
* [Figura](https://modrinth.com/mod/figura/) -- A completely client sided mod that allows you to use custom [blockbench](https://blockbench.net/) player models that can be scripted with [lua](https://lua.org). Avatars can be seen by other players that have the mod without the server needing the mod 
* [E4MC](https://modrinth.com/mod/e4mc) -- Replacement for Essential's multiplayer. It's serversided and far more lightweight
* [] 


# Some helpful resources
* [Optifine Alternatives by LambdAurora](https://github.com/LambdAurora/optifine_alternatives)
