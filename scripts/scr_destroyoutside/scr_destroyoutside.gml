function scr_destroyoutside()
{
	if (global.mnfight != 2)
		instance_destroy();
	if (x < (__view_get(e__VW.XView, 0) - sprite_width))
		instance_destroy();
	if (x > (__view_get(e__VW.XView, 0) + 640 + sprite_width))
		instance_destroy();
	if (y < (__view_get(e__VW.YView, 0) - sprite_height))
		instance_destroy();
	if (y > (__view_get(e__VW.YView, 0) + 480 + sprite_height))
		instance_destroy();
}
