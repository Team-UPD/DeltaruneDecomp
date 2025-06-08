if (draw_mode == 0)
{
	dogIndex += 0.25;
	draw_sprite_ext(spr_dog_walk, image_index, x + 30 + 20, y + 64, 2, 2, 0, c_white, 1);
	draw_sprite_ext(spr_saucernolegs, 0, x, (y + 2) - raise, 2, 2, 0, c_white, 1);
}
if (draw_mode == 1)
	draw_self();
if (draw_mode == 2)
{
	if (raise < 18)
		raise++;
	clamp(raise, 0, 18);
	draw_sprite_ext(spr_dog_walk, image_index, x + 30 + 20, y + 64, 2, 2, 0, c_white, 1);
	draw_sprite_ext(spr_saucernolegs, 0, x, (y + 2) - raise, 2, 2, 0, c_white, 1);
}
if (draw_mode == 3)
{
	if (raise < 18)
		raise++;
	clamp(raise, 0, 18);
	draw_sprite_ext(spr_dog_walk, image_index, x + 30 + 20, y + 64, 2, 2, 0, c_white, 1);
	draw_sprite_ext(spr_saucernolegs, 1, x, (y + 2) - raise, 2, 2, 0, c_white, 1);
}
