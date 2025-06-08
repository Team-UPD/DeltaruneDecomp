if (glow_in_out != 0)
{
	glow_lerp = round(lerp(glow_lerp, 1, 0.35) * 100) / 100;
	if (glow_in_out == 1)
		scr_draw_outline(2, recruit_col, glow_lerp);
	else
		scr_draw_outline(2, recruit_col, 1 - glow_lerp);
	if (glow_lerp >= 0.95)
	{
		if (glow_in_out == 1)
			glow_in_out = -1;
		else
			glow_in_out = 0;
		glow_lerp = 0;
	}
}
if (fade_in_out)
{
	draw_sprite_ext_flash(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, merge_color(start_color, end_color, color_lerp), 1);
	if (glow_in_out == 0 && color_lerp >= 0.35)
	{
		glow_in_out = 1;
		glow_lerp = 0;
	}
}
else
{
	draw_self();
}
if (con == 4)
{
	if (instance_exists(big_square))
	{
		big_square.image_alpha = clamp01(shine_timer / 20);
	}
	else
	{
		draw_set_color(c_white);
		draw_rectangle(camerax(), cameray(), camerax() + 640, cameray() + 480, 0);
	}
	shine_timer++;
	if (shine_timer == 30)
		thrash_con = 3;
}
if (con >= 5 || (con == 4 && shine_timer >= 40))
{
	draw_set_color(c_white);
	draw_rectangle(camerax(), cameray(), camerax() + 640, cameray() + 480, 0);
	if (streak_timer == (4 / f))
	{
		line = instance_create(camerax() + 20 + irandom(120), cameray() + 652 + irandom(32), obj_anime_bg_line);
		line.image_blend = #8EAAEA;
		line.depth = depth - 1;
	}
	if (streak_timer == (24 / f))
	{
		line = instance_create(camerax() + 20 + irandom(120), cameray() + 652 + irandom(32), obj_anime_bg_line);
		line.image_blend = #8EAAEA;
		line.depth = depth - 1;
	}
	if (streak_timer == (44 / f))
	{
		line = instance_create(camerax() + 20 + irandom(120), cameray() + 652 + irandom(32), obj_anime_bg_line);
		line.image_blend = #8EAAEA;
		line.depth = depth - 1;
	}
	if (streak_timer == (14 / f))
	{
		line = instance_create((camerax() + 620) - irandom(120), cameray() + 652 + irandom(32), obj_anime_bg_line);
		line.image_blend = #8EAAEA;
		line.depth = depth - 1;
	}
	if (streak_timer == (34 / f))
	{
		line = instance_create((camerax() + 620) - irandom(120), cameray() + 652 + irandom(32), obj_anime_bg_line);
		line.image_blend = #8EAAEA;
		line.depth = depth - 1;
	}
	if (streak_timer == (44 / f))
	{
		line = instance_create((camerax() + 620) - irandom(120), cameray() + 652 + irandom(32), obj_anime_bg_line);
		line.image_blend = #8EAAEA;
		line.depth = depth - 1;
	}
	streak_timer++;
	if (streak_timer >= (50 / f))
		streak_timer = 0;
}
