__view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0) + panx);
__view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0) + pany);
pantimer += 1;
if (pantimer >= panmax)
	instance_destroy();
