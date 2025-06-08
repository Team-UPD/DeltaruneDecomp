function scr_spritecenter_y(arg0)
{
	var _spriteCenterLen = point_distance(0, 0, arg0.sprite_width / 2, arg0.sprite_height);
	var _spriteCenterDir = point_direction(0, 0, arg0.sprite_width / 2, arg0.sprite_height);
	return arg0.y + lengthdir_y(_spriteCenterLen, _spriteCenterDir + arg0.image_angle);
}
