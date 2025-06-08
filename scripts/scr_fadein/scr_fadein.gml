function scr_fadein(arg0)
{
	__fadeouter = instance_create(0, 0, obj_fadein);
	__fadeouter.fadespeed = -1 / arg0;
	__fadeouter.depth = 3;
	return __fadeouter;
}
