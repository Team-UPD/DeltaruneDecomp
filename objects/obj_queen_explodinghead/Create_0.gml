timer = 24;
image_yscale = 1;
image_xscale = 1;
scale = 1;
laugh = 0;
buffer = 0;
spawnbuffer = 0;
ultimate = 0;
image_speed = 0;
buffering = false;
laughpause = false;
laughsound = 0;
if (irandom(500) == 1)
	banana = irandom(14);
else
	banana = 500;
first = 0;
type = 0;
if (obj_queen_bulletcontroller.type == 6.1)
	type = 1;
if (obj_queen_bulletcontroller.init == 2)
{
	first = 1;
	obj_queen_bulletcontroller.init = 3;
}
