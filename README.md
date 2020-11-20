# Minecraft Java Resource Pack Creation Guide

### Introduction 
This guide will walk you through the steps of making your very own resource pack for Minecraft. One thing different about this guide is, it’s also a resource pack! Everything covered in this guide will also be in the resource pack, so you can download it and get hands-on with everything we cover. To download the latest version, go to the releases page.

This guide has been hosted on GitHub for a reason; we want you to help make this guide the best it can be. If you see something that is wrong, or think you can expand a section to make it better, we encourage you to Fork this repository and do a Pull Request with your additions (don't forget to add yourself to the credits).

## Table of contents:
### [Introduction](#introduction)
### [FAQ](#faq)
  - What is a resource pack?
  - Are resource packs the same as texture packs?
  - Are they hard to make?
  - Do I have to change every texture?
  - What programs do I need to make a texture pack?
  - So what is a “plain” text editor?  
### Useful Links
  - Files
  - Esential software
    - Archival Tool
    - Image Editor
    - Text Editor
  - Useful Software
  - Texture/Resource Pack Converters
  - Other Software
  - Information and Resources
   - Minecraft Wiki
   - Other Guides
   - Places to find help and submit your pack
- Useful Keybinds
- General Advice
- Resource Pack Structure
- Making a New Pack
- Resource Pack Folder
- Extracting the .jar File
- Blocks and Items
- Making Your First Texture
- Seeing Your Texture In-Game
- Texture Animation
- Resolution
- Changing Models: (Shapes)
- Blockstates: (More Fanciness)
- Different Looks for Different Cases
- Variant Textures
- Weighted variants
- Plant Color
- GUIs
- Making a tittle screen panorama
- Entities
- Other Visuals
- Debugging
- Common Problems
- Pack Missing from Menu
- Pack Listed as Out of Date
- Changes are Missing
- Purple and Black Texture
- The Output Log
- Activating the Output Log
- Interpreting the Output Log
- File Not Found Exception
- Malformed Json Exception
- Optifine (Fanciness Mod)
- Language Files
- Changing Text
- Changing Text Color & Format
- Things to Consider
- Splash Texts
- End Poem & Credits
- Fonts
- Sounds
- Credits

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

**Files**  
[Resource Pack Template]  
This is what we will be using to build our resource pack.

**Essential Software**  
You will need one from each of these catogories to make a resource pack.

**Archival Tool**  
Needed to unzip the Minecraft jar file and to zip your pack when it is done.  

[7-Zip]  
Archive tool we will use to extract textures from the Minecraft JAR file and zip our texture pack when they’re done.

**Image Editor**  
Required to edit the textures in your pack.

[GNU image Manipulation Program] (GIMP)  
A free image editing program we will use to make and edit our textures.

[Paint.NET]  
An alternative program you can use to edit textures, and has plug-in support for extra image editing.

**Text Editor**  
Used to edit the text files in your pack.

[Brackets]  
A free code editor I recommend for editing text files.

[Notepad++]  
Another free light-weight text editor alternative 

**Useful software**  
Depending on what you want to include in your pack, a program from the relevant category may be needed, or at least save a lot of frustration.

[Blockbench]    
A free program to create 3d models for Minecraft.

[Mr. Crayfish’s Model Creator]  
An alternative program for creating Minecraft models.

**Texture/Resource Pack Converters**  
Tools to convert texture & resource packs to newer versions.

[Dinnerbone's Texture Pack Unstitcher Program (Direct Download)]    
A tool to convert texture packs to Minecraft version 1.5.

[Flying-Sheep's Texture Pack Unstitcher Rewrite]   
A rewrite of Dinnerbone’s tool made by a community member.

[TextureEnder made by Mojang (Direct Download)]  
A tool made by Mojang to convert Texture Packs from 1.5 to resource packs. (also on GitHub)

[Resource Pack Converter]  
A tool to convert resource packs to newer versions.

[Java to Bedrock Resource Pack Converter]  
A tool to convert your java resource pack to bedrock.

**Other Software**  
Not always needed, but useful to have sometimes.

[Resource Pack Optimizer]  
An optimization tool that compresses the image files to save space.

[Quiver]  
A resource pack creator and manager for Minecraft.

[WinMerge]  
A useful tool to compare your pack to default Minecraft and see what you're missing and what files are the same as default to remove them.

[Minecraft Sound Extractor]  
This is for extracting the sound if you want to see how to structure the sound directory in your resource pack.

**Information and Resources**  
A collection of useful info and resources.

**Minecraft Wiki**  
Use ful Minecrafr Wiki pages.

[Minecraft Wiki for Resource Packs]  
The official wiki on Minecraft resource packs. Will be updated regularly per update/snapshot, documenting changes between versions.

[Minecraft Wiki for Creating a Resource Pack]  
Will be updated regularly per update/snapshot, documenting changes between versions.

[Minecraft Wiki for Texture Packs]  
Useful information on texture packs for Minecraft versions 1.6.0 and newer.

[Minecraft Wiki for Creating a Texture Pack]  
Has useful info on making texture packs for Minecraft 1.6.0 and older.

[Minecraft Wiki for Formatting codes]  
Useful reference when editing text files such as pack.mcmeta and credits.txt.

[Minecraft Wiki for Models]  
Has a lot of useful info about blockstates and model files.

[Minecraft Wiki for Tint]  
Useful info about the grass and foliage color tinting.

**Other Guides**  
an assortment of other guides with a lot of useful information in them.

[A word about texture packs]  
A good read about myths surrounding texture/resource packs.

[Animation in Resource Packs]  
A useful guide on animated block and item textures.

[Making Alternate Textures Guide]
A useful guide for variant/alternate textures.

[The All-Inclusive Guide to Texturing]  
A helpful guide to making texture packs, mostly useful for older versions of Minecraft before 1.5.

[The All-Inclusive Guide to Texturing (Version 2)]  
An updated version that has useful information on newer versions of Minecraft.

[How To Make A Resource Pack video series by Uncle Jam]  
A good playlist of videos about making a resource pack. (Has a lot of useful info in it, just please do not copy the default Minecraft assets folder like he does. See common mistakes below.)

[Customizing Minecraft video series by How To Gurus]  
A great playlist with a lot of useful guides for making a resource pack.

**Places to find help and submit your pack**  
Good places to go if you need help or want to submit your pack to be seen by the public.

[Minecraft Resource Pack Subreddit]  
A great place to share your resource pack or ask questions if you are having trouble.

[Planet Minecraft]  
A goo place to ask for help or post your pack.

[Minecraft Forums]  
Another good place to ask for help or post your pack.



[Resource Pack Template]: https://github.com/Love-and-Tolerance/Resource-Pack-template/releases/latest
[7-Zip]: https://www.7-zip.org/
[GNU image Manipulation Program]: https://www.gimp.org/
[Paint.NET]: https://www.getpaint.net/
[Brackets]: http://brackets.io/
[Notepad++]: https://notepad-plus-plus.org/
[Blockbench]: https://blockbench.net/
[Mr. Crayfish’s Model Creator]: https://mrcrayfish.com/tools?id=mc#downloads
[Dinnerbone's Texture Pack Unstitcher Program (Direct Download)]: http://assets.minecraft.net/unstitcher/unstitcher.jar
[Flying-Sheep's Texture Pack Unstitcher Rewrite]: https://github.com/flying-sheep/unstitcher/
[TextureEnder made by Mojang (Direct Download)]: http://s3.amazonaws.com/Minecraft.Download/utilities/TextureEnder.jar
[Resource Pack Converter]: https://www.planetminecraft.com/mod/minecraft-1-12-1-13-1-14-1-15-resource-pack-converter/
[Java to Bedrock Resource Pack Converter]: https://ozelot379.github.io/ConvertJavaTextureToBedrock/
[Resource Pack Optimizer]: https://github.com/PCelestia/optimise-resourcepack  
[Quiver]: https://github.com/DeflatedPickle/Quiver
[WinMerge]: https://winmerge.org/?lang=en
[Minecraft Sound Extractor]: https://github.com/Ravbug/MCSoundsExtractorCPP
[Minecraft Wiki for Resource Packs]: https://minecraft.gamepedia.com/Resource_Pack
[Minecraft Wiki for Creating a Resource Pack]: https://minecraft.gamepedia.com/Tutorials/Creating_a_resource_pack
[Minecraft Wiki for Texture Packs]: https://minecraft.gamepedia.com/Texture_Pack
[Minecraft Wiki for Creating a Texture Pack]: https://minecraft.gamepedia.com/Tutorials/Custom_texture_packs
[Minecraft Wiki for Formatting codes]: https://minecraft.gamepedia.com/Formatting_codes
[Minecraft Wiki for Models]: https://minecraft.gamepedia.com/Model
[Minecraft Wiki for Tint]: https://minecraft.gamepedia.com/Tint
[A word about texture packs]: https://www.minecraftforum.net/forums/mapping-and-modding-java-edition/resource-packs/resource-pack-discussion/1256365-a-word-about-texturepacks
[Animation in Resource Packs]: https://www.minecraftforum.net/forums/mapping-and-modding-java-edition/resource-packs/resource-pack-discussion/1256350-animation-in-resource-packs-a-minecraft-1-6
[Making Alternate Textures Guide]: https://www.minecraftforum.net/forums/mapping-and-modding-java-edition/resource-packs/resource-pack-discussion/2209236-1-8-tutorial-alternate-textures-and-custom-models
[The All-Inclusive Guide to Texturing]: https://www.minecraftforum.net/forums/mapping-and-modding-java-edition/resource-packs/resource-pack-discussion/1256314-the-all-inclusive-guide-to-texturing
[The All-Inclusive Guide to Texturing (Version 2)]: https://www.minecraftforum.net/forums/mapping-and-modding-java-edition/resource-packs/resource-pack-discussion/1256366-the-all-inclusive-updated-guide-to-texturing
[How To Make A Resource Pack video series by Uncle Jam]: https://www.youtube.com/playlist?list=PLLl4D8G2NepWULG7fqAeBvpd1SOtP7pe8
[Customizing Minecraft video series by How To Gurus]: https://www.youtube.com/playlist?list=PLfp-NJt_DpgG2odTDbwjtXkdjdBgpSxng
[Minecraft Resource Pack Subreddit]: https://www.reddit.com/r/mcresourcepack/
[Planet Minecraft]: https://www.planetminecraft.com/texture-packs/
[Minecraft Forums]: https://www.minecraftforum.net/forums/mapping-and-modding-java-edition/resource-packs
