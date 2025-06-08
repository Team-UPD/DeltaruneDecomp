scr_bullet_init();
timer = 0;
destroyonhit = false;
image_speed = 0;
impact = 0;
direction = point_direction(obj_growtangle.x, obj_growtangle.y, x, y);
bufferstate = 0;
loading = 45;
parentwindow = -4;
image_index = 0;
flip = (x < obj_growtangle.x) ? -1 : 1;
birthday = 0;
lastx = x;
lasty = y;
lastangle = image_angle;
hatoffdir = point_direction(0, 0, -20, -18);
hatoffsetx = -20;
hatoffsety = -18;
animtimer = 0;
for (i = 0; i < 36; i++)
{
	d = instance_create(x, y, obj_confetti);
	d.direction = (i * 10) + random(10);
	d.depth = depth + choose(-1, 1);
}
