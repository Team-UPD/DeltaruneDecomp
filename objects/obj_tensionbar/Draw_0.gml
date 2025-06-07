draw_sprite(spr_tplogo, 0, x - 30, y + 30);
draw_sprite(spr_tensionbar, 1, x, y);
draw_set_color(c_white);
scr_84_set_draw_font("mainbig");
flashsiner += 1;
tamt = floor((apparent / global.maxtension) * 100);
maxed = 0;
if (tamt < 100)
{
	draw_text(x - 30, y + 70, string_hash_to_newline(floor((apparent / global.maxtension) * 100)));
	draw_text(x - 25, y + 95, string_hash_to_newline("%"));
}
if (tamt >= 100)
{
	maxed = 1;
	draw_set_color(c_yellow);
	draw_text(x - 28, y + 70, string_hash_to_newline("M"));
	draw_text(x - 24, y + 90, string_hash_to_newline("A"));
	draw_text(x - 20, y + 110, string_hash_to_newline("X"));
}
if (abs(apparent - global.tension) < 20)
	apparent = global.tension;
if (apparent < global.tension)
	apparent += 20;
if (apparent > global.tension)
	apparent -= 20;
if (apparent != current)
{
	changetimer += 1;
	if (changetimer > 15)
	{
		if ((apparent - current) > 0)
			current += 2;
		if ((apparent - current) > 10)
			current += 2;
		if ((apparent - current) > 25)
			current += 3;
		if ((apparent - current) > 50)
			current += 4;
		if ((apparent - current) > 100)
			current += 5;
		if ((apparent - current) < 0)
			current -= 2;
		if ((apparent - current) < -10)
			current -= 2;
		if ((apparent - current) < -25)
			current -= 3;
		if ((apparent - current) < -50)
			current -= 4;
		if ((apparent - current) < -100)
			current -= 5;
		if (abs(apparent - current) < 3)
			current = apparent;
	}
}
if (current > 0)
{
	if (apparent < current)
	{
		draw_set_color(c_red);
		draw_rectangle(x + 3, (y + sprite_height) - 1, (x + sprite_width) - 1, (y + sprite_height) - ((current / global.maxtension) * sprite_height), false);
		draw_set_color(c_orange);
		draw_rectangle(x + 3, (y + sprite_height) - 1, (x + sprite_width) - 1, (y + sprite_height) - ((apparent / global.maxtension) * sprite_height), false);
	}
	if (apparent > current)
	{
		draw_set_color(c_white);
		draw_rectangle(x + 3, (y + sprite_height) - 1, (x + sprite_width) - 1, (y + sprite_height) - ((apparent / global.maxtension) * sprite_height), false);
		draw_set_color(c_orange);
		if (maxed == 1)
			draw_set_color(merge_color(c_yellow, c_orange, 0.5));
		draw_rectangle(x + 3, (y + sprite_height) - 1, (x + sprite_width) - 1, (y + sprite_height) - ((current / global.maxtension) * sprite_height), false);
	}
	if (apparent == current)
	{
		draw_set_color(c_orange);
		if (maxed == 1)
			draw_set_color(merge_color(c_yellow, c_orange, 0.5));
		draw_rectangle(x + 3, (y + sprite_height) - 1, (x + sprite_width) - 1, (y + sprite_height) - ((current / global.maxtension) * sprite_height), false);
	}
}
if (global.tensionselect > 0)
{
	tsiner += 1;
	draw_set_color(c_white);
	draw_set_alpha(abs(sin(tsiner / 8) * 0.5) + 0.2);
	theight = (y + sprite_height) - ((current / global.maxtension) * sprite_height);
	theight2 = theight + ((global.tensionselect / global.maxtension) * sprite_height);
	if (theight2 > ((y + sprite_height) - 1))
	{
		theight2 = (y + sprite_height) - 1;
		draw_set_color(c_dkgray);
		draw_set_alpha(0.7);
	}
	draw_rectangle(x + 3, theight2, (x + sprite_width) - 1, theight, false);
	draw_set_alpha(1);
}
if (apparent > 20 && apparent < global.maxtension)
	draw_sprite(spr_tensionmarker, 0, x + 3, (y + sprite_height) - ((current / global.maxtension) * sprite_height));
draw_sprite(spr_tensionbar, 0, x, y);
