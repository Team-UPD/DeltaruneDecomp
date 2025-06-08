for (var i = 0; i < 3; i++)
{
	var current_sprite = current_sprites[i];
	var resolution_factor = 1;
	if (ds_map_exists(global.firework_sprite_pixel_data, current_sprite))
		continue;
	var h_pixels = sprite_get_width(current_sprite) * resolution_factor;
	var v_pixels = sprite_get_height(current_sprite) * resolution_factor;
	var x_offset = sprite_get_xoffset(current_sprite) * resolution_factor;
	var y_offset = sprite_get_yoffset(current_sprite) * resolution_factor;
	var surf = surface_create(h_pixels, v_pixels);
	surface_set_target(surf);
	draw_clear_alpha(c_black, 0);
	draw_sprite_ext(current_sprite, 0, x_offset, y_offset, resolution_factor, resolution_factor, 0, c_white, 1);
	surface_reset_target();
	var pixels = 0;
	var pixelx = [];
	var pixely = [];
	var pixelrgb = [];
	var pixelalpha = [];
	for (var _x = 0; _x < h_pixels; _x++)
	{
		for (var _y = 0; _y < v_pixels; _y++)
		{
			var col = surface_getpixel_ext(surf, _x, _y);
			var _alpha = (col >> 24) & 255;
			if (_alpha == 0)
				continue;
			var _blue = (col >> 16) & 255;
			var _green = (col >> 8) & 255;
			var _red = col & 255;
			pixelrgb[pixels] = make_colour_rgb(_red, _green, _blue);
			pixelalpha[pixels] = _alpha;
			pixelx[pixels] = _x - x_offset;
			pixely[pixels] = _y - y_offset;
			pixels++;
		}
	}
	surface_free(surf);
	var width = h_pixels;
	var height = v_pixels;
	ds_map_add(global.firework_sprite_pixel_data, current_sprite, [pixels, pixelx, pixely, width, height, pixelrgb, pixelalpha]);
}
