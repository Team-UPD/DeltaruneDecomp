suppress = 1;
con = 0;
if (global.flag[397] == 0)
{
	knockout = instance_create(480, 80, obj_marker);
	knockout.sprite_index = spr_room_dw_mansion_fire_paintings_fakewall;
	knockout.image_xscale = 2;
	knockout.image_yscale = 2;
	knockout.image_blend = c_black;
	knockout.depth = obj_mainchara.depth + 800 + 40;
	queen_wall = instance_create(480, 80, obj_marker);
	queen_wall.sprite_index = spr_room_dw_mansion_fire_paintings_fakewall;
	queen_wall.image_xscale = 2;
	queen_wall.image_yscale = 2;
	queen_wall.depth = obj_mainchara.depth + 800;
	queen_monitor_frame = instance_create(480, 180, obj_marker);
	queen_monitor_frame.sprite_index = spr_dw_mansion_monitor_frame_centerAnchor;
	queen_monitor_frame.image_xscale = 2;
	queen_monitor_frame.image_yscale = 2;
	queen_monitor_frame.depth = queen_wall.depth - 10;
	queen_monitor = instance_create(queen_monitor_frame.x, queen_monitor_frame.y, obj_queenmonitor);
	queen_monitor.depth = queen_wall.depth - 5;
}
else
{
	con = 999;
	suppress = 0;
	bularea = instance_create(120, 280, obj_overworld_bulletarea);
	bularea.image_xscale = 18;
	bularea.image_yscale = 2;
	with (obj_queenart_mona)
		active = 1;
}
