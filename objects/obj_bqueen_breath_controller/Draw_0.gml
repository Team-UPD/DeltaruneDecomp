draw_sprite_ext(sprite_index, image_index, x, y + 133, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
timer++;
timer2++;
if (introtimer == 0)
{
	repeat (34)
	{
		siner += (0.28 * amplitude);
		if (difficulty == 0)
			siner += 0.2;
		amplitude = scr_approach(amplitude, maxamplitude, 0.03);
	}
	introtimer = 34;
}
introtimer++;
if (introtimer < 35 || introtimer > 70)
{
	siner += (0.28 * amplitude);
	if (difficulty == 0)
		siner += 0.2;
	amplitude = scr_approach(amplitude, maxamplitude, 0.03);
}
place1 = 270 + (sin(siner / 6) * 40 * amplitude);
place2 = 270 + (sin((siner + 50) / 6) * 40 * amplitude);
if (introtimer < 35)
	exit;
if (timer > 9)
{
	bulletcount++;
	if (bulletcount == bulletcountmax)
	{
		timer = 3;
		bulletcount = 0;
		if (difficulty == 0)
			bulletcountmax = choose(2, 3, 4);
		if (difficulty == 1)
			bulletcountmax = choose(2, 3, 4, 5);
	}
	else
	{
		snd_stop(snd_rocket);
		snd_play_pitch(snd_rocket, 0.5 + random(1));
		d = instance_create(x, y, obj_bqueen_breath);
		with (d)
			scr_afterimage_grow();
		d.damage = damage;
		d.target = target;
		d.type = 1;
		d.image_angle = obj_bqueen_breath_controller.place1;
		d.depth = bulletdepth;
		d.rotator_target = id;
		timer = 5;
	}
}
if (timer2 > 9 && difficulty == 1)
{
	bulletcount2++;
	if (bulletcount2 == bulletcount2max)
	{
		timer2 = 3;
		bulletcount2 = 0;
		if (difficulty == 0)
			bulletcountmax = choose(1, 2, 3, 4);
		if (difficulty == 1)
			bulletcount2max = choose(2, 3, 4, 5);
	}
	else
	{
		snd_stop(snd_rocket);
		snd_play_pitch(snd_rocket, 0.5 + random(1));
		d = instance_create(x, y, obj_bqueen_breath);
		with (d)
			scr_afterimage_grow();
		d.damage = damage;
		d.target = target;
		d.type = 2;
		d.image_angle = obj_bqueen_breath_controller.place2;
		d.depth = bulletdepth;
		d.rotator_target = id;
		timer2 = 5;
	}
}
if (global.turntimer < 3)
	instance_destroy();
