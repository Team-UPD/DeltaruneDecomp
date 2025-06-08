if (obj_mainchara.battlemode == 1)
{
	if (battlealpha < 0.8)
		battlealpha += 0.04;
}
else if (battlealpha > 0)
{
	battlealpha -= 0.04;
}
draw_set_alpha(battlealpha);
draw_set_color(c_black);
draw_rectangle(__view_get(e__VW.XView, 0) - 100, __view_get(e__VW.YView, 0) - 100, __view_get(e__VW.XView, 0) + 740, __view_get(e__VW.YView, 0) + 540, false);
draw_set_alpha(1);
if (instance_exists(obj_caterpillarchara))
{
	obj_caterpillarchara.image_blend = merge_color(c_white, c_black, battlealpha / 2);
	if (battlealpha <= 0)
		obj_caterpillarchara.image_blend = c_white;
}
if (whitecon == 1)
{
	with (obj_mainchara)
		battlemode = 0;
	whitetimer += 1;
	draw_set_alpha(whitetimer / 15);
	draw_set_color(c_white);
	draw_rectangle(-100, -100, __view_get(e__VW.XView, 0) + 740, __view_get(e__VW.YView, 0) + 540, false);
	draw_set_alpha(1);
}
if (whitecon == 2)
{
	whitetimer -= 1;
	draw_set_alpha(whitetimer / 15);
	draw_set_color(c_white);
	draw_rectangle(-100, -100, __view_get(e__VW.XView, 0) + 740, __view_get(e__VW.YView, 0) + 540, false);
	draw_set_alpha(1);
	if (whitetimer <= 0)
	{
		global.interact = 0;
		whitecon = 0;
		whitetimer = 0;
	}
}
