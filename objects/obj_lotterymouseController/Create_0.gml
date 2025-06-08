victory = 0;
if (global.flag[378] == 1 && global.flag[377] == 1)
{
	with (obj_bridgeSwapper)
		inert = 1;
	with (obj_lotteryMouseTrigger)
		inert = 1;
	with (obj_camera_area)
		instance_destroy();
	var hints = instance_create(x, y, obj_mouseLotteryCompleteHint);
	with (hints)
		scr_depth();
	instance_destroy();
}
