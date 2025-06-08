timer++;
if (shakeamount > 0)
	shakeamount--;
var shakeamount2 = shakeamount - random(shakeamount * 2);
y1 = ((obj_spamton_neo_enemy.y + obj_spamton_neo_enemy.party[vineid]) - 10) + obj_spamton_neo_enemy.partyoff[vineid];
if (type == 0)
{
	if (timer == 11)
	{
		x3 = x1;
		x4 = x2;
		y3 = y1 - 130;
		y4 = y2;
		y2 = y1 - 130;
	}
	if (timer > 11)
	{
		if (y4 < y3)
			y3 -= 4;
		if (y1 > y2)
			y2 += 4;
	}
	if (timer == 60)
		instance_destroy();
}
if (type == 1)
{
	if (timer > 1 && timer < 17)
	{
		x3 += lengthdir_x(anglecutspeed, lineangle + 23);
		y3 += lengthdir_y(anglecutspeed, lineangle + 23);
		x2 += lengthdir_x(anglecutspeed, lineangle - 157);
		y2 += lengthdir_y(anglecutspeed, lineangle - 157);
		anglecutspeed -= 0.2;
	}
	if (timer > 11)
		alpha -= 0.1;
	if (timer > 21)
	{
	}
	if (timer == 60 || alpha < 0.1)
		instance_destroy();
}
if (abs(y1 - y2) < 16 || y2 > y1)
	bottomlinevisible = 0;
draw_set_alpha(alpha);
draw_set_color(c_orange);
if ((timer >= 11 && type == 0 && hide == 0) || (type == 1 && hide == 0))
	draw_line_width(x3, y3, x4, y4, 2);
if (bottomlinevisible == 1 && hide == 0)
	draw_line_width(x1 + shakeamount2, y1 + shakeamount2, x2 + shakeamount2, y2 + shakeamount2, 2);
if (timer < 11 && hide == 0)
{
	draw_set_color(c_white);
	draw_set_alpha(11 - (timer / 10));
	draw_line_width(x1, y1, x2, y2, 2);
	draw_set_alpha(1);
}
draw_set_alpha(1);
