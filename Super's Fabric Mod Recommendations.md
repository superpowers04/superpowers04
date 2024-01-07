# Super's Minecraft recommendation list thing
(Unless specified, All mods work with Quilt, providing you have Quilt's libraries instead)
***Note this doc is not affiliated with MinecraftHopper, Minecraft Community Support, Prism, Modrinth, Fabric, Quilt or anyone else.***

This is just a funni list of recommendations from me and I really recommend you do research yourself before installing anything listed here. **Please do not ever blindly follow anything you see online**

**Using [Prism](https://prismlauncher.org) or [Modrinth Launcher](https://modrinth.com/app) is recommended.**
# Recommendations on stuff to **avoid**
* Hamachi -- Conflicts with the internet, and can cause issues with authentication(See E4MC for alternative)
* MCLeaks/TheAltening -- Stolen/Illegal account generator. Follow [this Minecraft Hopper article](https://minecrafthopper.net/help/hosts-file/) for fix/removal
* Any client or mod providing paid goodies -- Things like paid cosmetics are actually against [Minecraft's End User License Agreement](https://www.minecraft.net/en-us/eula). Refer to ```Any Mods you create for Minecraft: Java Edition from scratch belong to you (including pre-run Mods and in-memory Mods) and you can do whatever you want with them, as long as you don't sell them for money / try to make money from them and so long as you don’t distribute Modded Versions of the game```. This includes Optifine, Essential, Badlion and Lunar from what I know
* Most "clients" -- Most clients are closed source. This alone is a red flag. These clients directly modify the game's code and could be doing literally anything to your computer.
* Badlion Client -- Last time I checked, their privacy policy was supsicious. As of writing this, I am actually unable to load the Privacy Policy page so I could be wrong.
* Feather Client -- Steals mods, suspicious behavior
* Lunar Client -- Suspicious behavior(Obfuscates logs or atleast used to)
  * I remember an issue where Lunar Client had broken hit detection for a short period of time, not sure if this was actually true, if so, it shouldn't be editing player behavior
* TLauncher -- Piracy, Installs suspicious certificates onto your computer, steals mods, Stole the name and some other drama with TL Legacy/Legacy Launcher
* Curse Forge/Curse Forge Launcher -- Curse forge has had issues with malware, weird practices(allowed illegal copies of Iris/Sodium for a while) and has been superseded by Modrinth in multiple ways.
I'd only recommend using CurseForge for older versions of the game or if you have to. And if you do, I'd recommend downloading the jar for the mod directly or using Prism
* Optifine -- Has violated Minecraft's EULA several times in the past. closed source, basically nobody can see the source code, This is really bad for mod compatibility, which should be a huge worry for a mod used to be essential for your mod list. can cause a lot of issues due to how it changes rendering. Sodium provides far better performance and you can find alternatives with more features
* Essential -- Honestly, I just don't like it. It adds expensive cosmetics and such(Refer to Figura below for *free* cosmetic alternative and refer to e4mc below for hosting alternative)

# Some general recommendations
* [Fabric](https://fabricmc.net/) -- While yes this guide is for Fabric, I thought I'd atleast mention it here. Fabric is more lightweight than Forge, and since the loader isn't dependant on Minecraft version, you'll usually get a fabric release within the first few days of a Minecraft update
* [Quilt](https://quiltmc.org/en/) -- Quilt is like fabric but adds some extra features. Using QSL(mentioned below), You can also run most Fabric mods.
* [Modrinth](https://modrinth.com/) -- A replacement for Curseforge, Pretty much all of the mods on this list come from here. It's open source, isn't owned by a cringe corperation, doesn't try to shove it's launcher down your throat and has no 3 second wait for a download 
* [Prism Launcher](https://prismlauncher.org) -- An fork/drop-in replacement of MultiMC that allows downloading mods within the launcher, has a whole bunch of fixes and improvements. This is the launcher I currently use.
* [MultiMC](https://multimc.org) -- An advanced lightweight Minecraft Launcher that's portable, allows multiple instances of the game without too much hassle, and easy installing of mod loaders like Fabric. Prism Launcher mostly re

# Required
### [Fabric Loader Only](https://fabricmc.net/use/installer/)
Mods for Fabric. Note if you're using Fabric, you should not use mods from the Quilt section
* [Fabric API](https://modrinth.com/mod/fabric-api) -- Fabric API, Required for most Fabric mods
* [Fabric Language Kotlin](https://modrinth.com/mod/fabric-language-kotlin) -- Allows mods to use Kotlin with Fabric, several mods need this
### [Quilt Loader Only](https://quiltmc.org/en/)
Mods for Quilt. Note if you're using Quilt, you should not use mods from the Fabric section
* [Quilted Fabric API/Quilt Standard Libraries](https://modrinth.com/mod/qsl) -- Quilt API. Includes a Fabric API compatibility layer for Fabric mods 
* [Quilt Kotlin Libraries](https://modrinth.com/mod/qkl) -- Allows mods to use Kotlin with Quilt, several mods need this
  
### Quilt and Fabric
Mods that work on both Quilt and Fabric and are required in most cases
* [Mod Menu](https://modrinth.com/mod/modmenu) -- Adds an ingame modlist allowing you to edit configs and such
* [Cloth Config API](https://modrinth.com/mod/cloth-config) -- Some mods use this for providing their config
* [Yet Another Config Library(YACL)](https://modrinth.com/mod/yacl) -- Some mods use this for providing their config

# Base Performance Mods
Mods that help with performance. I'd recommend having all of these
* [Sodium](https://modrinth.com/mod/sodium) -- Optimises Clientside stuff(i.e more fps)
* [Lithium](https://modrinth.com/mod/lithium) -- Optimises Client/Serverside stuff
* [Sodium Extra](https://modrinth.com/mod/sodium-extra) -- Extra options for sodium
* [Reeses Sodium Options](https://modrinth.com/mod/reeses-sodium-options) -- Allows you to access said options
* [More Culling](https://modrinth.com/mod/moreculling) -- Adds more options for culling(Prevents things you can't see from taking up rendering time)
* [Iris Shaders](https://modrinth.com/mod/iris) -- Shader support. If you're not planning on using shaders, you can skip this
* [Memory Leak Fix](https://modrinth.com/mod/memoryleakfix) -- Fixes some memory leaks

# Extra Performance Stuff
Mods that can help with performance but might have incompatibilities or whatever. These are mostly optional 
* [Ferrite Core](https://modrinth.com/mod/ferrite-core) -- Memory Usage optimisations. I've seen a few mods that don't work with this
* [Immediately Fast](https://modrinth.com/mod/immediatelyfast) -- This mod can help with FPS, however it has incompatibilities with a lot of mods since it does a lot for rendering
* [Krypton](https://modrinth.com/mod/krypton) -- Optimises networking stuff
* [Dash Loader](https://modrinth.com/mod/dashloader) -- Makes the game load really really fast. However some mods are incompatible with this
* [Distant Horizons](https://modrinth.com/mod/distanthorizons) -- Allows you to see far past your render distance without causing lag. However this mod only works with some setups and is very very buggy
* [Bobby](https://modrinth.com/mod/bobby) -- Allows for render distances greater than the server's view-distance setting by caching chunks and using the cache. In some ways, this could theroetically help with network issues
* [Raknetify](https://modrinth.com/plugin/raknetify) -- A mod that allows you to join servers with the mod via raknet. This can supposedly help with network instability but I've never tried it


# Optifine features
Optifine features ported over to Sodium and Iris
* [Puzzle](https://modrinth.com/mod/puzzle) -- A mod that adds some optifine features, an API and some other things
* [Animatica](https://modrinth.com/mod/animatica) -- Support for Optifine/MCPatcher's animated textures
* [Entity Texture Features (ETF)](https://modrinth.com/mod/entity-model-features) -- Support for random textures on entities, and some other things
* [Entity Model Features (EMF)](https://modrinth.com/mod/entity-model-features) -- Support for Optifine Custom Entity models(Requires ETF)
* [CIT Resewn](https://modrinth.com/mod/cit-resewn) -- MCPatcher/Optifine CIT features(Basically the custom textures depending on item nbt instead of just id)
* [Zoomify](https://modrinth.com/mod/zoomify) -- A mod that allows you to zoom (Requires YACL)
* [Lamb Dynamic Lights](https://modrinth.com/mod/lambdynamiclights) -- What is says on the tin, dynamic lighting
  
# Random stuff
Random mods I thought I'd mention because I like them ig
* [Figura](https://modrinth.com/mod/figura/) -- A completely client sided mod that allows you to use custom [blockbench](https://blockbench.net/) player models that can be scripted with [lua](https://lua.org). Avatars can be seen by other players that have the mod without the server needing the mod 
* [E4MC](https://modrinth.com/mod/e4mc) -- Replacement for Essential's multiplayer. It's serversided and far more lightweight (As of last edit, E4MC is down)
* [Custom Lan](https://modrinth.com/mod/custom-lan) -- A mod that adds a bunch of options for hosting a world. It supports tunnelling (Note I haven't tested this mod myself)
* [LAN World Plug-n-Play](https://modrinth.com/mod/mcwifipnp) -- A mod that automatically port-forwards your lan world using UPnP (Note I haven't tested this mod myself)


# Some helpful resources
* [Optifine Alternatives by LambdAurora](https://github.com/LambdAurora/optifine_alternatives)
