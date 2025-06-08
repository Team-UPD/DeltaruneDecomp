if (lightsoff == 1)
{
	draw_set_color(c_black);
	draw_rectangle(-100, -100, 900, 900, false);
}
if (global.chapter == 2)
{
	if (lightsoff == 2)
	{
		depth = 990000;
		draw_sprite(bg_unusedclass_empty, 0, 0, 0);
	}
}
