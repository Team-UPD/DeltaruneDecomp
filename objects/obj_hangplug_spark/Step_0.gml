timer += 1;
if (timer <= 15)
{
	flashtimer += 1;
	image_alpha = abs(cos(flashtimer / 2));
}
if (timer == 15)
{
	image_alpha = 1;
	vspeed = 0.1;
	if (!snd_is_playing(snd_ultraswing))
	{
		spawn = snd_play_pitch(snd_ultraswing, 2);
		snd_volume(spawn, 0.6, 0);
	}
	con = 1;
}
if (con == 1)
{
	if (room == room_dw_mansion_east_4f_c)
	{
		vspeed = clamp(vspeed, 0, 18);
		vspeed *= 1.6;
	}
	else
	{
		vspeed = clamp(vspeed, 0, 14);
		vspeed *= 1.5;
	}
	if (y >= (basey + fallAmount))
	{
		y = basey + fallAmount;
		con = 2;
	}
}
if (con == 2)
{
	left = instance_create(x, y - (sprite_height / 2), obj_hangplug_sparkwave);
	with (left)
		dir = "left";
	right = instance_create(x, y - (sprite_height / 2), obj_hangplug_sparkwave);
	with (right)
		dir = "right";
	drop = snd_play_pitch(snd_battleenter, 1.5);
	snd_volume(drop, 0.3, 0);
	instance_destroy();
}
scr_depth_alt();
