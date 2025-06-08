gpu_set_blendmode(bm_add);
for (var i = 0; i < pixels; i++)
{
	var _x = lerp(0, mypixelx[i], pixelexpand_h[i]);
	var _y = lerp(0, mypixely[i], pixelexpand_v[i]);
	var _spr, _img;
	if (!pixelspritechangealarm[i])
	{
		_spr = spr_firework_shine;
		_img = (i + (0.3 * time)) % 4;
		scalebonus = 1;
	}
	else
	{
		_spr = spr_firework_ptc2;
		_img = 0;
		scalebonus = 0;
	}
	var _col = merge_color(c_white, pixelrgb[i], min(time / 30, 1));
	draw_sprite_ext(_spr, _img, x + _x, y + _y, pixelscale[i] + scalebonus, pixelscale[i] + scalebonus, 0, _col, pixelalpha[i]);
}
gpu_set_blendmode(bm_normal);
