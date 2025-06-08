if (y > (cameray() - 200))
{
	if (lineToCenter && ystart < master.y)
	{
		draw_set_color(c_white);
		draw_line_width(x, y, xstart, ystart, 4);
	}
	draw_sprite_part_ext(sprite_index, image_index, 0, 0, spriteWidthRoot, spriteHeightRoot - (cutOff / image_yscale), x - sprite_xoffset, y - sprite_yoffset, image_xscale, image_yscale, image_blend, image_alpha);
}
