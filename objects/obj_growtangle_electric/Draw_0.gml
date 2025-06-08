if (instance_exists(obj_growtangle))
{
	plugangle = 0;
	wy = 0;
	wx = 75;
	if (con >= 1)
	{
		plugangle = image_angle;
		wx = lengthdir_x(obj_growtangle.sprite_width / 2, image_angle);
		wy = lengthdir_y(obj_growtangle.sprite_width / 2, image_angle);
	}
	if (type != 1)
		draw_sprite_ext(spr_growtangle_electric_plug, 0, (x + xx) - wx - plugx, (y + xx) - wy, 2, 2, plugangle, c_white, plugalpha);
	draw_sprite_ext(spr_growtangle_electric_plug, 0, x + xx + wx + plugx, y + xx + wy, 2, 2, plugangle + 180, c_white, plugalpha);
}
draw_self();
