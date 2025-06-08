if (!init)
{
	init = true;
	width = (width == -1) ? (sprite_get_width(sprite_index) * x_scale) : width;
	height = (height == -1) ? (sprite_get_height(sprite_index) * y_scale) : height;
}
x_pos += x_speed;
if (room_wide)
{
	if ((x_pos + width) < 0)
		x_pos += width;
	if ((x_pos - width) > 0)
		x_pos -= width;
}
else
{
	if ((x_pos + width) < camerax())
		x_pos += width;
	if ((x_pos - width) > camerax())
		x_pos -= width;
}
if (y_speed != 0)
{
	y_pos += y_speed;
	if ((y_pos + height) < cameray())
		y_pos += height;
	if ((y_pos - height) > cameray())
		y_pos -= height;
}
scr_draw_sprite_tiled_area(sprite_index, image_index, x_pos - width, y_pos, x_pos, y_pos, (x_pos - width) + width, y_pos + height, x_scale, y_scale, color, alpha);
scr_draw_sprite_tiled_area(sprite_index, image_index, x_pos, y_pos, x_pos, y_pos, x_pos + width, y_pos + height, x_scale, y_scale, color, alpha);
scr_draw_sprite_tiled_area(sprite_index, image_index, x_pos + width, y_pos, x_pos + width, y_pos, x_pos + width + width, y_pos + height, x_scale, y_scale, color, alpha);
if (loop_vertical)
{
	scr_draw_sprite_tiled_area(sprite_index, image_index, x_pos, y_pos - height, x_pos, y_pos - height, x_pos + width, (y_pos - height) + height, x_scale, y_scale, color, alpha);
	scr_draw_sprite_tiled_area(sprite_index, image_index, x_pos, y_pos + height, x_pos, y_pos + height, x_pos + width, y_pos + height + height, x_scale, y_scale, color, alpha);
	scr_draw_sprite_tiled_area(sprite_index, image_index, x_pos - width, y_pos - height, x_pos - width, y_pos - height, (x_pos - width) + width, (y_pos - height) + height, x_scale, y_scale, color, alpha);
	scr_draw_sprite_tiled_area(sprite_index, image_index, x_pos - width, y_pos + height, x_pos - width, y_pos + height, (x_pos - width) + width, y_pos + height + height, x_scale, y_scale, color, alpha);
	scr_draw_sprite_tiled_area(sprite_index, image_index, x_pos + width, y_pos - height, x_pos + width, y_pos - height, x_pos + width + width, (y_pos - height) + height, x_scale, y_scale, color, alpha);
	scr_draw_sprite_tiled_area(sprite_index, image_index, x_pos + width, y_pos + height, x_pos + width, y_pos + height, x_pos + width + width, y_pos + height + height, x_scale, y_scale, color, alpha);
}
