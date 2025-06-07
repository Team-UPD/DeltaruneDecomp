draw_self();
can = 0;
if (y < -20)
	can = 1;
if (x < (__view_get(e__VW.XView, 0) - 20))
	can = 1;
if (x > (__view_get(e__VW.XView, 0) + 660))
	can = 1;
if (can == 1)
{
	draw_set_color(c_red);
	draw_line(x, y, x + lengthdir_x(1000, direction), y + lengthdir_y(1000, direction));
}
if (can == 0 && soundcon == 0)
{
	snd_play(snd_spearrise);
	soundcon = 1;
}
