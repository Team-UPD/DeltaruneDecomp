papetimer = 0;
papeno = 0;
papei = 0;
papefall = 0;
image_speed = 0;
papeshake = 0;
scr_depth();
global.facing = 1;
if (global.plot < 6)
{
	con = 0.5;
	alarm[4] = 30;
	global.interact = 1;
}
else
{
	instance_destroy();
}
dex = 0;
grav = 1;
bgdraw = 0;
bgamt = 0;
