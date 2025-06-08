if (animate)
	siner++;
if (!hurt)
{
	if (default_sprite_back != -1)
		draw_sprite_ext(default_sprite_back, image_index, x + sinerx + coaster_offset_x, y + sinery + coaster_offset_y, 2, 2, 0, c_white, 1);
	draw_sprite_ext(actor.sprite_index, actor.image_index, x + sinerx + character_offset_x, y + sinery + character_offset_y, 2, 2, 0, c_white, 1);
	draw_sprite_ext(default_sprite_front, image_index, x + sinerx + coaster_offset_x, y + sinery + coaster_offset_y, 2, 2, 0, c_white, 1);
}
else
{
	draw_sprite_ext(hurt_sprite_back, image_index, x + coaster_offset_x, y + coaster_offset_y, 2, 2, 0, c_white, 1);
	draw_sprite_ext(hurt_character_sprite, image_index, x + sinerx + character_offset_x, y + sinery + character_offset_y, 2, 2, 0, c_white, 1);
	draw_sprite_ext(hurt_sprite_front, image_index, x + coaster_offset_x, y + coaster_offset_y, 2, 2, 0, c_white, 1);
}
