if (slow)
{
	if (sprite_index == spr_poppup_ad_poppup)
		sprite_index = spr_poppup_ad_poppup_shriveled;
	slow = false;
}
if (blockstate == 1)
{
	timer++;
	if (timer < 3)
		gpu_set_fog(1, c_white, 0, 0);
	draw_self();
	if (timer < 3)
		gpu_set_fog(0, c_white, 0, 0);
	if (timer == 1)
		snd_play(snd_heavyswing);
	if (timer < 9)
	{
		x = (xstart - (8 - timer)) + random((8 - timer) * 2);
		y = (ystart - (8 - timer)) + random((8 - timer) * 2);
	}
	if (timer == 2 || timer == 3 || timer == 6 || timer == 8 || timer == 10 || timer == 11)
		draw_sprite_ext(spr_poppup_block, 0, x, y, 1, 1, 0, c_white, image_alpha);
	if (timer > 6)
		image_alpha -= 0.4;
	if (image_alpha <= 0)
		instance_destroy();
	exit;
}
if (state == 1)
{
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_rectangle((x - (sprite_width / 2)) + 2, (y - (sprite_height / 2)) + 2, x + (sprite_width / 2) + 2, y + (sprite_height / 2) + 2, false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_self();
}
else if (state < 3)
{
	if (state == -1)
	{
		scale += (0.25 * scalespeed);
		if (scale > 1)
		{
			scale = 1.2;
			state = 0;
		}
	}
	else if (state == 0)
	{
		scale = 1;
		state = 1;
	}
	else if (state == 2)
	{
		scale -= (0.25 * scalespeed);
		if (scale <= 0)
			instance_destroy();
	}
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_rectangle((x - ((sprite_width * scale) / 2)) + 2, (y - ((sprite_height * scale) / 2)) + 2, x + ((sprite_width * scale) / 2) + 2, y + ((sprite_height * scale) / 2) + 2, false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_sprite_ext(sprite_index, image_index, x, y, scale, scale, 0, c_white, 1);
}
if (mock == 1)
{
	mocktimer += 0.25;
	draw_sprite_ext(spr_poppup_smiley, mocktimer, x - 5, y + 5, 3, 3, 0, c_white, image_alpha);
}
