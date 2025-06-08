if (dontdraw == 0)
{
	if (type == 0)
	{
		draw_sprite_ext(sprite_index, 0, x, y, 2, 2, 0, c_white, 1);
		timer++;
		for (i = 0; i < count; i++)
		{
			myx = ((timer * 4) + (i * 50)) % 152;
			myy = -sin(myx / 36) * 10;
			draw_sprite_ext(spr_traffic_car_side_legs_small, timer / 4, x + myx, y + myy, 2, 2, 0, c_white, 1);
		}
	}
	if (type == 1)
	{
		draw_sprite_ext(sprite_index, 0, x, y, 2, 2, 0, c_white, 1);
		if (movemode == 0)
		{
			timer++;
			image = timer / 4;
		}
		if (movemode == 1)
		{
			image = 0;
			btimer++;
			timeradd = (sin(btimer / 3) * 1.2) + 0.8;
			if (timeradd > -0.6)
				timer += timeradd;
			if (timeradd < 0.4)
				image = 0;
			else
				image = 1;
			image = timer / 8;
		}
		for (i = 0; i < count; i++)
		{
			myx = ((timer * 4) + (i * 60)) % 236;
			myy = (-sin(myx / 60) * 10) + 10;
			if (orientation == "r")
				draw_sprite_ext(spr_traffic_car_side_legs_small, image, (x + myx) - 40, y + myy, 2, 2, 0, c_white, 1);
			if (orientation == "l")
				draw_sprite_ext(spr_traffic_car_side_legs_small, image, (x - myx) + 240, y + myy, -2, 2, 0, c_white, 1);
		}
	}
}
else
{
	if (type == 0)
		draw_sprite_ext(sprite_index, 0, x, y, 2, 2, 0, c_white, 1);
	if (type == 1)
		draw_sprite_ext(sprite_index, 0, x, y, 2, 2, 0, c_white, 1);
}
if (extflag == "big3Right")
	draw_sprite_ext(spr_dw_city_big_3_caroverlay_right, 0, x, y - 10, 2, 2, 0, c_white, 1);
