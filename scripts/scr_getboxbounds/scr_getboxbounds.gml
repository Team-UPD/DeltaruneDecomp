function scr_getboxbounds()
{
	if (instance_exists(obj_growtangle))
	{
		minx = obj_growtangle.x - (obj_growtangle.sprite_width / 2);
		maxx = obj_growtangle.x + (obj_growtangle.sprite_width / 2);
		miny = obj_growtangle.y - (obj_growtangle.sprite_height / 2);
		maxy = obj_growtangle.y + (obj_growtangle.sprite_height / 2);
	}
	else
	{
		minx = 999;
		maxx = 999;
		miny = 999;
		maxy = 999;
	}
}
