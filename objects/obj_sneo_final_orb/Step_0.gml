if (timer != 0)
{
	timer++;
}
else if (timer == 0)
{
	if (speed < 3)
		speed += 0.25;
}
if (timer > 60)
{
	d = instance_create(camerax(), cameray(), obj_fadein);
	with (obj_fadeout)
		instance_destroy();
	d.image_blend = c_white;
	d.fadespeed = -0.01;
	if (playerhit)
		scr_damage_all();
	global.turntimer = 1;
	instance_destroy();
}
