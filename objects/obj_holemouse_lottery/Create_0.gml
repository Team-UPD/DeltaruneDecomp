scr_depth();
direction = 270;
image_xscale = 2;
image_yscale = 2;
timer = 0;
con = 0;
breakcount = 0;
win = 0;
deathtimer = 0;
target = 0;
hastarget = 0;
jumppuzzle = 0;
if (instance_exists(obj_masterPlatformController))
{
	jumppuzzle = 1;
	hastarget = 1;
	target = obj_masterPlatformController.plat[obj_masterPlatformController.currentPlatform - 1];
}
