timer += 1;
if (timer >= 30)
{
	active = 0;
	image_alpha -= 0.1;
	if (image_alpha <= 0)
		instance_destroy();
	hspeed += lengthdir_x(0.2, bdir);
	vspeed += lengthdir_y(0.2, bdir);
}
