if (y >= 635)
{
	instance_destroy();
	exit;
}
if (y < 120)
	image_yscale = 0;
if (y > 120)
	image_yscale = (y - 120) / 150;
image_xscale = image_yscale * flip;
minx = lerp(320, 40, image_yscale / 2);
maxx = lerp(320, 600, image_yscale / 2);
x = lerp(minx, maxx, xrange);
if (image_yscale < 0.1)
{
	abs(image_yscale == (0.1 * flip));
	image_xscale = 0.1;
}
else if (variant == 2)
{
	if (gravity < 3.2)
		gravity += 0.08;
}
else if (variant == 1)
{
	if (gravity < 3.2)
		gravity += 0.04;
}
else if (gravity < 1.6)
{
	gravity += 0.02;
}
if (y >= 290)
{
}
rep = 0;
if (sprite_index == spr_bqueen_kick_cancan && animtimer < 7)
	rep = 1;
if (sprite_index == spr_bqueen_kick_cancan && animtimer < 14)
	rep = 3;
if (sprite_index == spr_bqueen_kick_cancan && animtimer >= 14)
	rep = 1;
repeat (rep)
	animtimer += 1;
if (animtimer <= 50)
	image_index = animtimer / 8;
if (animtimer == 9 && playsounds == 1)
{
	snd_play(snd_heavyswing);
	snd_play(snd_queenhowl_b);
	snd_volume(snd_heavyswing, (image_yscale + 0.4) / 2, 0);
	snd_volume(snd_queenhowl_b, (image_yscale + 0.4) / 2, 0);
	snd3 = snd_play(snd_heavyswing);
	snd4 = snd_play(snd_queenhowl_b);
	snd_volume(snd_heavyswing, (image_yscale + 0.4) / 2, 0);
	snd_volume(snd_queenhowl_b, (image_yscale + 0.4) / 2, 0);
	snd_pitch(snd3, 0.95);
	snd_pitch(snd4, 1.05);
}
if (sprite_index == spr_bqueen_kick_cancan && image_index > 2.99)
{
	animtimer = 0;
	if (flip == 1)
		flip = -1;
	else
		flip = 1;
}
if (y > 375)
	depth = o_boxingcontroller.depth - 1;
if (y > 375 && create_hitbox == 0)
{
	if (sprite_index == spr_bqueen_kick_cancan && visible == true)
	{
		create_hitbox = 1;
		kick_hitbox = instance_create(x, y - 120, o_boxing_hitbox);
		with (kick_hitbox)
		{
			give_hurt = 22 / f;
			timer = 400 / f;
			damage = 25;
			hit_dodging = 1;
			hit_jumping = 1;
			hit_ducking = 1;
			image_yscale = 20;
			image_xscale = 5;
		}
	}
	if (sprite_index == spr_bqueen_leggy_tall && visible == true)
	{
		create_hitbox = 2;
		leggy_hitbox = instance_create(x, y - 110, o_boxing_hitbox);
		with (leggy_hitbox)
		{
			give_hurt = 22 / f;
			timer = 400 / f;
			damage = 25;
			hit_dodging = 1;
			hit_jumping = 1;
			image_yscale = 10;
			image_xscale = 5;
		}
	}
}
if (y > 375 && y < 390 && visible == true)
{
	if (sprite_index == spr_bqueen_kick_cancan)
		kick_hitbox.y = y - 120;
	if (sprite_index == spr_bqueen_leggy_tall)
		leggy_hitbox.y = y - 110;
}
if (y > 390 && visible == true)
{
	if (create_hitbox == 1)
	{
		with (kick_hitbox)
			instance_destroy();
	}
	if (create_hitbox == 2)
	{
		with (leggy_hitbox)
			instance_destroy();
	}
	create_hitbox = 3;
}
