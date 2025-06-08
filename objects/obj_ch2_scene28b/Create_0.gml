if (scr_sideb_get_phase() >= 2)
{
	berdly_npc = instance_create(166, 68, obj_npc_sign);
	berdly_npc.sprite_index = spr_cutscene_28b_berdly_desk_sleep;
	with (obj_caterpillarchara)
		visible = false;
}
con = -1;
customcon = 0;
su_actor = -1;
show_border = false;
if (global.chapter != 2 || global.plot > 200)
{
	instance_destroy();
}
else
{
	con = 1;
	if (instance_exists(obj_bg_givedepth))
	{
		with (obj_bg_givedepth)
			instance_destroy();
	}
	layer_set_visible("GIVE_DEPTH", false);
	whiteall = scr_marker(-10, -10, spr_pixel_white);
	whiteall.image_xscale = 999;
	whiteall.image_yscale = 999;
	whiteall.depth = 100;
	blackall = scr_dark_marker(-10, -10, spr_pixel_white);
	blackall.image_xscale = 999;
	blackall.image_yscale = 999;
	blackall.depth = 100;
	blackall.image_blend = c_black;
	blackall.image_alpha = 0;
	desk_marker = scr_marker(152, 96, spr_lw_computer_lab_desk_right);
	desk_marker.depthcancel = 1;
	desk_marker.depth = whiteall.depth + 100;
	standing = 0;
	kris_leave = false;
	susie_mad = false;
	susie_mad_timer = 0;
}
