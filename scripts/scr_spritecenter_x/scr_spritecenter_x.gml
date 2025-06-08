function scr_spritecenter_x(arg0)
{
	var _spriteCenterLen = point_distance(0, 0, arg0.sprite_width / 2, arg0.sprite_height);
	var _spriteCenterDir = point_direction(0, 0, arg0.sprite_width / 2, arg0.sprite_height);
	return arg0.x + lengthdir_x(_spriteCenterLen, _spriteCenterDir + arg0.image_angle);
}
