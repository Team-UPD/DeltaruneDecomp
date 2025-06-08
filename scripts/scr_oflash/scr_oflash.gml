function scr_oflash()
{
	_oflash = instance_create(x, y, obj_oflash);
	_oflash.image_xscale = image_xscale;
	_oflash.image_speed = 0;
	_oflash.image_index = image_index;
	_oflash.image_yscale = image_yscale;
	if (global.chapter == 2 && object_index == obj_mauswheel_enemy)
		_oflash.sprite_index = spr_mauswheel_idle;
	else
		_oflash.sprite_index = sprite_index;
	_oflash.depth = depth - 1;
	_oflash.target = id;
	return _oflash;
}
