con = -1;
customcon = 0;
queen_monitor_frame = scr_dark_marker(148, 50, spr_dw_mansion_monitor_frame);
with (queen_monitor_frame)
	scr_depth();
queen_monitor = instance_create(queen_monitor_frame.x + 175, queen_monitor_frame.y + 60, obj_queenmonitor);
queen_monitor.depth = queen_monitor_frame.depth + 100;
lever = instance_create(240, 290, obj_npc_sign);
lever.sprite_index = spr_dw_mansion_lever;
lever_timer = 0;
for (var i = 0; i < 4; i++)
{
	var frame = scr_dark_marker(queen_monitor.x + 500 + (700 * i), 50, spr_dw_mansion_monitor_frame);
	with (frame)
		scr_depth();
	monitor[i] = instance_create(frame.x + 175, frame.y + 60, obj_queenmonitor);
	monitor[i].depth = frame.depth + 100;
}
if (global.chapter != 2 || global.plot >= 150)
{
	instance_destroy();
}
else
{
	release_swan = false;
	swanboat_init_y = 0;
	swanboat = instance_create(320, cameray() + view_hport[0] + 300, obj_queencar);
	with (swanboat)
		scr_depth();
	ralsei_convo = 0;
	ralsei_talk_timer = 0;
	choice_text_timer = 0;
	swanboat_talk = true;
	queen_heckle = false;
	queen_heckle_con = 0;
	queen_heckle_index = 0;
	queen_heckle_timer = 0;
	queen_heckle_start = false;
	banana = instance_create(2580, 250, obj_queencar_pickup);
	banana.image_xscale = 2;
	banana.image_yscale = 2;
	banana.image_speed = 0.25;
	with (banana)
		scr_depth();
	got_banana = false;
	remove_collider = false;
	blackall = scr_marker(-10, -10, spr_pixel_white);
	blackall.image_xscale = 999;
	blackall.image_yscale = 999;
	blackall.depth = 700000;
	blackall.image_blend = c_black;
	blackall.image_alpha = 0;
	whiteall = scr_marker(-10, -10, spr_pixel_white);
	whiteall.image_xscale = 999;
	whiteall.image_yscale = 999;
	whiteall.depth = 0;
	whiteall.image_alpha = 0;
}
