if (global.darkzone == 1)
{
	if (cutscene == 0 && !instance_exists(obj_shake))
	{
		wd = x - floor((__view_get(e__VW.WView, 0) / 2) - (initwd / 2));
		ht = y - floor((__view_get(e__VW.HView, 0) / 2) - (initht / 2));
		__view_set(e__VW.XView, 0, wd);
		__view_set(e__VW.YView, 0, ht);
		if (__view_get(e__VW.XView, 0) < 0)
			__view_set(e__VW.XView, 0, 0);
		if (__view_get(e__VW.XView, 0) > (room_width - __view_get(e__VW.WView, 0)))
			__view_set(e__VW.XView, 0, room_width - __view_get(e__VW.WView, 0));
		if (__view_get(e__VW.YView, 0) < 0)
			__view_set(e__VW.YView, 0, 0);
		if (__view_get(e__VW.YView, 0) > (room_height - __view_get(e__VW.HView, 0)))
			__view_set(e__VW.YView, 0, room_height - __view_get(e__VW.HView, 0));
	}
}
if (global.darkzone == 0 && global.plot >= 245)
{
	if (cutscene == 0 && !instance_exists(obj_shake))
	{
		__view_set(e__VW.Object, 0, -4);
		wd = (x - floor(__view_get(e__VW.WView, 0) / 2)) + 11;
		ht = (y - floor(__view_get(e__VW.HView, 0) / 2)) + 17;
		__view_set(e__VW.XView, 0, wd);
		__view_set(e__VW.YView, 0, ht);
		if (__view_get(e__VW.XView, 0) < 0)
			__view_set(e__VW.XView, 0, 0);
		if (__view_get(e__VW.XView, 0) > (room_width - __view_get(e__VW.WView, 0)))
			__view_set(e__VW.XView, 0, room_width - __view_get(e__VW.WView, 0));
		if (__view_get(e__VW.YView, 0) < 0)
			__view_set(e__VW.YView, 0, 0);
		if (__view_get(e__VW.YView, 0) > (room_height - __view_get(e__VW.HView, 0)))
			__view_set(e__VW.YView, 0, room_height - __view_get(e__VW.HView, 0));
	}
}
if (bg == 1)
{
	with (obj_backgrounderparent)
		event_user(0);
}
