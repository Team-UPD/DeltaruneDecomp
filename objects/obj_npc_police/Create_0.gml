if (global.flag[317] == 0)
{
	dogd = instance_create(186, 56, obj_npc_sign);
	dogd.sprite_index = spr_npc_prisoner_dog_eye;
	dogd.image_speed = 0;
	dogd.image_xscale = 1;
	dogd.image_yscale = 1;
	dogd.setdepth = 0;
	dogd.depth = 400000100;
	doge = instance_create(233, 59, obj_npc_sign);
	doge.sprite_index = spr_npc_prisoner_dog_lesser;
	doge.image_speed = 0;
	doge.image_xscale = 1;
	doge.image_yscale = 1;
	doge.setdepth = 0;
	doge.depth = 400000100;
	doga = scr_dark_marker(177, 40, spr_npc_prisoner_dog_m);
	doga.image_speed = 0;
	doga.image_xscale = 1;
	doga.image_yscale = 1;
	doga.depthcancel = 1;
	doga.depth = dogd.depth + 20;
	dogb = scr_dark_marker(202, 40, spr_npc_prisoner_dog_f);
	dogb.image_speed = 0;
	dogb.image_xscale = 1;
	dogb.image_yscale = 1;
	dogb.depth = dogd.depth + 20;
	dogb.depthcancel = 1;
	dogc = scr_dark_marker(211, 40, spr_npc_prisoner_dog_big);
	dogc.image_speed = 0;
	dogc.image_xscale = 1;
	dogc.image_yscale = 1;
	dogc.depthcancel = 1;
	dogc.depth = dogd.depth + 10;
	repeatalarm = false;
	pausetimer = 0;
	undyneinteract = instance_create(154, 143, obj_npc_sign);
	undyneinteract.visible = 0;
	undynesideinteract = instance_create(154, 120, obj_npc_sign);
	undynesideinteract.visible = 0;
	undynedesk = scr_marker(128, 97, spr_undyne_police_table);
	deskchairless = scr_marker(128, 97, spr_lw_police_table_broken_chairless);
	deskchairless.depthcancel = 1;
	deskchairless.depth = 98260;
	deskchairless.visible = 0;
	undynecollider = instance_create(129, 131, obj_solidblock);
	undynecollider.image_xscale = 3.5;
	undynecollider.image_yscale = 1.5;
	undyne = -1;
	keys = scr_marker(180, 135, spr_lw_police_keys_insert);
	keys.image_speed = 0;
	keys.image_index = 0;
	key_turn_timer = 0;
	boombox = scr_marker(75, 68, spr_lw_police_boombox);
	bars = scr_marker(177, 35, bg_lw_police_house_bars_closed);
	bars.depthcancel = 1;
	bars.depth = 500;
	con = -1;
	keycon = -1;
	kriscon = -1;
	napstablook = instance_create(92, 84, obj_npc_napstablook_cop);
	soundalarm = false;
	napstacon = 0;
	timer = 0;
	undyne_slam = false;
	undyne_slam_timer = 0;
	jail_collider = instance_create(179, 77, obj_soliddark);
	jail_collider.image_xscale = 2;
	jail_collider.image_yscale = 0.5;
}
else
{
	con = -1;
	keys = -1;
	keycon = -1;
	kriscon = -1;
	boombox = scr_marker(75, 68, spr_lw_police_boombox);
	bars = scr_marker(177, 35, bg_lw_police_house_bars_open);
	with (bars)
	{
		auto_depth = 0;
		depthcancel = 0;
		depth = 0;
	}
	bars_bottom = scr_marker(177, 35, bg_lw_police_house_bars_open_bottom);
	with (bars_bottom)
		depth = 100000;
	jail_collider_bottom = instance_create(180, 98, obj_solidblock);
	jail_collider_bottom.image_xscale = 2;
	jail_collider_bottom.image_yscale = 0.35;
	jail_collider_side = instance_create(255, 98, obj_solidblock);
	jail_collider_side.image_xscale = 1;
	jail_collider_side.image_yscale = 0.35;
	doorcollider = instance_create(223, 95, obj_solidblock);
	doorcollider.image_xscale = 0.35;
	doorcollider.image_yscale = 0.95;
	undynedesk = instance_create(128, 97, obj_solidblock);
	undynedesk.sprite_index = spr_lw_police_table_broken;
	undynedesk.visible = true;
	with (undynedesk)
		scr_depth();
	napstablook = instance_create(92, 84, obj_npc_napstablook_cop);
	soundalarm = global.flag[317] == 2;
	napstacon = (global.flag[317] == 2) ? 0 : -1;
	if (soundalarm)
	{
		with (obj_doorAny)
			doorFadeMusic = 1;
		snd_free_all();
		alarm[1] = 1;
	}
	undyne_slam = false;
	undyne_slam_timer = 0;
}
