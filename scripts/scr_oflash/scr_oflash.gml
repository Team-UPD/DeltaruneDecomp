function scr_oflash()
{
	_oflash = instance_create(x, y, obj_oflash);
	_oflash.image_xscale = image_xscale;
	_oflash.image_speed = 0;
	_oflash.image_index = image_index;
	_oflash.image_yscale = image_yscale;
	_oflash.sprite_index = sprite_index;
	_oflash.depth = depth - 1;
	_oflash.target = id;
	return _oflash;
}
