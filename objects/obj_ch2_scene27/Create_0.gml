con = -1;
customcon = 0;
if (global.chapter != 2 || global.plot >= 171)
{
	instance_destroy();
}
else
{
	scr_tempsave();
	scr_losechar();
	if (instance_exists(obj_caterpillarchara))
		instance_destroy(obj_caterpillarchara);
	blackall = scr_marker(-10, -10, spr_pixel_white);
	blackall.image_xscale = 999;
	blackall.image_yscale = 999;
	blackall.depth = 100;
	blackall.image_blend = c_white;
	pacifist_talk = 0;
	npc_ralsei = instance_create(174, 208, obj_npc_sign);
	npc_ralsei.sprite_index = spr_ralsei_walk_down;
	npc_ralsei.visible = 0;
	npc_susie = instance_create(234, 204, obj_npc_sign);
	npc_susie.sprite_index = spr_susie_down_dw;
	npc_susie.visible = 0;
	npc_noelle = instance_create(295, 200, obj_npc_sign);
	npc_noelle.sprite_index = spr_noelle_walk_down_dw;
	npc_noelle.visible = 0;
	npc_berdly = instance_create(353, 212, obj_npc_sign);
	npc_berdly.sprite_index = spr_cutscene_27_berdly_walk_down;
	npc_berdly.visible = 0;
	berdly_power_up_start = false;
	berdly_power_up = false;
	berdly_power_up_cancel = false;
	static_queen = false;
	static_queen_stop = false;
	shake_hand = false;
	queen_surprised = false;
	queen_laugh_start = false;
	queen_laugh_stop = false;
	queen_leave = false;
	hand_release = false;
	hand_leave = false;
	su_struggle = true;
	su_shocked = false;
	su_look_left = false;
	su_look_right = false;
	su_grin_1 = false;
	su_grin_2 = false;
	su_squint_1 = false;
	su_squint_2 = false;
	su_concerned = false;
	ra_struggle = true;
	ra_huh = false;
	ra_look = false;
	ra_smile = false;
	ra_scared = false;
	ra_stern = false;
	ra_mu = false;
	ra_shake = false;
	tender_goodbye = false;
	tender_cancel = false;
	tender_finish = false;
	noelle_qs = false;
	susie_qs = false;
	kris_qs = false;
	berdly_qs = false;
	set_queen_voice = 0;
	queen_happy = 0;
	queen_sad = 0;
	hide_border = false;
	show_border = false;
}
