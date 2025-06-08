if (global.plot < 140)
{
	if (con == -1 && swanboat.x >= 40)
		global.facing = 1;
	if (con == -1 && swanboat.x >= 136)
	{
		con = 1;
		global.interact = 1;
		swanboat.pause_x_move = true;
		swanboat.sprite_index = spr_swanboat_squish;
		snd_play(snd_squeaky);
		swanboat.con = 99;
		swanboat.active = 0;
		cutscene_master = scr_cutscene_make();
		scr_maincharacters_actors();
	}
	if (con == 1)
	{
		con = 2;
		c_wait(60);
		c_sel(kr);
		c_facing("l");
		c_speaker("ralsei");
		c_msgsetloc(0, "\\EL* H-huh? There's something blocking the way.../%", "obj_ch2_scene21_puzzle_entrance_slash_Step_0_gml_33_0");
		c_talk_wait();
		c_sel(kr);
		c_walk("u", 4, 16);
		c_delayfacing(17, "r");
		c_wait(8);
		c_sel(ra);
		c_walk_wait("r", 4, 8);
		c_walk_wait("u", 4, 6);
		c_facing("r");
		c_wait(5);
		c_speaker("ralsei");
		c_msgsetloc(0, "\\EJ* Maybe we can find some way to get rid of this...?/%", "obj_ch2_scene21_puzzle_entrance_slash_Step_0_gml_50_0");
		c_talk_wait();
		c_wait(15);
		c_actortokris();
		c_actortocaterpillar();
		c_terminatekillactors();
	}
	if (con == 2 && !i_ex(obj_cutscene_master))
	{
		con = 99;
		with (obj_mainchara)
			fun = 0;
		with (obj_caterpillarchara)
		{
			follow = 1;
			fun = 0;
		}
		global.interact = 0;
		global.facing = 0;
		bottom_collider = instance_create(200, 320, obj_soliddark);
		bottom_collider.visible = 0;
		bottom_collider.image_xscale = 6;
		var swan_interact = instance_create(swanboat.x + 50, swanboat.y + 80, obj_npc_sign);
		swan_interact.visible = 0;
		swan_interact.image_xscale = 4;
		global.plot = 140;
	}
}
else if (remove_collider)
{
	global.facing = 1;
	remove_collider = false;
	with (left_collider)
		instance_destroy();
	with (right_collider)
		instance_destroy();
}
