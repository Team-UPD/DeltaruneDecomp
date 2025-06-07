function scr_dbox()
{
	xxx = __view_get(e__VW.XView, 0);
	yyy = __view_get(e__VW.YView, 0);
	if (global.darkzone == 0)
	{
		var off = side * 155;
		draw_sprite_ext(spr_pxwhite, 0, xxx + 16, yyy + 5 + off, 289, 76, 0, c_white, 1);
		draw_sprite_ext(spr_pxwhite, 0, xxx + 19, yyy + 8 + off, 283, 70, 0, c_black, 1);
	}
	if (global.darkzone == 1)
	{
		if (side == 0)
		{
			draw_set_color(c_black);
			draw_rectangle(xxx + 38, yyy + 16, xxx + 602, yyy + 154, false);
			scr_darkbox((xxx + 32) - 8, (yyy + 10) - 8, xxx + 608 + 8, yyy + 160 + 8);
		}
		else
		{
			draw_set_color(c_black);
			draw_rectangle(xxx + 38, yyy + 326, xxx + 602, yyy + 464, false);
			scr_darkbox((xxx + 32) - 8, (yyy + 320) - 8, xxx + 608 + 8, yyy + 470 + 8);
		}
	}
}
