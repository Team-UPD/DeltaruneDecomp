image_index_fake += image_speed_fake;
if (mode == 1)
{
	fsiner += 1;
}
else
{
	fsiner = 0;
	_sprite = remsprite;
}
recruitspriteheight = sprite_get_height(_sprite);
recruitspritewidth = sprite_get_width(_sprite);
rx = ((sprite_get_xoffset(_sprite) * 2) - recruitspritewidth) + (_spritex * 2);
ry = ((sprite_get_yoffset(_sprite) * 2) - (recruitspriteheight * 2)) + (_spritey * 2);
if (seat == 1 || seat == 3)
{
	draw_sprite_ext(_sprite, image_index_fake, x + rx + 35, y + ry + 80, 2, 2, 0, c_white, 1);
	if (mode == 1)
		draw_sprite_ext_flash(_sprite, image_index_fake, x + rx + 35, y + ry + 80, 2, 2, 0, c_white, sin(fsiner / 8));
}
else
{
	rx = ((-sprite_get_xoffset(_sprite) * 2) + recruitspritewidth) - (_spritex * 2);
	draw_sprite_ext(_sprite, image_index_fake, x + rx + 35, y + ry + 80, -2, 2, 0, c_white, 1);
	if (mode == 1)
		draw_sprite_ext_flash(_sprite, image_index_fake, x + rx + 35, y + ry + 80, -2, 2, 0, c_white, sin(fsiner / 8));
}
