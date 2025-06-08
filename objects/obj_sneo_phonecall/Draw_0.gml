draw_set_alpha(fadealpha);
draw_set_color(c_white);
if (state == 0 || (state == 1 && sneo.partframe[1] == 0))
{
	siner++;
	draw_self();
	draw_line_width(x, y, obj_spamton_neo_enemy.x + obj_spamton_neo_enemy.partx[5], -20, 2);
	image_angle = sin(siner / 20) * 10;
	if (ringtimer > 0)
	{
		image_angle += (((ringtimer % 2) == 0) ? 1 : -1);
		ringtimer--;
		if (ringtimer <= 6)
			sneo.partmode = 5;
	}
	x = xstart + (sin((siner + 0) / 20) * 10);
	if (ydrop < 1)
		ydrop += 0.02;
	y = lerp(-30, ystart, scr_ease_out(ydrop, -2));
}
else
{
	xx = scr_orbitx(0, 0, 20, 50, sneo.partrot[1]) + sneo.x + sneo.partx[1] + sneo.partxoff[1];
	yy = scr_orbity(0, 0, 20, 50, sneo.partrot[1]) + sneo.y + sneo.party[1] + sneo.partyoff[1];
	draw_line_width(xx, yy, obj_spamton_neo_enemy.x + obj_spamton_neo_enemy.partx[5], -20, 2);
}
draw_set_alpha(1);
