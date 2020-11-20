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

### Files
[Resource Pack Template]
This is what we will be using to build our resource pack.

### Essential Software
You will need one from each of these catogories to make a resource pack.

#### Archival Tool
Needed to unzip the Minecraft jar file and to zip your pack when it is done.  

[7-Zip]  
Archive tool we will use to extract textures from the Minecraft JAR file and zip our texture pack when they’re done.

#### Image Editor
Required to edit the textures in your pack.

[GNU image Manipulation Program] (GIMP)  
A free image editing program we will use to make and edit our textures.

[Paint.NET]  
An alternative program you can use to edit textures, and has plug-in support for extra image editing.

#### Text Editor
Used to edit the text files in your pack.

[Brackets]  
A free code editor I recommend for editing text files.

[Notepad++]  
Another free light-weight text editor alternative 



[Minecraft Sound Extractor](https://github.com/Ravbug/MCSoundsExtractorCPP)  
This is for extracting the sound if you want to see how to structure the sound directory in your resource pack.

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




[Resource Pack Template]: https://github.com/Love-and-Tolerance/Resource-Pack-template/releases/latest
[7-Zip]: https://www.7-zip.org/
[GNU image Manipulation Program]: https://www.gimp.org/
[Paint.NET]: https://www.getpaint.net/
[Brackets]: http://brackets.io/
[Notepad++]: https://notepad-plus-plus.org/
