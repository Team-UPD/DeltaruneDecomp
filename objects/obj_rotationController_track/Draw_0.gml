draw_self();
if (rotate == true)
{
	image_index = 0;
	if (left == true)
		draw_sprite_ext(spr_rotationController_directions, 0, x + 6, y + 20, 2, 2, 0, c_white, 1);
	if (right == true)
		draw_sprite_ext(spr_rotationController_directions, 2, x + 6, y + 20, 2, 2, 0, c_white, 1);
	if (down == true)
		draw_sprite_ext(spr_rotationController_directions, 1, x + 6, y + 20, 2, 2, 0, c_white, 1);
}
else
{
	image_index = 1;
}
