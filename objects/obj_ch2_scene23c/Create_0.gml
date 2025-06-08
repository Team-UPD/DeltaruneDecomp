con = -1;
customcon = 0;
if (global.chapter != 2 || global.flag[319] > 1)
{
	instance_destroy();
}
else
{
	scr_losechar();
	if (instance_exists(obj_caterpillarchara))
		instance_destroy(obj_caterpillarchara);
	with (obj_mainchara)
		visible = 0;
	blackall = scr_marker(-10, -10, spr_pixel_white);
	blackall.image_xscale = 999;
	blackall.image_yscale = 999;
	blackall.depth = 100;
	blackall.image_blend = c_black;
	blackall.image_alpha = 1;
	ferris_wheel = instance_create(-100, 180, obj_ferriswheel);
	with (ferris_wheel)
		scr_depth();
	layer_hspeed("BG_Ferris_Wheel_Loop", -0.3);
}
