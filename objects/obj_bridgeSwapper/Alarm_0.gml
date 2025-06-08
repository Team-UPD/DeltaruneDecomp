if (swapped == 0)
{
	with (obj_bridgeSwappable)
	{
		if (bridgetarget == other.bridgetarget)
		{
			replace = instance_create(x, y, obj_soliddark);
			replace.sprite_index = sprite_index;
			replace.image_xscale = image_xscale;
			replace.image_yscale = image_yscale;
			replace.image_index = image_index;
			replace.bridgetarget = bridgetarget;
			replace.image_blend = other.c_nred;
			instance_destroy();
		}
	}
	with (obj_soliddark)
	{
		if (!is_undefined(bridgetarget))
		{
			if (bridgetarget == other.bridgetarget2)
			{
				replace2 = instance_create(x, y, obj_bridgeSwappable);
				replace2.sprite_index = sprite_index;
				replace2.image_xscale = image_xscale;
				replace2.image_yscale = image_yscale;
				replace2.image_index = image_index;
				replace2.bridgetarget = other.bridgetarget2;
				replace2.image_blend = other.c_nred;
				instance_destroy();
			}
		}
	}
	if (extflag == "swatchlingRescue")
	{
		extflag = "triggered";
		if (instance_exists(obj_controller_dw_mansion_bridges_funny))
			obj_controller_dw_mansion_bridges_funny.saved = true;
	}
	swapped = 1;
}
else
{
	with (obj_bridgeSwappable)
	{
		if (bridgetarget == other.bridgetarget2)
		{
			replace = instance_create(x, y, obj_soliddark);
			replace.sprite_index = sprite_index;
			replace.image_index = image_index;
			replace.image_xscale = image_xscale;
			replace.image_yscale = image_yscale;
			replace.bridgetarget = bridgetarget;
			replace.image_blend = other.c_nblue;
			instance_destroy();
		}
	}
	with (obj_soliddark)
	{
		if (!is_undefined(bridgetarget))
		{
			if (bridgetarget == other.bridgetarget)
			{
				replace2 = instance_create(x, y, obj_bridgeSwappable);
				replace2.sprite_index = sprite_index;
				replace2.image_index = image_index;
				replace2.image_xscale = image_xscale;
				replace2.image_yscale = image_yscale;
				replace2.bridgetarget = other.bridgetarget;
				replace2.image_blend = other.c_nblue;
				instance_destroy();
			}
		}
	}
	swapped = 0;
}
image_index = swapped;
var housecolor = c_white;
if (image_index == 0)
	housecolor = c_red;
if (image_index == 1)
	housecolor = c_blue;
if (dontskip == 1)
	scr_fx_housesquare(x + (sprite_width / 2), y + (sprite_height / 2), housecolor);
