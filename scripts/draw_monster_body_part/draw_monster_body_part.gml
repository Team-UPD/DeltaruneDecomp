function draw_monster_body_part(arg0, arg1, arg2, arg3)
{
	draw_sprite_ext(arg0, arg1, arg2, arg3, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
	if (flash == 1)
		draw_sprite_ext_flash(arg0, arg1, arg2, arg3, image_xscale, image_yscale, image_angle, image_blend, (-cos(fsiner / 5) * 0.4) + 0.6);
}
