drawx = ((__view_get(e__VW.XView, 0) + auto) * ss) + xstart;
scr_draw_sprite_tiled_area(sprite_index, 0, drawx, 0, 0, y, room_width, cameray() + view_hport[0], 1, 1, c_dark, 1);
animsiner++;
for (var i = 0; i < max_cars; i++)
{
	for (var j = 0; j < 2; j++)
	{
		var y_offset = 0;
		if (room == room_dw_city_traffic_2 || room == room_dw_city_big_2)
			y_offset = -20;
		var ypos = (j == 1) ? (404 + y_offset) : 444;
		car_timer[i][j] += 5;
		if ((car_pos[i][j] + car_timer[i][j]) > ((room_width * 2) + 50))
		{
			car_pos[i][j] = -50;
			car_timer[i][j] = 0;
		}
		var xpos = car_pos[i][j] + drawx + car_timer[i][j];
		if (nocars == false)
			draw_sprite_ext(spr_traffic_car_side_wheels_small, animsiner / 6, xpos, ypos, 2, 2, 0, c_dark, 1);
	}
}
