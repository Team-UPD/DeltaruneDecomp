con = 0;
drawtimer = 0;
visible = true;
queen_monitor_frame = scr_dark_marker(142, 80, spr_dw_mansion_monitor_frame);
with (queen_monitor_frame)
	scr_depth();
queen_monitor = instance_create(queen_monitor_frame.x + 175, queen_monitor_frame.y + 60, obj_queenmonitor);
queen_monitor.depth = queen_monitor_frame.depth + 100;
depth = queen_monitor.depth - 10;
if (global.flag[400] == 0)
	con = 0;
if (global.flag[400] == 1)
	con = 3;
if (global.flag[400] == 2)
{
	con = 5;
	with (obj_queenvase)
	{
		brokenpot = scr_dark_marker(x, y, sprite_index);
		brokenpot.image_index = 1;
		brokenpot.depth = 800000;
		instance_destroy();
	}
	if (global.flag[540] == 6)
	{
		enemy1 = instance_create(-146, 200, obj_chaseenemy);
		with (enemy1)
		{
			myencounter = 64;
			sprite_index = spr_npc_swatchling_sweep;
			touchsprite = spr_swatchling_hurt;
			radius = 10000;
			ignoresolid = 1;
			alertcon = 0;
			alertskip = 1;
			eraser = 1;
			facing = 1;
			chasetype = 7;
		}
	}
}
