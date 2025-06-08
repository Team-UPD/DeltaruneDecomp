if (drawtype == 0)
{
	image_speed = 0.25;
	rot = 0;
	if (vertState == 0)
	{
		if (left_h())
		{
			raheight = 8;
			suheight = -8;
			rot = 15;
		}
		if (right_h())
		{
			raheight = -8;
			suheight = 8;
			rot = -15;
		}
		if ((right_h() && left_h()) || (!right_h() && !left_h()))
		{
			raheight = 0;
			suheight = 0;
			rot = 0;
		}
	}
	else
	{
		raheight = 0;
		suheight = 0;
		rot = 0;
	}
	if (drawcustom == 0)
	{
		krspr = spr_krisd_dark;
		suspr = spr_susie_sheeh;
		raspr = spr_ralsei_surprised_down;
	}
	dogimagespeed += 0.25;
	draw_sprite_ext(spr_dog_walk, dogimagespeed, x, y + 24, 2, 2, 0, c_white, 1);
	draw_sprite_ext(spr_dogtable_table, 0, x, y, 2, 2, rot, c_white, 1);
	draw_sprite_ext(raspr, 1, x - 60, (y - 76) + raheight, 2, 2, 0, c_white, 1);
	draw_sprite_ext(suspr, 0, x + 12, (y - 82) + suheight, 2, 2, 0, c_white, 1);
	draw_sprite_ext(krspr, 0, x - 21, y - 60, 2, 2, 0, c_white, 1);
}
if (drawtype == 1)
{
	dogimagespeed += 0.25;
	draw_sprite_ext(spr_dog_walk, dogimagespeed, x, y + 24, 2, 2, 0, c_white, 1);
	draw_sprite_ext(spr_dogtable_table, 0, x, y, 2, 2, 0, c_white, 1);
}
