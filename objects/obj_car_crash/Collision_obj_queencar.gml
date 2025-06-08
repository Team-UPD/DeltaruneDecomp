if (!crash)
{
	if (i_ex(obj_ch2_city_car_a))
	{
		with (obj_ch2_city_car_a)
			car_crash_count++;
	}
	hspeed = 0;
	crash = true;
	snd_play(snd_badexplosion);
	visible = 0;
	explosion = instance_create(x + 40, y, obj_animation);
	explosion.sprite_index = spr_realisticexplosion;
	explosion.image_xscale = 2;
	explosion.image_yscale = 2;
	with (explosion)
		scr_depth();
}
