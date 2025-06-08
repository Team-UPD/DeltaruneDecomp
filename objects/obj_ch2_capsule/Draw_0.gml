if (con == 0 && visible == 1)
{
	draw_self();
	repeattimer--;
	if (repeattimer <= 0)
	{
		repeattimer = 8;
		if (main)
			noise = snd_play(snd_chain_extend);
	}
}
if (con == 1)
{
	if (extendtimer == 0)
	{
		if (main)
			snd_play(snd_swing);
	}
	extendtimer += 0.25;
	if (extendtimer >= 4)
	{
		con = 2;
		if (main)
			snd_play(snd_impact);
	}
	else
	{
		draw_sprite_ext(spr_cutscene_09_capsule_extend, extendtimer, x, y, image_yscale, image_yscale, image_angle, image_blend, image_alpha);
	}
}
if (con == 2)
{
	image_index = 0;
	image_speed = 0;
	sprite_index = spr_cutscene_09_capsule_extended;
	imagetimer++;
	if (imagetimer >= 2)
	{
		scr_afterimage();
		imagetimer = 0;
	}
	siner++;
	draw_sprite_ext(spr_cutscene_09_capsule_extended, 0, x, y, image_yscale, image_yscale, image_angle, image_blend, image_alpha);
	draw_sprite_ext(spr_cutscene_09_capsule_extended, 1, x, y, image_yscale, image_yscale, image_angle, image_blend, 0.1 + (sin(siner / 2) * 0.1));
}
