scr_depth();
direction = 270;
image_xscale = 2;
image_yscale = 2;
invulnerable = 0;
fall = 0;
gulped = 0;
nointeract = false;
snd_play(snd_mouse);
timer = 0;
emergetimer = 0;
drawx = x;
drawy = y;
con = 0;
lifespan = 100;
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
if (place_meeting(x, y + 40, obj_holemouse_block_counterclockwise) || place_meeting(x, y + 40, obj_holemouse_invis_counterclockwise) || place_meeting(x, y + 40, obj_holemouse_invis_clockwise) || place_meeting(x, y + 40, obj_holemouse_block_clockwise))
	blockedstart = true;
else
	blockedstart = false;
currentdir = direction;
initas = 0;
bounceOffDoor = 1;
bounceTargetX = 320;
bounceTargetY = 240;
bounceTargetDir = 90;
customSprite = spr_holemouse;
fakeY = 0;
fakeYSpeed = 0;
bouncecon = 0;
falltimer = 0;
bouncethisframe = 0;
