# Super's Minecraft recommendation list thing
***Note this doc is not affiliated with MinecraftHopper, Minecraft Community Support, Prism, Modrinth, Fabric or anyone else.***

This is just a bunch of lists for Minecraft I made and I really recommend you do research yourself before installing anything listed here. **Please do not ever blindly follow anything you see online**

**Using [Prism](https://prismlauncher.org) or [Modrinth Launcher](https://modrinth.com/app) is recommended.**
# Term Glossary
Terms often used when refering to Minecraft and/or Modding Minecraft
* [Minecraft](https://minecraft.wiki/w/Minecraft) - The game this page is about. Unless specified, I'm usually refering to Minecraft: Java Edition
* [Mojang](https://en.wikipedia.org/wiki/Mojang) - The company that owns and develops Minecraft
* [Microsoft](https://en.wikipedia.org/wiki/Microsoft) - The parent company of Mojang. Note Microsoft is NOT Mojang.
* [Java Edition](https://minecraft.wiki/w/Java_edition) - The Original Minecraft, Minecraft for Windows, MacOS and Linux, made using Java. Unless specified, I'm usually refering to Minecraft: Java Edition
* [Java](https://en.wikipedia.org/wiki/Java) - The programming language used for Minecraft Java Edition.
* [JVM](https://en.wikipedia.org/wiki/Java_virtual_machine) - A program/Virtual Machine that runs Java bytecode, which in turn runs Minecraft: Java Edition.
* .jar - A Java Archive, basically a special zip used by Java that usually contains code or assets
* [Bedrock Edition](https://minecraft.wiki/w/Bedrock_edition) - Minecraft's cross platform release. Has a bunch of differences from Java Edition. Refer to [Minecraft Wiki's parity list](https://minecraft.wiki/w/Official_pages/Parity_issue_list) for a compilation of ALL of the changes
	* [Behavior Pack](https://minecraft.wiki/w/Behavior_Pack) - Sorta like Minecraft Data packs, I think. I don't play Bedrock Edition so I don't entirely know. These do NOT exist on Java Edition
	* [Addon](https://minecraft.wiki/w/Addon) - Kinda like Mods, I think. I don't play Bedrock Edition so I don't entirely know. These do NOT exist on Java Edition

* [Launcher](https://minecraft.wiki/w/Minecraft_Launcher) - Refers to the program used to launch the game, Minecraft requires a launcher because some things need to be setup before the game can run
* [Client](https://minecraft.wiki/w/Client) - The actual program you interface with to play the game. Basically it handles the GUI, displaying mobs, players, blocks, etc on the screen, and stuff like that.
* [Server](https://minecraft.wiki/w/Server) - The program that's running the world you're playing on. Handles things like breaking/placing blocks, movement, mob activity, etc
	* Past Minecraft Release 1.3.1, You will always be playing on a server, even in SinglePlayer.
* [Resource Pack](https://minecraft.wiki/w/Resource_Pack) - A file or folder that edit's the clients resources. Usually replaces things like textures, names, models and sounds.
	* [Texture Pack](https://minecraft.wiki/w/Texture_pack) - Outdated term that usually refers to a resource pack nowadays, Minecraft stopped using the term Texture Packs around 1.5
* [.minecraft](https://minecraft.wiki/w/.minecraft) - Refers to the folder where the game's files are located.<br>
	Using the default Launcher, these are located under 
	* `%Appdata%/roaming/.minecraft` for Windows
	* `~/Library/Application Support/minecraft` for MacOS
	* `~/.minecraft` for Linux
	Other launchers will use different locations for your .minecraft, for example, Prism's portable install will store game files under Prism/Instances/INSTANCE/.minecraft
* Instance - A setup for Minecraft, usually specifies the location of the game's .minecraft, what ModLoader to use, it's JVM arguments, etc
* [Modloader](https://minecraft.wiki/w/Modloader) - A modification to the game's jar file that allows the game to load mods. Usually from .minecraft/mods
* [Mod](https://minecraft.wiki/w/Mods) - A file(usually a jar) that gets loaded by a ModLoader to edit or add to the game. Mods usually edit the game's code.
* [Shaders/ShaderPack](https://minecraft.wiki/w/Shader) - A zip that usually adds effects to Minecraft like better shadows or reflections. Requires a mod that provides support for Shaders like Iris or Oculus
* [Forge](https://minecraft.wiki/w/Mods/Forge) - A Minecraft Modloader, commonly used for larger content mods and/or versions below 1.13.
* [Fabric](https://minecraft.wiki/w/Mods/Fabric) - A Minecraft Modloader, commonly used for smaller mods and/or versions above 1.13.


# Recommendations on what to **avoid** using and why
* ### Most minecraft mod downloading sites
	* A good portion of sites for Minecraft mods have malware or steal mods. I'd only recommend using Modrinth, MCArchive, github and whatever official pages a mod has for downloading from. 
	* If the mod wasn't released recently then Curseforge might also be a viable option but read the section on curseforge for why I'd advise against this whenever you can  
* ### Hamachi
	* Conflicts with the internet, and can cause issues with authentication
	* I've personally had it mess up my network drivers since it installs a network driver to function
	* Acts as a VPN
	* See [E4MC](https://modrinth.com/mod/e4mc) or [playit.gg](https://playit.gg) for alternatives
* ### Literally any VPN
	* VPNs have a history of messing up how Minecraft sends packets, this can actually get you banned from servers in some cases
	* VPNs change how servers identify you by changing your IP, this could theroetically make you suffer a ban from the server detecting it or someone else getting IP banned and then you unluckily getting the IP that was banned
	* If you're using a VPN for security reasons, refer to [this video by Tom Scott](https://www.youtube.com/watch?v=WVDQEoe6ZWY)
* ### MCLeaks/TheAltening
	* Stolen/Illegal account generator. 
	* \* Follow [this Minecraft Hopper article](https://minecrafthopper.net/help/hosts-file/) for fix/removal
* ### Paid Custom Content
	* Things like paid cosmetics are against [Minecraft's End User License Agreement](https://www.minecraft.net/en-us/eula). Refer to ```Any Mods you create for Minecraft: Java Edition from scratch belong to you (including pre-run Mods and in-memory Mods) and you can do whatever you want with them, as long as you don't sell them for money / try to make money from them and so long as you don’t distribute Modded Versions of the game```. Although from what I can tell, they aren't in violation of the [Minecraft Usage Guidelines](https://www.minecraft.net/en-us/usage-guidelines), so from my understanding, they technically aren't doing anything wrong but I'm going to keep this here anyways :3
	* This includes OptiFine, Essential, Badlion, Feather and Lunar from what I know.
	* I'm honestly not sure why these mods aren't taken down. My assumption is either too much of a PR disaster with some of these, or not worth it. Interestingly, Mojang actually did send a cease and desist to [Physics mod](https://minecraftphysicsmod.com) for having a patreon paid version so I'm not completely sure
	* \* Refer to Figura below for *free* cosmetic alternatives
* ### Most "clients" and many launchers
	* Some clients and/or launchers will directly login to your account instead of asking for permission using a oAuth token. This means the client has FULL access to your Microsoft account. You can tell if this happens by if DOESN'T ask for a code or open your web browser to sign in. ***If the client you are using requires direct login to your microsoft account, Immediately uninstall the launcher and change your Microsoft Account Password as the client has FULL ACCESS TO YOUR MICROSOFT ACCOUNT AND A MINECRAFT CLIENT OR LAUNCHER SHOULD NEVER NEED THIS*** 
	* Some clients will ask for administator or superuser access, the vanilla game and mods should *never* require administrator access after installation.
	* Most clients are closed source, meaning you cannot see the code for the client
	* These clients directly modify the game's code and could be doing literally anything to your computer. While this is true for mods, usually mods are in atleast some kind of sandbox.
	* Many clients have some invasive privacy policies where they can collect a lot of information about you that Minecraft itself doesn't even collect. A Minecraft client should NEVER need access to your Internet activity, geo-location, phone number, home address?!?!?!?! WHY IS THIS IN LUNAR CLIENT'S PRIVACY POLICY??!?!?!? THEY CAN EVEN SELL IT TO OTHER COMPANIES?!??!??!?!?!?
	* Some clients and launchers will obfuscate their code. This makes it harder to figure out why your game crashed, makes it harder to know what the client is ACTUALLY doing
	* Many clients contain paid goodies, Refer to [Paid Custom Content](#paid-custom-content)
* ### Badlion Client
	* Redistributes and modifies mods (especially OptiFine) without permission from the creators
	* It has an anticheat that runs in the background with driver level permissions 24/7 WHICH NO MINECRAFT CLIENT SHOULD REQUIRE
	* Refer to [Most "clients"](#most-clients-and-many-launchers)
* ### Feather Client
	* Steals mods/has stolen mods in the past and has modified them, which could cause issues and is definitely suspicious
	* Obfuscates code
	* Refer to [Most "clients"](#most-clients-and-many-launchers)
* ### Lunar Client
	* Suspicious behavior like obfuscating logs. Fun fact, obfuscating logs can make it difficult or even impossible to troubleshoot what's going on with your game if you encounter an issue
	* I remember an issue where Lunar Client had broken hit detection for a short period of time, not sure if this was actually true, if so, it shouldn't be editing player behavior
	* Several people have encountered Lunar Client acting like an Alt account generator, causing the game to disallow them from joining servers. IF you get a "Switch to Mojang Mode" error, that's Lunar Client and you should switch away immediately and change your Microsoft account's password
	* [Their privacy policy](https://www.lunarclient.com/privacy) is sus as hell, IF you plan on continuing to use lunar client for whatever reason, please please look at it and fully grasp what they're using. Like, A Minecraft client should NEVER need access to your Internet activity, geo-location, phone number, or home address?!?!?!?! WHY IS THIS IN LUNAR CLIENT'S PRIVACY POLICY??!?!?!?
	* Refer to [Most "clients"](#most-clients-and-many-launchers)
* ### TLauncher(Seperate from ATLauncher)
	* Steals mods
	* Installs suspicious certificates onto your computer
	* Stole the name and some other drama with TL Legacy/TL Legacy Launcher
	* Refer to [Many launchers](#most-clients-and-many-launchers)
	* Refer to [Pirated Launchers and/or account generators](#pirated-launchers-andor-account-generators)
	* I cannot stress enough, please do NOT use TLauncher. I know that if you're using this, I'm not going to convince you to buy the game, but there's so many better ways to play Minecraft that don't involve feeding into this disgusting company
	* \* Modrinth and Prism launcher are good alternatives
* ### Pirated Launchers and/or account generators
	* The obvious piracy concerns
	* Some of these launchers or account generators might modify system files. Ironically, you actually don't need to modify ANY system files to play the game for free so any launchers doing this are probably doing it for malicious reasons
	* Some of these launchers will use their own jars and libraries, This absurdly bad because it makes the game less stable
	* Some of these launchers are closed source which is not good usually
	If you really want to play the game, I'd really recommend purchasing it if you can. If you really can't buy the game, look towards [luanti(Formerly Minetest)](https://www.luanti.org) or maybe use an open source launcher. Just be careful
* ### Curseforge
	* Curseforge has had issues with malware, weird practices(allowed illegal copies of Iris/Sodium for a while) and has been superseded by Modrinth in multiple ways. 
	* Curseforge uses anti-competitive behaviors like making it more difficult to install some mods on other launchers by forcing you to manually download the mods. 
	* I'd **only** recommend using curseforge if you can't find a mod on Modrinth or MCArchive, for older versions of the game or if you have to. 
	* \* If you do use curseforge, I'd recommend downloading the jar for the mod directly or using Prism and recommend against using their launcher
* ### OptiFine(On 1.14 and above\*)
	* Has violated Minecraft's EULA several times in the past.
	* Closed source, basically nobody can see the source code, This is really bad for mod compatibility, which should be a huge worry for a mod that used to be essential for your mod list.
	* Can cause a lot of issues due to how it changes rendering.
 	* Sodium/Embeddium provides far better performance and you can find alternatives with more features.
	* Stole a bunch of features from MCPatcher, and STILL brags about making it obsolete on it's website TO THIS DAY(Aug-29-2024)
		![image](https://github.com/user-attachments/assets/d63fe711-df59-4ed7-98f8-36c8346fc024)
	* Refer to [Paid Custom Content](#paid-custom-content)
	* \* Note, if you're using any Minecraft version belore 1.14, most mods usually expect OptiFine and I haven't really seen any alternatives.
* ### Essential
	* Most mods that require this will force install it into your Minecraft instance without any permission, in my experience
	* In my experience every time I've used it, it has installed itself to a seperate folder and you have to go hunting in your .minecraft folder
	* It adds expensive cosmetics, refer to [Paid Custom Content](#paid-custom-content)
	* \* Refer to Figura below for a *free* cosmetics alternative and refer to e4mc below for hosting alternative
* ### The default launcher
	* It might seem counter-intuitive but the base launcher is honestly pretty unstable and isn't the best for modding

# Some general recommendations
  > [!NOTE] 
  > You cannot download Curseforge mods from within the Modrinth launcher. You have to add them manually.
* [Modrinth (Launcher/Mod distribution website)](https://modrinth.com/) -- A replacement for Curseforge, Pretty much all of the mods on this list come from here. It's open source, isn't owned by a cringe corporation, doesn't try to shove it's launcher down your throat and has no 3 second wait for a download.
* [Prism Launcher (Launcher)](https://prismlauncher.org) - A fork/drop-in replacement of MultiMC that allows downloading mods from Modrinth and Curseforge within the launcher, has a whole bunch of fixes and improvements. This is the launcher I currently use.
* [MultiMC (Launcher)](https://multimc.org) -- An advanced lightweight Minecraft Launcher that's portable, allows multiple instances of the game without too much hassle, and easy installing of mod loaders like Fabric. Prism Launcher mostly replaces MultiMC though
* [Fabric (Mod Loader)](https://fabricmc.net/) -- While yes this guide is for Fabric, I thought I'd atleast mention it here. Fabric is more lightweight than Forge, and since the loader isn't dependant on Minecraft version, you'll usually get a fabric release within the first few days of a Minecraft update
* [Forge (Mod Loader)](https://files.minecraftforge.net/net/minecraftforge/forge/) -- Forge(Commonly mixed up with CurseForge) is a modloader for Minecraft. It has existed for years and has been the MAIN modloader for a decade.
* [Neoforge (Mod Loader)](https://neoforged.net) -- Neoforge is a fork of forge that is better than forge in performance. With [Sinytra](https://modrinth.com/mod/connector), you can add support for a good portion of fabric-only mods. Note that Sinytra needs a bit of messing around with to work properly
* [MCArchive (Mod archival website)](https://mcarchive.net) -- A archive of older Minecraft mods, it's open source and maintained by the community. It gives links to the original download if it's still available, links to the author and doesn't have any ads
* [Stop Mod Reposts (Browser extension)](https://stopmodreposts.org) -- While not currently being maintained, this is an extension that warns you if you're going on a page known for reposting mods. It also contains ratings for how malicious some pages are 

# Why I recommend [Prism Launcher](https://prismlauncher.org) over other launchers
* [Prism Launcher](https://prismlauncher.org) is programmed in C++ and uses a very simple but powerful UI. This means less of your computers resources go towards rendering an entire webpage
* [Prism Launcher](https://prismlauncher.org) isn't locked to a specific mod distribution platform, you can use modpacks from several sources, and install mods directly from both Modrinth and if you need, Curseforge without needing to open a webpage
* [Prism Launcher](https://prismlauncher.org) has a function over form UI. It's not pretty and might be a bit confusing at first but once you get used to it, it's really fast and really nice to use
* [Prism Launcher](https://prismlauncher.org) can be used portably
* [Prism Launcher](https://prismlauncher.org) is cross platform, You can use it on arm systems or even use it's official flatpak package to run it on a Steam Deck
* [Prism Launcher](https://prismlauncher.org) supports Fabric, Forge, Neoforge, Quilt and Liteloader out of the box but if you know what you're doing, you can use your own custom mod loaders or minecraft.jar mods if desired
* [Prism Launcher](https://prismlauncher.org) is open sourced, meaning you can contribute directly to Prism Launcher if you desire or just browse it's source code. Modrinth is also open source but the vanilla launcher and Curseforge are not
* [Prism Launcher](https://prismlauncher.org) uses seperated instances with their own .minecraft and stuff. This provides advantages like having multiple versions of the game with mods without needing to deal with worrying about corruption or moving files and stuff compared to the vanilla launcher  

# Required(Fabric)
### [Fabric Loader Only](https://fabricmc.net/use/installer/)
Practically required mods for Fabric. 
 * [Fabric API](https://modrinth.com/mod/fabric-api) -- Fabric API, Required for most Fabric mods
 * [Fabric Language Kotlin](https://modrinth.com/mod/fabric-language-kotlin) -- Allows mods to use Kotlin with Fabric, several mods need this
 * [Mod Menu](https://modrinth.com/mod/modmenu) -- Adds an ingame modlist allowing you to edit configs and such
 * [Cloth Config API](https://modrinth.com/mod/cloth-config) -- Some mods use this for providing their config
 * [Yet Another Config Library(YACL)](https://modrinth.com/mod/yacl) -- Some mods use this for providing their config

# Base Performance Mods
Mods that help with performance. I'd recommend having all of these. This is the only section I'll provide forge Alternatives for since I don't really use forge. Sorry
 * #### All loaders(Fabric, Neoforge and Forge)
   * [Modern Fix](https://modrinth.com/mod/modernfix) -- Applies a bunch of client-sided fixes and helps with performance
   * [Memory Leak Fix](https://modrinth.com/mod/memoryleakfix) -- Fixes some memory leaks
   * [More Culling](https://modrinth.com/mod/moreculling) -- Adds more options for culling(Prevents things you can't see from taking up rendering time)
   * [Embeddium](https://modrinth.com/mod/embeddium) -- A fork of Sodium, it has both Forge and Fabric builds. It *could* be faster than sodium but I haven't really tested
   * [Embeddium Extra](https://modrinth.com/mod/embeddium) -- Sodium Extra but for Embeddium
 * #### Fabric
   * [Sodium](https://modrinth.com/mod/sodium) -- Optimises Clientside stuff(i.e more fps)
   * [Sodium Extra](https://modrinth.com/mod/sodium-extra) -- Extra options for sodium
   * [Reeses Sodium Options](https://modrinth.com/mod/reeses-sodium-options)/ -- Allows you to access said options, Only required for Sodium as Embeddium integrates this mod already
   * [Lithium](https://modrinth.com/mod/lithium) -- Optimises Client/Serverside stuff
   * [Indium](https://modrinth.com/mod/indium) -- A mod for sodium that mostly just adds better compatibility, Built into Embeddium
   * [Iris Shaders](https://modrinth.com/mod/iris) -- Shader support. If you're not planning on using shaders, you can skip this
 * #### Neoforge/Forge
   * [Embeddium](https://modrinth.com/mod/embeddium) -- A fork of Sodium. It *could* be faster than sodium but I haven't really tested. Listed again for parity ig
   * [Embeddium Extra](https://modrinth.com/mod/embeddium) -- Sodium Extra but for Embeddium
   * [Oculus](https://modrinth.com/mod/oculus) -- Iris but on Forge
   * ~~[Textrues Embeddium Options](https://modrinth.com/mod/textrues-embeddium-options) -- Allows you to access the extra options. Forge alternative to Reeses Sodium Options~~ - This is now included in embeddium



# Extra Performance Stuff
Mods that can help with performance but might have incompatibilities or whatever. These are mostly optional 
 * [Performance mods from someaddon on CurseForge](https://www.curseforge.com/members/someaddon/projects) -- As much as I'm trying to avoid linking to mods on CurseForge, someaddon has some amazing optimization mods for both client and server. I personally use these mods on my own modpacks as often as I can, they usually don't break anything.
 * [Immediately Fast](https://modrinth.com/mod/immediatelyfast) -- This mod can help with FPS, however it has incompatibilities with some mods since it does a lot for rendering. Although I haven't seen any mods have incompatibilities with this mod
 * [Ferrite Core](https://modrinth.com/mod/ferrite-core) -- Memory Usage optimisations. I've seen a few mods that don't work with this
 * [Krypton](https://modrinth.com/mod/krypton) -- Optimises networking stuff
 * [Dash Loader](https://modrinth.com/mod/dashloader) -- Makes the game load really really fast. However some mods are incompatible with this
 * [Noisium](https://modrinth.com/mod/noisium) -- Optimises world generation
 * [Distant Horizons](https://modrinth.com/mod/distanthorizons) -- Allows you to see far past your render distance without causing lag. However this mod only works with some setups and is very very buggy
 * [Bobby](https://modrinth.com/mod/bobby) -- Allows for render distances greater than the server's view-distance setting by caching chunks and using the cache. In some ways, this could theroetically help with network issues
 * [Raknetify](https://modrinth.com/plugin/raknetify) -- A mod that allows you to join servers with the mod via raknet. This can supposedly help with network instability but I've never tried it
 * [Not Enough Recipe Book(Required on server and Client and EMI+JEI recommended)](https://modrinth.com/mod/nerb) -- A mod that removes the recipe book from the game, the game stores ALL of your recipes in your NBT which can cause network lag and Minecraft isn't exactly optimised at handling recipes either. Note that if you still want recipes you'll need EMI or JEI
 * [EMI, Only helpful if using with the above](https://modrinth.com/mod/emi) -- EMI is basically Not Enough Items ported to modern versions of Minecraft. For better mod compatibility, you'll probably also want [Just Enough Items](https://modrinth.com/mod/jei), While they technically do the same thing, EMI has more customization options and (in my experience) is lighter than JEI. EMI will basically use JEI to support more mods without actually using JEI if that makes sense


# OptiFine features
OptiFine features ported over to Sodium and Iris
 * [Puzzle](https://modrinth.com/mod/puzzle) -- A mod that adds some OptiFine features, an API and some other things
 * [Animatica](https://modrinth.com/mod/animatica) -- Support for OptiFine/MCPatcher's animated textures
 * [Entity Texture Features (ETF)](https://modrinth.com/mod/entity-model-features) -- Support for random textures on entities, and some other things
 * [Entity Model Features (EMF)](https://modrinth.com/mod/entity-model-features) -- Support for OptiFine Custom Entity models(Requires ETF)
 * [CIT Resewn](https://modrinth.com/mod/cit-resewn) -- MCPatcher/OptiFine CIT features(Basically the custom textures depending on item nbt instead of just id)
 * [Zoomify](https://modrinth.com/mod/zoomify) -- A mod that allows you to zoom (Requires YACL)
 * [Lamb Dynamic Lights](https://modrinth.com/mod/lambdynamiclights) -- Dynamic Lighting
 * [Continuity (Fabric only)](https://modrinth.com/mod/Continuity) -- Connected Textures compatible with OptiFine's format
 * [Fusion](https://modrinth.com/mod/Fusion) -- Connected Textures

# Random stuff
Random mods I thought I'd mention because I like using them and think they're cool.<br>
Some of these mods also provide alternatives to the `Recommendations on what to **avoid** using and why` section
 * [Figura](https://modrinth.com/mod/figura/) -- A completely client sided mod that allows you to use custom [BlockBench](https://blockbench.net/) player models that can be scripted with [Lua](https://lua.org). Avatars can be seen by other players that have the mod without the server needing the mod.(Note: I do have a bias for Figura since I've personally made a few commits to the repo and have a fork of it. However I hope that doesn't detract from me recommending it)
 * [Customizable Player Models](https://modrinth.com/plugin/custom-player-models) -- A client+server sided mod that allows you to use custom models made using it's built-in model editor. It can be easier to use than Figura but Figura provides more customizablity with it's lua support. CPM and Figura can both be installed at the same time but you should only equip models from one of them 
 * [No Chat Reports](https://modrinth.com/mod/no-chat-reports) -- "This mod strips cryptographic signatures that since 1.19 are attached to every message sent in the chat. Removing them makes it impossible to track and associate your chat messages with your Minecraft and, by extension, Microsoft account." TL;DR: Removes the thing required to allow your chat messages to be reported to Microsoft/Mojang. ***Note, you might need to disable this on some servers***
 * [E4MC](https://modrinth.com/mod/e4mc) -- Replacement for Essential's multiplayer. It's serversided and far more lightweight
 * [Custom Lan](https://modrinth.com/mod/custom-lan) -- A mod that adds a bunch of options for hosting a world. It supports tunnelling (Note I haven't tested this mod myself)
 * [LAN World Plug-n-Play](https://modrinth.com/mod/mcwifipnp) -- A mod that automatically port-forwards your lan world using UPnP (Note I haven't tested this mod myself)
 * [ViaFabric](https://modrinth.com/mod/viafabric)/[ViaFabricPlus](https://modrinth.com/mod/viafabricplus) -- A mod that allows you to join servers of different versions. Note that this does a lot of packet manipulation and can be seen as cheating or trigger anticheats on some servers like Hypixel. ViaFabric has less support than ViaFabricPlus but is more stable and updates faster in my experience


# Some helpful resources
* [OptiFine Alternatives by LambdAurora](https://github.com/LambdAurora/OptiFine_alternatives)
* [Minecraft Community Support](https://discord.gg/58Sxm23)
