trimax = 8;
blackon = 0;
curx = __view_get(e__VW.XView, 0);
curl = 0 + bgx;
if (bgx >= 640)
	bgx -= 640;
curscale = 1;
tempscale = 0;
curw = 5;
if (on == 1)
{
	if (bgalpha < 1)
		bgalpha += 0.02;
}
if (on == 0)
{
	if (bgalpha > 0)
		bgalpha -= 0.02;
}
for (i = 0; i < 16; i += 1)
{
	draw_sprite_part_ext(spr_carouselbg, 0, curl, 0, curw, 300, curx, -i + __view_get(e__VW.YView, 0), curscale, 1, dkblue3, bgalpha);
	tempscale = 1 + (0.5 * i);
	curscale = floor(tempscale);
	curl += 5;
	if (curl >= 640)
		curl -= 640;
	curw = 5;
	curx += ((5 * curscale) - 5);
}
for (i = 16; i > 0; i -= 1)
{
	draw_sprite_part_ext(spr_carouselbg, 0, curl, 0, curw, 380, curx, -i + __view_get(e__VW.YView, 0), curscale, 1, dkblue3, bgalpha);
	tempscale = 1 + (0.5 * i);
	if (tempscale < 1)
		tempscale = 1;
	curscale = ceil(tempscale);
	curl += 5;
	if (curl >= 640)
		curl -= 640;
	curw = 5;
	curx += ((5 * curscale) - 5);
}
for (i = 0; i < trimax; i += 1)
{
	event_user(0);
	draw_triangle(xcen, ycen, xcen + newx1, ycen + newy1, xcen + newx2, ycen + newy2, false);
}
for (i = 0; i < 8; i += 1)
{
	event_user(0);
	ng = 0;
	if (newy1 > 0 || newy2 > 0)
	{
		if (newx2 > (newx1 - 48))
			draw_triangle(xcen, ycen - 80, xcen + (newx1 / 6), ycen + (newy1 / 6), xcen + (newx2 / 6), ycen + (newy2 / 6), false);
	}
}
for (i = 8; i >= 0; i -= 1)
{
	event_user(0);
	if (newy1 > 0 || newy2 > 0)
		draw_triangle(xcen, ycen - 80, xcen + (newx1 / 4), (ycen + newy1) - 380, xcen + (newx2 / 4), (ycen + newy2) - 380, false);
}
for (i = 0; i < trimax; i += 1)
{
	event_user(0);
	draw_triangle(xcen, ycen - 320, xcen + newx1, (ycen + newy1) - 320, xcen + newx2, (ycen + newy2) - 320, false);
}
siner += 2;
if (on == 1)
	rotcounter += 1;
if (rotcounter >= rotfps && on == 1)
{
	if (on == 1 && rotspeed < 1)
		rotspeed += 0.1;
	bgx += (1 * rotfps);
	rot += (2.5 * rotfps * rotspeed);
	rotcounter = 0;
}
