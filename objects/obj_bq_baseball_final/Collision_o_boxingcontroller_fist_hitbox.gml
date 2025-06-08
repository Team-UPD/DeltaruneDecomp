if (hit != 1)
{
	snd_free(global.batmusic[0]);
	state = 2;
	instance_create(x, y + 91, o_bq_screen_flash);
	if (arcade)
		snd_play(snd_punchheavythunder_bc);
	else
		snd_play(snd_punchheavythunder);
	hit = 1;
	baseball_combo_timer = 2;
	o_boxingcontroller.hit_baseball += 1;
	o_boxingcontroller.hit_baseball_check = 1;
	y = o_boxingcontroller.y - 184;
	obj_3d_bg_effect.slow_down = 1;
	vspeed = 0;
	if (other.image_xscale == 2)
		hit_direction = -1;
	else
		hit_direction = 1;
	with (o_bq_whitefade)
		instance_destroy();
	if (o_boxingcontroller.swordactive == 1)
		alarm[0] = 5;
	var speedlines = instance_create(x, o_boxingcontroller.y - 120, obj_fx_speedlines);
	speedlines.offsety = true;
	speedlines.depth = 4;
	with (o_boxingcontroller)
	{
		if (duckactive == 1)
		{
			snd_pitch(snd_play(snd_squeaky), 0.75 + random(0.5));
			color_fade_alpha = 1;
			global.hp[1] += 4;
			if (global.hp[1] > global.maxhp[1])
				global.hp[1] = global.maxhp[1];
		}
		if (laseractive == 1)
			laserpunchfadetimer = 10;
	}
}
