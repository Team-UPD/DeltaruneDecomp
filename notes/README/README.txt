Thank you for using my decompiler script! I worked hard on it, so please do give credit if you end up releasing anything with this.
Please do not use this with ill intent.

### IMPORTANT INFORMATION ###
Assets most likely didnt export 100% accurately, take time to go look at how things are, make sure theyre all correct.
When GameMaker compiles, it turns existing assets (Objects, Sprites, Scripts, etc.) into their respective ID's,
if you suspect that an ID is being used instead of an asset, use another script made by me!
https://github.com/crystallizedsparkle/UndertaleModToolUtils/blob/main/ConstantFetcher.csx
or just use UTMT's GUI if you're like that.

### SOME MORE THINGS TO NOTE ###

Before doing anything, I would heavily reccommend using the 'File > Save As' feature, it fixes the formatting of all of the .yy files.

There should be another folder called 'GeneratedTileSprites'. Those sprites are from each tileset and should be correctly integrated.


Enums are signified by a bitwise operator. e.g: ({value} << 0)

some GML files in Extensions might not be decompiled where they're supposed to be,
There might be an extra extension inside of the 'DecompilerGenerated' folder,
it will contain the functions that didnt find their way into their respective extension,
once you put all of the definitions where they need to go, feel free to delete it.

room instances in code are set as numbers (newer underanalyzer versions prefix it with 'inst_'), you need to fix them.

The icon of the runner still needs to be manually extracted, you can either open it as a zip archive or use resourcehacker:
https://www.angusj.com/resourcehacker/

If the project has sequences, make sure to check them, I wasnt able to toggle visibility and set color tracks on them, you may need to tweak them a bit.
