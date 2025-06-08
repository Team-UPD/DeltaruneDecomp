function draw_sprite_skew_ext_cute(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, arg10)
{
	var sprite = arg0;
	var index = arg1;
	var xx = arg2;
	var yy = arg3;
	var xscale = arg4;
	var yscale = arg5;
	var cosAngle = cos(degtorad(arg6));
	var sinAngle = sin(degtorad(arg6));
	var tint = arg7;
	var alpha = arg8;
	var hskew = arg9;
	var vskew = arg10;
	var sprTex = sprite_get_texture(sprite, index);
	var sprWidth = sprite_get_width(sprite);
	var sprHeight = sprite_get_height(sprite);
	var sprXOrig = sprite_get_xoffset(sprite);
	var sprYOrig = sprite_get_yoffset(sprite);
	var _nn = 0;
	draw_primitive_begin_texture(pr_trianglestrip, sprTex);
	var tempX = ((-sprXOrig + ((sprYOrig / sprHeight) * _nn)) * xscale) + hskew;
	var tempY = ((-sprYOrig + ((sprXOrig / sprWidth) * -_nn)) * yscale) + vskew;
	draw_vertex_texture_color((xx + (tempX * cosAngle)) - (tempY * sinAngle), yy + (tempX * sinAngle) + (tempY * cosAngle), 0, 0, tint, alpha);
	tempX = (((sprWidth + ((sprYOrig / sprHeight) * _nn)) - sprXOrig) * xscale) - hskew;
	tempY = ((-sprYOrig + ((1 - (sprXOrig / sprWidth)) * _nn)) * yscale) - vskew;
	draw_vertex_texture_color((xx + (tempX * cosAngle)) - (tempY * sinAngle), yy + (tempX * sinAngle) + (tempY * cosAngle), 1, 0, tint, alpha);
	tempX = ((-sprXOrig + ((1 - (sprYOrig / sprHeight)) * -_nn)) * xscale) - hskew;
	tempY = (((sprHeight - sprYOrig) + ((sprXOrig / sprWidth) * -_nn)) * yscale) + vskew;
	draw_vertex_texture_color((xx + (tempX * cosAngle)) - (tempY * sinAngle), yy + (tempX * sinAngle) + (tempY * cosAngle), 0, 1, tint, alpha);
	tempX = (((sprWidth - sprXOrig) + ((1 - (sprYOrig / sprHeight)) * -_nn)) * xscale) + hskew;
	tempY = (((sprHeight - sprYOrig) + ((1 - (sprXOrig / sprWidth)) * _nn)) * yscale) - vskew;
	draw_vertex_texture_color((xx + (tempX * cosAngle)) - (tempY * sinAngle), yy + (tempX * sinAngle) + (tempY * cosAngle), 1, 1, tint, alpha);
	draw_primitive_end();
}
