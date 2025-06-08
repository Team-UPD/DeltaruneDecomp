function draw_sprite_ext_glow()
{
	var color = (argument_count > 9) ? argument[9] : c_white;
	var blend = (color != c_white) ? merge_color(argument[7], color, glow) : argument[7];
	if (glow < 1)
		draw_sprite_ext(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], blend, argument[8]);
	if (glow > 0)
	{
		if (color == c_white)
			draw_set_blend_mode(bm_add);
		d3d_set_fog(true, color, 0, 1);
		draw_sprite_ext(argument[0], argument[1], argument[2], argument[3], argument[4], argument[5], argument[6], argument[7], glow);
		d3d_set_fog(false, c_black, 0, 0);
		if (color == c_white)
			draw_set_blend_mode(bm_normal);
	}
}
