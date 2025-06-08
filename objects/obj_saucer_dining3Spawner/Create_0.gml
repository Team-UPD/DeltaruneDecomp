scr_depth();
image_xscale = 2;
image_yscale = 2;
image_speed = 0;
reached = false;
startX = x;
startY = y;
image_alpha = 0.01;
y -= 300;
if (room == room_dw_mansion_dininghall)
{
	y -= 200;
	dontalpha = 1;
}
fallspeed = 16;
timer = 0;
dontalpha = 0;
if (dontalpha != 0)
	image_alpha = 1;
