function draw_sprite_ext_centerscale(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8)
{
	var _xoff = sprite_get_xoffset(arg0) * image_xscale;
	var _yoff = sprite_get_yoffset(arg0) * image_yscale;
	var _sprite_width = sprite_get_width(arg0) * image_xscale;
	var _sprite_height = sprite_get_width(arg0) * image_yscale;
	draw_sprite_ext(arg0, arg1, arg2 - (((_sprite_width - _xoff) * (arg4 - image_xscale)) / 2), arg3 - (((_sprite_height - _yoff) * (arg5 - image_yscale)) / 2), arg4, arg5, arg6, arg7, arg8);
}
