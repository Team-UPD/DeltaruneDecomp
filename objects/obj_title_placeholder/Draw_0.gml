if (specialmode == 0)
{
	draw_set_color(c_white);
	draw_set_font(fnt_mainbig);
	draw_set_halign(fa_center);
	draw_text(camerax() + (view_wport[0] / 2), cameray() + 80, "Chapter 2");
	draw_set_halign(fa_left);
	for (var i = 0; i < array_length_1d(choice); i++)
	{
		var text_color = (choice_index == i) ? c_yellow : c_white;
		draw_set_color(text_color);
		draw_text(camerax() + 240, cameray() + 160 + (i * 40), choice[i]);
	}
	draw_set_color(c_white);
	draw_sprite(spr_heart_centered, 0, camerax() + 220, cameray() + 175 + (choice_index * 40));
}
if (keyboard_check_pressed(ord("N")))
{
	if (specialmode == 0)
		specialmode = 1;
	else
		specialmode = 0;
}
if (keyboard_check_pressed(ord("M")))
{
	if (auto == 0)
		auto = 1;
	else
		auto = 0;
}
if (specialmode == 1)
{
	draw_set_color(c_black);
	draw_rectangle(-10, -10, 999, 999, false);
	height = 0;
	draw_set_color(c_white);
	draw_set_font(fnt_main);
	for (var i = 0; i < 20; i++)
	{
		draw_sprite(i + n, autotimer / 5, x + 300, y + height + (i * 10));
		draw_text(x, y + height, sprite_get_name(i + n));
		height += sprite_get_height(i + n);
	}
	if (right_p())
		n++;
	if (down_p())
		n += 20;
	if (left_p())
		n--;
	if (up_p())
		n -= 20;
	if (auto)
		autotimer++;
	if (autotimer >= 90)
	{
		n += 5;
		autotimer = 0;
	}
	if (n < 0)
		n = 0;
}
