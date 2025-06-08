con = -1;
customcon = 0;
pillow = false;
fadebg = false;
removefg = false;
debug_skip = false;
hide_border = false;
if (global.chapter != 2 || global.plot < 211)
{
	instance_destroy();
}
else
{
	scr_losechar();
	if (instance_exists(obj_caterpillarchara))
		instance_destroy(obj_caterpillarchara);
	if (!audio_is_playing(global.currentsong[1]))
	{
		global.currentsong[0] = snd_init("home.ogg");
		global.currentsong[1] = mus_loop(global.currentsong[0]);
	}
	blackall = scr_marker(-10, -10, spr_pixel_white);
	blackall.image_xscale = 999;
	blackall.image_yscale = 999;
	blackall.depth = 100;
	blackall.image_blend = c_black;
	bg = scr_marker(0, 0, spr_cutscene_32_bg_windows_dark);
	bg.depth = 9000000;
	bgdim = scr_marker(0, 0, spr_cutscene_32_bg_room_dim);
	bgdim.depth = 6000000;
	bgdim.image_alpha = 0;
	bgdark = scr_marker(0, 0, spr_cutscene_32_bg_room_dark);
	bgdark.depth = 5000000;
	bgdark.image_alpha = 0;
	disable_face = false;
	enable_face = false;
	footsteps = false;
	footsteps_volume = 1;
	susie_snore = 0;
	end_game = false;
	return_title = false;
	show_door_open = false;
	credits_timer = 0;
	fade_out_deep = false;
	with (obj_npc_room)
		instance_destroy();
}
