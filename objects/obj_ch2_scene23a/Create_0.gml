con = -1;
customcon = 0;
if (global.flag[40] == 0)
{
	var total_recruits = global.flag[630] + global.flag[631] + global.flag[632] + global.flag[633] + global.flag[634] + global.flag[635] + global.flag[636];
	if (total_recruits < 7)
	{
		var trashy_npc = instance_create(1210, 310, obj_npc_room_animated);
		with (trashy_npc)
		{
			sprite_index = spr_npc_trashy;
			scr_depth();
		}
	}
}
if (global.chapter != 2 || global.flag[319] > 0 || global.plot >= 160)
{
	instance_destroy();
}
else
{
	global.interact = 0;
	blackall = scr_dark_marker(-10, -10, spr_pixel_white);
	blackall.image_xscale = 999;
	blackall.image_yscale = 999;
	blackall.depth = 100;
	blackall.image_blend = c_black;
	blackall.image_alpha = 0;
}
