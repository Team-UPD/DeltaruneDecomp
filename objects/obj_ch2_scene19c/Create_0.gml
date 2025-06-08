con = -1;
customcon = 0;
exitcollider = -1;
if (global.chapter != 2 || global.plot >= 115)
{
	instance_destroy();
}
else
{
	nisesusie = instance_create(35, 200, obj_npc_sign);
	nisesusie.sprite_index = spr_cutscene_18_susie_lancer_carry_walk_right;
	nisesusie.image_speed = 0;
	nisesusie.visible = 0;
	niseberdly = instance_create(555, 216, obj_npc_sign);
	niseberdly.sprite_index = spr_berdly_walk_left_dw;
	niseberdly.image_speed = 0;
	niseberdly.visible = 0;
	exitcollider = instance_create(575, 240, obj_soliddark);
	exitcollider.image_xscale = 2;
	exitcollider.image_yscale = 2;
	blackall = scr_dark_marker(-10, -10, spr_pixel_white);
	blackall.image_xscale = 999;
	blackall.image_yscale = 999;
	blackall.depth = 100;
	blackall.image_blend = c_black;
	blackall.image_alpha = 0;
	berdlyoutline = scr_dark_marker(323, 190, spr_cutscene_19c_berdly_outline);
	berdlyoutline.depth = blackall.depth - 10;
	berdlyoutline.image_alpha = 0;
	berdly_crown = scr_dark_marker(302, -20, spr_cutscene_19c_crown);
	berdly_crown.depth = berdlyoutline.depth - 10;
	berdly_crown.image_alpha = 0;
	noelleoutline = scr_dark_marker(200, 189, spr_cutscene_19c_noelle_outline);
	noelleoutline.depth = blackall.depth - 10;
	noelleoutline.image_alpha = 0;
	noelleoutline.image_speed = 0;
	noelleoutline.image_index = 0;
	noelle_lose = false;
	sb_controller = instance_create(camerax(), cameray(), obj_ch2_scene19c_spelling_bee);
	sb_crowd_show = false;
	sb_crowd_hide = false;
	sb_crowd_siner = random(400);
	sb_crowd = scr_dark_marker(0, 0, spr_cutscene_19c_crowd);
	with (sb_crowd)
	{
		image_alpha = 0;
		depth = 20;
	}
	berdly_applause_start = false;
	berdly_applause_stop = false;
}
