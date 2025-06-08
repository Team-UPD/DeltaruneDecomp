if (explosion_hide == 0)
	draw_self();
if (timer > 0)
{
	obj_sneo_lastattack.endattack = 3;
	if (obj_sneo_lastattack.endattack == 2)
	{
		if (timer >= 7)
			explosion_alpha -= 0.1;
		draw_sprite_ext(spr_pixel_white, 0, camerax() - 20, cameray() - 20, 220, 220, 0, c_white, clamp(timer / 60, 0, 1));
	}
	else
	{
		if (explodesfx == 0)
		{
			explodesfx = 1;
			snd_loop(snd_rumble);
			snd_play_x(snd_explosion, 0.6, 1);
		}
		draw_sprite_ext(spr_sneo_bigcircle, 0, x - 50, y, image_xscale + (timer * 2), image_yscale + timer, 0, c_white, 1);
		draw_sprite_ext(spr_pixel_white, 0, camerax() - 20, cameray() - 20, 220, 220, 0, c_white, clamp(timer / 12, 0, 1));
	}
}
