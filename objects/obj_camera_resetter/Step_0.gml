if (timertarg == 0 || timertarg == 1)
{
	with (obj_mainchara)
		cutscene = 1;
	safe_delete(obj_camera_advanced);
	safe_delete(obj_camera_area);
	scr_pan_to_obj(obj_mainchara, 20);
}
if (timer == 0)
{
	with (obj_mainchara)
		cutscene = 1;
	safe_delete(obj_camera_advanced);
	safe_delete(obj_camera_area);
	scr_pan_to_obj(obj_mainchara, timertarg);
}
timer++;
if (timer >= (timertarg + 1))
{
	with (obj_mainchara)
		cutscene = 0;
	instance_destroy();
}
