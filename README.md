# Minecraft Java Resource Pack Creation Guide

### Introduction 
This guide will walk you through the steps of making your very own resource pack for Minecraft. One thing different about this guide is, it’s also a resource pack! Everything covered in this guide will also be in the resource pack, so you can download it and get hands-on with everything we cover. To download the latest version, go to the releases page.

This guide has been hosted on GitHub for a reason; we want you to help make this guide the best it can be. If you see something that is wrong, or think you can expand a section to make it better, we encourage you to Fork this repository and do a Pull Request with your additions (don't forget to add yourself to the credits).

## Table of contents:


## F.A.Q.
Let’s start off by answering some questions you may have about resource packs.

**What is a resource pack?**  
A resource pack is a folder or .zip that changes the “assets” loaded into Minecraft. It is a way to customize or completely change how the game looks and sounds.

**Are resource packs the same as texture packs?**  
These terms are sometimes used that way, but “texture packs” were for Minecraft 1.5.2 and before, and only changed the images the game used for things like blocks, items and GUIs. Resource packs replaced this functionality, and can also manage models, sounds, and much more.

**Are they hard to make?**  
No, they are rather easy to do once you have an understanding of how Minecraft structures its assets folder. This guide will help you with that.

**Do I have to change every texture?**  
No, the great thing about Minecraft is you only need to texture the stuff you want to change. Minecraft loads your pack(s) over top of the default textures, so anything you don't change will remain the default.

**What programs do I need to make a resource pack?**  
For most resource packs, all you need is an archive tool, a plain text editor, and an image editor.

**So what is a “plain” text editor?**  
A plain text editor is a program that edits text files, but does not have fancy features like fonts, bold or colored text, and text size. Notepad and Notepad++ are examples of these. “Rich” text editors will not work, and using them will break any minecraft asset you edit with them, probably permanently. (Rich text editors include programs like Microsoft Word, Google Docs, etc.)


## useful links
Here are some links which will be useful or needed to make a resource pack.

[Resource Pack Template](https://github.com/Love-and-Tolerance/Resource-Pack-template/releases/latest)  
This is what we will be using to build our resource pack.

[Minecraft Sound Extractor](https://github.com/Ravbug/MCSoundsExtractorCPP)  
This is for extracting the sound if you want to see how to structure the sound directory in your resource pack.

[7-Zip](https://www.7-zip.org/)  
Archive tool we will use to extract textures from the Minecraft JAR file and zip our texture pack when they’re done.

[GNU image Manipulation Program](https://www.gimp.org/)  
A free image editing program we will use to make and edit our textures.

[Paint.NET](https://www.getpaint.net/)  
An alternative program you can use to edit textures, and has plug-in support for extra image editing.

[Brackets](http://brackets.io/)  
A free code editor I recommend for editing text files.

[Notepad++](https://notepad-plus-plus.org/)  
Another free light-weight text editor alternative 

[Blockbench](https://blockbench.net/)  
A free program to create 3d models for Minecraft.

[Dinnerbone's Texture Pack Unstitcher Program (Direct Download)](http://assets.minecraft.net/unstitcher/unstitcher.jar)  
A tool to convert texture packs to Minecraft version 1.5.

[Flying-Sheep's Texture Pack Unstitcher Rewrite](https://github.com/flying-sheep/unstitcher/)  
A rewrite of Dinnerbone’s tool made by a community member.

[TextureEnder made by Mojang (Direct Download)](http://s3.amazonaws.com/Minecraft.Download/utilities/TextureEnder.jar)  
A tool made by Mojang to convert Texture Packs from 1.5 to resource packs. (also on GitHub)

[Resource Pack Optimizer](https://github.com/PCelestia/optimise-resourcepack)  
An optimization tool that compresses the image files to save space.

[Quiver](https://github.com/DeflatedPickle/Quiver)  
A resource pack creator and manager for Minecraft.

[Resource Pack Converter](https://www.planetminecraft.com/mod/minecraft-1-12-1-13-1-14-1-15-resource-pack-converter/)  
A tool to convert resource packs to newer versions.

[Java to Bedrock Resource Pack Converter](https://ozelot379.github.io/ConvertJavaTextureToBedrock/)  
A tool to convert your java resource pack to bedrock.

[Minecraft Wiki for Resource Packs](https://minecraft.gamepedia.com/Resource_Pack)  
The official wiki on Minecraft resource packs. Will be updated regularly per update/snapshot, documenting changes between versions.

[Minecraft Wiki for Creating a Resource Pack](https://minecraft.gamepedia.com/Tutorials/Creating_a_resource_pack)  
Will be updated regularly per update/snapshot, documenting changes between versions.

[Minecraft Wiki for Texture Packs](https://minecraft.gamepedia.com/Texture_Pack)  
Useful information on texture packs for Minecraft versions 1.6.0 and newer.

[Minecraft Wiki for Creating a Texture Pack](https://minecraft.gamepedia.com/Tutorials/Custom_texture_packs)  
Has useful info on making texture packs for Minecraft 1.6.0 and older.

[Minecraft Wiki for Formatting codes](https://minecraft.gamepedia.com/Formatting_codes)  
Useful reference when editing text files such as pack.mcmeta and credits.txt.

[Minecraft Wiki for Models](https://minecraft.gamepedia.com/Model)  
Has a lot of useful info about blockstates and model files.

[Minecraft Resource Pack Subreddit](https://www.reddit.com/r/mcresourcepack/)  
A great place to share your resource pack or ask questions if you are having trouble.

[A word about texture packs](https://www.minecraftforum.net/forums/mapping-and-modding-java-edition/resource-packs/resource-pack-discussion/1256365-a-word-about-texturepacks)  
A good read about myths surrounding texture/resource packs.

[The All-Inclusive Guide to Texturing](https://www.minecraftforum.net/forums/mapping-and-modding-java-edition/resource-packs/resource-pack-discussion/1256314-the-all-inclusive-guide-to-texturing)  
A helpful guide to making texture packs, mostly useful for older versions of Minecraft before 1.5.

[The All-Inclusive Guide to Texturing (Version 2)](https://www.minecraftforum.net/forums/mapping-and-modding-java-edition/resource-packs/resource-pack-discussion/1256366-the-all-inclusive-updated-guide-to-texturing)  
An updated version that has useful information on newer versions of Minecraft.

[How To Make A Resource Pack video series by Uncle Jam](https://www.youtube.com/playlist?list=PLLl4D8G2NepWULG7fqAeBvpd1SOtP7pe8)  
A good playlist of videos about making a resource pack. (Has a lot of useful info in it, just please do not copy the default Minecraft assets folder like he does. See common mistakes below.)


Here are some useful key binds I will mention in this guide

Minecraft:  
Reload resource pack: F3 + T

GIMP:  
Pencil: N  
Undo: Ctrl + Z  
Redo: Ctrl + Y  
Zoom: Ctrl + mouse wheel in and out.  
Color picker: Ctrl + primary mouse click (only works when pencil/paintbrush is the selected tool)  
Pan: Hold the spacebar and drag the mouse.

Paint.NET:  
Pencil: P  
Line Tool: O  
Pan: Hold the spacebar and left click and drag (alternatively press H to select the pan tool)  
Color picker: K  
Eraser: E  
Paint Bucket: F  
Shape tool: O, O (press O twice)


Before we get started I'm going to give some general advice when creating your resource pack:

1. It is best to stick to one resolution size for your pack, changing resolution on a texture by texture basis can be jarring to players as well as potentially stress the texture system.

2. If you want to make sure builds using default textures look good with your pack, or vice versa, use the same colors as the default texture.

3. While you don't have to follow any of this advice, I recommend following them at least while you are learning how to make a resource pack.


Here are some common mistakes to avoid while making your texture pack.

Do not just copy Minecraft’s assets folder and make your texture pack on top of it, this bloats the size of your resource pack and makes it hard to find and fix problems in the future. Minecraft loads your pack overtop of the default assets so this is not needed and is not recommended. (seriously, you will thank me later)
Make sure your textures have the exact same name as default Minecraft.
Make sure you place your textures in the right folders.


Before we start making a resource pack I’m going to go over how a resource pack is structured.

Pictured below is the resource pack template I provided the link to earlier:

![Resource Pack Template](https://github.com/Love-and-Tolerance/Resource-Pack-Guide/raw/master/assets/guide/textures/resourcepack-template.png)

This is the main folder of your resource pack, let's go over the files inside it.

LICENSE - This file is not needed but is included in all the packs I manage, it lets anyone know this resource pack has this license and in what ways they can use it. You can edit it to be for your pack or delete it entirely.

pack.mcmeta - This file is needed for Minecraft to recognize your texture pack, this tells Minecraft what pack format your pack is (aka what version is it compatible with), what the description of your pack in-game is, and it also tells Minecraft if you have any custom language files (which we’ll get into later).

pack.png - This file is the icon for your pack in the resource pack menu in Minecraft.

README.md - This file is not needed but is included in all my packs to give information about the pack and credit everyone who works on it. This file can be deleted if not desired.


Now let's go one folder deeper into the pack, pictured below is the assets folder:


The assets folder holds all the textures for Minecraft. If you want to support Minecraft Realms or any mods then you add the mod folder to the assets folder. Below is an example::


The realms folder holds textures for Minecraft Realms, and the minelittlepony folder is for textures for that mod.

For now, we will only be covering textures for default Minecraft, let's go one deeper into the minecraft folder:


That's right, it's empty. This is where you're going to need to make folders for the areas of minecraft you will want to change.

Let's figure that out by looking at the default minecraft structure:


Your resource pack can contain any of these folders, let's go over them:

Blockstates - These point Minecraft to the models used in-game for every block.

Font - Contains information about the size and location of each letter in the font. Most font changes happen at the texture level, you probably won't need this folder.

Lang - Contains the language files, this is where you put your custom language or edit the default one.

Models - These are the in-game models for every item and block, they tell Minecraft what shape it is and what texture to use for each side.

Particles - These point Minecraft to the texture file for each particle effect.

Shaders - The shaders for the old in-game ‘super secret settings’ button that have since been removed. Not modified by most resource packs.

Sounds - (not pictured above) The sounds go into this folder but do not appear when you extract the Minecraft jar file as they are stored separately.

Texts - contains the text files for the credits, the end poem, and the title screen splashes.

Textures - this is where all the textures are stored, this is where you will do most of your work.

gpu_warnlist.json - This is a default vanilla file you don't need in your texture pack.


Two of these folders have sub folders, we will now go over those.

Models:


These subfolders are pretty self-explanatory:

Blocks - block models go here

Items - item models go here

Textures:


Let's go over the folders in the above image.

Block - All the block textures are here. (This is for versions 1.13+; 1.12.2 and under use “blocks”)

Colormap - The grass and foliage colormaps are here.

Effect - Contains the dither texture, which is used in the notch shading effect that has been removed from default Minecraft.

Entity - Contains all the mob and NPC, and entity textures, like signs, boats, etc.

Environment - Contains the sun, moon, rain, snow, clouds, and end sky textures.

Font - Contains the font textures.

GUI - Contains all the UI textures, from the menu, to the hot bar, containers and more.

Item - Contains all the item textures. (This is for versions 1.13+; 1.12.2 and under use “items”)

Map - Contains the map icons and background textures.

Misc - Contains misc textures, from enchantment glint to unknown server & pack.

Mob effect - Contains all the status effect textures, like strength & speed.

Models - Contains the textures for the armor in the game.

Painting - Contains the painting textures.

Particle - contains all the particles, like explosions, anger, bubble, etc.


Now that you have a basic understanding of how a texture pack is structured, let's start making one. You're going to want to find your resource pack folder, it can be found at:

%APPDATA%\.minecraft\resourcepacks on Windows
~/Library/Application Support/minecraft/resourcepacks on macOS
~/.minecraft/resourcepacks on Linux

Or you can get to it by clicking the open resource pack folder in Minecraft:


Once this folder is open, you are going to want to extract the template and copy that folder here:


Once it is copied over you can rename the folder to what you want your resource pack to be named, I recommend you use dashes (-) for spaces, but you don't have to.

Right-click the template folder and click “Open in new window”. Minimize the old window as we will come back to it when we are done editing the template.

Inside the template pack looks like this:


Right-click the LICENSE file and click open with Brackets. (or “Edit with Notepad++”)

Read the license and if you plan on keeping it change the Copyright at the top in this red box to your resource packs name:


If you are going to use it, save after editing and close Brackets, if you don't want to use the License, delete the file.

Now right-click the pack.mcmeta file and click Open with Brackets.


The pack format tells Minecraft what versions this pack will work with:
1 - 1.6.1 to 1.8.9
2 - 1.9 to 1.10.2
3 - 1.11 to 1.12.2
4 - 1.13 to 1.14.4
5 - 1.15 to 1.16.1
6 - 1.16.2 to 1.16.4
7 - 1.17

Change this to the version you will be making the pack for.

The description is what appears in the game on the resource pack selection screen, it can be customized with different colors and such, see the link above about formatting codes for how this works.

Once you've made your changes save and close Brackets.

The last text file in this folder is README.md, If you plan on keeping it, open it in Brackets and edit it to be what you want. I like to have information about the pack and any relevant links for that specific pack and a credits listing everyone who has worked on it. Here is an example of how mine looks, here is the raw code. Here is a guide to Markdown. Having a README file is especially useful if you have your resource pack on GitHub as it is what people see when they look at your repository.

Once you are done with that go into the assets folder then into the minecraft folder. Right-click and hover over new then select folder, mane this folder “textures” like this:


Next you are going to go into the textures folder and make a new folder in it called “block” like this:


After that go into the block folder. Now we are going to minus this window down and go extract the Minecraft jar file.

Open up the window you minimized earlier, in the resource pack folder click the up arrow to get to the .minecraft directory:


Once inside your .minecraft folder you will want to go into the versions' folder:


Once inside you will see a folder for each Minecraft version you have installed, you will want to go into the folder for the version you are making the resource pack for. We will be using 1.16.4 for this guide:


Once inside you are going to see the Minecraft jar file, this is where all the default assets are for Minecraft:


You are going to want to extract it, if using 7-Zip, right-click the jar file and hover over the 7-Zip submenu and click “Extract to 1.16.4\”

Wait a few seconds for it to finish, then go into the folder it made:


Most of these files are pointless to you, the only thing we care about is the assets folder at the top, go into it:


Starting to look familiar? Go into the minecraft folder:


Now go into the textures' folder:


Next go into the block folder:


There are a lot of files in here, these are all the default block textures. For now, we are going to search for one block at a time, I’m going to be using stone for this example but you can use any block you want.

Search for the block you want to make a texture for:


Right-click the image and click copy, move back to your other window and past it:


Now right click that copied image and hover over ‘Open with’ and click GIMP, it will take a few seconds to open up, you should be met with a screen like this:

That texture is tiny, zoom in by holding down Ctrl and scrolling the mouse wheel in:


Now that's better. Hit the N key to switch the selected tool to the Pencil. On the left side of the screen you will see a menu of tool options, you will want to set size to 1:


Now it's time to make your texture, if you're using the colors from the texture hold down Ctrl and click the color in the image you want to use, this will make it the active color.
