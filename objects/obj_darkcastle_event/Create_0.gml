con = 0;
rflip = 0;
if (global.plot >= 20)
{
	instance_destroy();
}
else
{
	snd_free_all();
	con = 1;
	with (obj_mainchara)
		visible = 0;
	k = scr_dark_marker(460, obj_mainchara.y + 60, spr_krisu_dark);
	s = scr_dark_marker(520, obj_mainchara.y + 100, spr_susieu_dark);
	with (k)
	{
		vspeed = -2;
		image_speed = 0.1;
		depth = 6000;
	}
	with (s)
	{
		vspeed = -3;
		image_speed = 0.1;
		depth = 6000;
	}
	global.interact = 1;
	alarm[4] = 60;
}
