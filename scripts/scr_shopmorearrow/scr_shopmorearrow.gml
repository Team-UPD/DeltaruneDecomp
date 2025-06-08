function scr_shopmorearrow(arg0)
{
	if (pagemax > 0)
		draw_sprite_ext(spr_morearrow, 0, 370, 280 - (sin(cur_jewel / 12) * 3), 1, -1, 0, c_white, 1);
	if ((5 + pagemax) < arg0)
	{
		if (menu == 11)
		{
			if (itemsellname[5 + pagemax] != " ")
				draw_sprite_ext(spr_morearrow, 0, 370, 440 + (sin(cur_jewel / 12) * 3), 1, 1, 0, c_white, 1);
		}
		else
		{
			draw_sprite_ext(spr_morearrow, 0, 370, 440 + (sin(cur_jewel / 12) * 3), 1, 1, 0, c_white, 1);
		}
	}
}
