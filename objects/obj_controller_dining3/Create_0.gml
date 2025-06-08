key = 0;
basex = 0;
basey = 0;
moveloc = 0;
weird = false;
layer_set_visible("TILES_Doorway", 0);
layer_set_visible("TILES_BlockedEntrance", 0);
queen_monitor_frame = scr_dark_marker(146, 40, spr_dw_mansion_monitor_frame);
with (queen_monitor_frame)
	scr_depth();
queen_monitor = instance_create(queen_monitor_frame.x + 175, queen_monitor_frame.y + 60, obj_queenmonitor);
queen_monitor.depth = queen_monitor_frame.depth + 100;
queen_monitor_frame2 = scr_dark_marker(780, 40, spr_dw_mansion_monitor_frame);
with (queen_monitor_frame2)
	scr_depth();
queen_monitor2 = instance_create(queen_monitor_frame2.x + 175, queen_monitor_frame2.y + 60, obj_queenmonitor);
queen_monitor2.depth = queen_monitor_frame2.depth + 100;
blocker = instance_create(560, 120, obj_solidblocksized);
blocker.image_xscale = 4;
con = 0;
timer = 0;
checkCount = 0;
attempt = 0;
dogSpawned = 0;
dogcon = 0;
dogtabletargx = 0;
dogtabletargy = 0;
key = 0;
sparkletimer = 0;
shard = 0;
if (!(global.flag[915] >= 8 && global.flag[916] == 0))
{
	for (var i = 0; i < 7; i++)
	{
		for (var ii = 0; ii < 5; ii++)
		{
			if (!(ii == 0 && i == 2) && !(ii == 0 && i == 3) && !(ii == 0 && i == 4))
				shade = instance_create(109 + (i * 160), 240 + (ii * 240) + 44, obj_marker);
			shade.sprite_index = spr_saucershadow;
			shade.image_alpha = 0.25;
			shade.image_xscale = 2;
			shade.image_yscale = 2;
			shade.depth = 890000;
		}
	}
	for (var i = 0; i < 6; i++)
	{
		for (var ii = 0; ii < 4; ii++)
		{
			shade = instance_create(189 + (i * 160), 360 + (ii * 240) + 44, obj_marker);
			shade.sprite_index = spr_saucershadow;
			shade.image_alpha = 0.25;
			shade.image_xscale = 2;
			shade.image_yscale = 2;
			shade.depth = 890000;
		}
	}
}
if (global.flag[381] == 1)
{
	con = 28980;
	dogcon = 28980;
	timer = 0;
	layer_set_visible("TILES_Doorway", 1);
	topLoc = instance_create(560, 120, obj_doorW);
	topLoc.extflag = "top";
	topLoc.image_xscale = 8;
	with (obj_readable_room1)
	{
		if (extflag == "event")
			instance_destroy();
	}
}
