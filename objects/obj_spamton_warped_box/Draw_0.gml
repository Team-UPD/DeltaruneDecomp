var colo = draw_get_color();
draw_set_colour(#00C000);
draw_triangle(minx, miny, lerp(maxx, suckx, suckpower), lerp(miny, upper_sucky, suckpower), lerp(maxx, suckx, suckpower), lerp(maxy, lower_sucky, suckpower), 0);
draw_triangle(minx, miny, minx, maxy, lerp(maxx, suckx, suckpower), lerp(maxy, lower_sucky, suckpower), 0);
draw_set_colour(c_black);
draw_triangle(minx + 4, miny + 4, lerp(maxx - 4, suckx - 4, suckpower), lerp(miny + 4, upper_sucky + 3, suckpower), lerp(maxx - 4, suckx - 4, suckpower), lerp(maxy - 4, lower_sucky - 3, suckpower), 0);
draw_triangle(minx + 4, miny + 4, minx + 4, maxy - 4, lerp(maxx - 4, suckx - 4, suckpower), lerp(maxy - 4, lower_sucky - 3, suckpower), 0);
draw_set_colour(colo);
if (global.turntimer > 30)
{
	if (timer < 60)
		timer++;
	else
		timer--;
	if (timer >= 59)
		suckpower = timer / 60;
	else
		suckpower = scr_ease_in(timer / 60, 3);
}
else
{
	if (timer > 30)
		timer = 30;
	if (snapback == 0)
		snapback = -1;
	if (timer > 0)
		timer--;
	suckpower = scr_ease_in(timer / 30, -2);
}
