con = -1;
customcon = 0;
if (global.chapter != 2)
{
	instance_destroy();
}
else if (global.plot < 150)
{
	layer_set_visible("TILES_Mansion_Hide_1", false);
	layer_set_visible("TILES_Mansion_Hide_2", false);
	if (!snd_is_playing(global.currentsong[1]))
	{
		global.currentsong[0] = snd_init("acid_tunnel.ogg");
		global.currentsong[1] = mus_loop(global.currentsong[0]);
	}
	instance_deactivate_object(obj_doorB);
	obj_mainchara.x = -100;
	scr_losechar();
	if (instance_exists(obj_caterpillarchara))
		instance_destroy(obj_caterpillarchara);
	scr_getchar(3);
	scr_makecaterpillar(-100, obj_mainchara.y, 3, 0);
	global.facing = 1;
	swanboat = instance_create(-200, 140, obj_queencar);
	with (swanboat)
		scr_depth();
	swanboat.con = 1;
	swanboat.pause_y_move = true;
	swanboat.pause_auto_talk = true;
	actor_shadow = 0;
	inside_tunnel = true;
	swan_shadow = scr_dark_marker(-200, swanboat.y, spr_swanboat_shadow);
	swan_shadow.image_speed = swanboat.image_speed;
	swan_shadow.image_alpha = 0.5;
	adjust_actors = true;
	remove_shadow = false;
	camera = scr_dark_marker(1794, 60, spr_dw_mansion_camera);
	with (camera)
		scr_depth();
	ralsei_convo = 0;
	ralsei_talk_timer = 0;
	choice_text_timer = 0;
	loopacid = false;
	shiftacid = false;
	shift_islands = false;
	shift_islands_timer = 0;
	arrive_timer = 0;
	remove_island_obj = false;
	set_flags_complete = false;
	rouxls_island = false;
	release_rouxls = false;
	rouxls_appear = -1;
	rouxls_appear_timer = 0;
	rouxls_power_up = false;
	rouxls_power_up_cancel = false;
	rouxls_talk_timer = 0;
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
	duckmode = global.flag[220] == 3 && global.flag[221] == 3 && global.flag[222] == 3;
	take_photo = false;
	photocon = 0;
	leave_timer = 0;
	remove_collider = false;
	explosion = false;
	explodetimer = 0;
	finish_thrash = false;
	simtown_xpos = 760;
	swan_swap = 0;
	swan_depth = 0;
	tile1 = instance_create(simtown_xpos + 160, cameray() + 80, obj_simtown_landmaker);
	tile1.image_xscale = 8;
	tile2 = instance_create(simtown_xpos + 160, cameray() + 120, obj_simtown_landmaker);
	tile2.image_xscale = 8;
	tile3 = instance_create(simtown_xpos + 240, cameray() + 160, obj_simtown_landmaker);
	tile3.image_xscale = 3;
	tile4 = instance_create(simtown_xpos + 280, cameray() + 200, obj_simtown_landmaker);
	tile4.image_xscale = 3;
	tile5 = instance_create(simtown_xpos + 160, cameray() + 240, obj_simtown_landmaker);
	tile5.image_xscale = 8;
	tile6 = instance_create(simtown_xpos + 160, cameray() + 280, obj_simtown_landmaker);
	tile6.image_xscale = 8;
	with (obj_simtown_landmaker)
		visible = 0;
	simcity = instance_create(simtown_xpos, 0, obj_rouxls_simtown);
}
else
{
	rouxls_talk_timer = 0;
	swanboat = instance_create(2525, 190, obj_npc_room_animated);
	swanboat.sprite_index = spr_swanboat;
	swanboat.image_speed = 0.15;
	with (swanboat)
		scr_depth();
	if (scr_havechar(2) && global.flag[325] != 4)
	{
		npc = instance_create(3060, 122, obj_npc_butler);
		with (npc)
		{
			scr_depth();
			current_pal = green;
		}
	}
	var collider_right = instance_create(2670, 198, obj_solidblock);
	collider_right.image_yscale = 10;
}
