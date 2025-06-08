function draw_monster_body_part_ext(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
{
	draw_sprite_ext(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8);
	if (flash == 1)
		draw_sprite_ext_flash(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, (-cos(fsiner / 5) * 0.4) + 0.6);
}
