if (!ds_map_exists(global.firework_sprite_pixel_data, sprite_index))
{
	with (obj_fireworks_manager)
	{
		current_sprites[0] = other.sprite_index;
		event_user(0);
	}
}
var _data = ds_map_find_value(global.firework_sprite_pixel_data, sprite_index);
pixels = _data[0];
mypixelx = _data[1];
mypixely = _data[2];
width = _data[3];
height = _data[4];
pixelrgb = _data[5];
pixelalpha = _data[6];
for (var i = 0; i < pixels; i++)
{
	mypixelx[i] = mypixelx[i] * scale;
	mypixely[i] = mypixely[i] * scale;
	mypixelx[i] *= 1 - lengthdir_x((perspective_z * 0.5) + (mypixely[i] / height), 90 - angle_z);
	mypixely[i] *= 1 - (angle_z / 90);
	pixelexpandprog[i] = 0;
	pixelexpand_v[i] = 0;
	pixelexpand_h[i] = 0;
	pixelvsp[i] = -0.8;
	pixelgravoffset[i] = random(0.02);
	pixelvspmaxoffset[i] = 1 + random(1);
	pixelscale[i] = 1;
	pixelspritechangealarm[i] = 20 + random(20);
	pixelalpha[i] = random_range(0.5, 1);
	pixelexpandspd[i] = random_range(0.04, 0.06);
	switch (colorProfile)
	{
		case (2 << 0):
			var _perc = (mypixely[i] + (0.5 * height)) / (2 * height);
			pixelrgb[i] = make_colour_hsv(255 * _perc, 100, 255);
			break;
		case (0 << 0):
			break;
		case (1 << 0):
			pixelrgb[i] = image_blend;
			break;
		default:
			break;
	}
}
