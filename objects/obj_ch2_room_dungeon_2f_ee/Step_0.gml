if (con == -1)
{
	con = 1;
	global.interact = 1;
	global.facing = 1;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	with (obj_npc_king)
		visible = 0;
	qu = actor_count + 2;
	qu_actor = instance_create(camerax() - 100, 182, obj_actor);
	scr_actor_setup(qu, qu_actor, "queen");
	qu_actor.sprite_index = spr_queen_walk_left;
	ki = actor_count + 3;
	ki_actor = instance_create(obj_npc_king.x, obj_npc_king.y, obj_actor);
	scr_actor_setup(ki, ki_actor, "rouxls");
	ki_actor.sprite_index = obj_npc_king.sprite_index;
	ki_actor.depth = 500100;
	c_sel(ki);
	c_autowalk(0);
	c_autodepth(0);
	c_depth(500100);
	ro = actor_count + 4;
	ro_actor = instance_create(camerax() - 100, 182, obj_actor);
	scr_actor_setup(ro, ro_actor, "rouxls");
	ro_actor.sprite_index = spr_rurus_idle;
	c_sel(ro);
	c_autowalk(0);
}
if (con == 1)
{
	con = 49;
	alarm[0] = 30;
	c_sel(ra);
	c_walkdirect(1150, 210, 15);
	c_delayfacing(16, "u");
	c_sel(su);
	c_walkdirect(1190, 204, 15);
	c_delayfacing(16, "u");
	c_sel(kr);
	c_walkdirect(1238, 220, 15);
	c_delayfacing(16, "u");
	c_wait(16);
	c_speaker("king");
	c_msgsetloc(0, "\\E0* You may have bested me. But.../", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_59_0");
	c_msgnextloc("\\E7* You'll soon face someone..^1. More fearsome.../", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_60_0");
	c_msgnextloc("\\E4* More tyrannical than you could EVER imagine./", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_61_0");
	c_facenext("susie", 1);
	c_msgnextloc("\\E1* Queen? We already met her./%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_63_0");
	c_talk_wait();
	c_sel(ki);
	c_sprite(spr_king_sulk_left);
	c_speaker("king");
	c_msgsetloc(0, "\\E6* WHAT!?/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_71_0");
	c_talk_wait();
	c_sel(kr);
	c_facing("l");
	c_sel(su);
	c_facing("l");
	c_sel(ra);
	c_facing("l");
	c_sel(qu);
	c_walkdirect_wait(1020, 182, 20);
	c_facing("u");
	c_wait(30);
	c_speaker("queen");
	c_msgsetloc(0, "\\E1* Wow Nice Hamster Wheel/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_96_0");
	c_talk_wait();
	c_sel(ki);
	c_sprite(spr_king_sulk);
	c_speaker("king");
	c_msgsetloc(0, "\\E5* So you^1, too^1, have come to humiliate me.../", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_104_0");
	c_facenext("queen", 24);
	c_msgnextloc("\\EO* No I Am Serious It's Cool/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_106_0");
	c_talk_wait();
	c_wait(10);
	c_sel(qu);
	c_walkdirect(1263, 182, 25);
	c_wait(8);
	c_sel(kr);
	c_autowalk(0);
	c_walk("r", 15, 15);
	c_sel(su);
	c_autowalk(0);
	c_walk("r", 15, 15);
	c_sel(ra);
	c_autowalk(0);
	c_walk("r", 15, 15);
	c_wait(50);
	c_sel(qu);
	c_autowalk(0);
	c_sprite(spr_cutscene_10_queen_ohoho_standing);
	c_imageindex(0);
	c_imagespeed(0.25);
	c_speaker("queen");
	c_msgsetloc(0, "\\EB* That Water Bottle However/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_137_0");
	c_talk_wait();
	c_sel(ki);
	c_sprite(spr_king_sulk_drink);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_var_instance(id, "king_drink", true);
	c_speaker("king");
	c_msgsetloc(0, "\\EA* DO NOT SPEAK ILL OF THE ROYAL WATER BOTTLE!/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_150_0");
	c_talk_wait();
	c_var_instance(id, "king_drink", false);
	c_sel(qu);
	c_sprite(spr_queen_wine_left);
	c_sel(ki);
	c_sprite(spr_king_sulk_left);
	c_speaker("queen");
	c_msgsetloc(0, "\\EO* It's Nothing Compared To The One At My Mansion/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_163_0");
	c_talk_wait();
	c_sel(ki);
	c_sprite(spr_king_sulk);
	c_speaker("king");
	c_msgsetloc(0, "\\E5* Hmph. Materialistic as always./%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_171_0");
	c_talk_wait();
	c_sel(qu);
	c_autowalk(1);
	c_facing("u");
	c_speaker("queen");
	c_msgsetloc(0, "\\E0* Materialism Evaluation Denied/", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_180_0");
	c_msgnextloc("\\EC* I Simply Give Myself: The Treatment I Deserve/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_181_0");
	c_talk_wait();
	c_autowalk(0);
	c_sprite(spr_cutscene_10_queen_ohoho_standing);
	c_imageindex(0);
	c_imagespeed(0.25);
	c_speaker("queen");
	c_msgsetloc(0, "\\ED* You Slept Curled Up On A Dirty Throne Every Day/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_191_0");
	c_talk_wait();
	c_sel(ki);
	c_sprite(spr_king_sulk_drink_left);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_shake();
	c_sel(qu);
	c_imagespeed(0);
	c_speaker("king");
	c_msgsetloc(0, "\\EA* ENOUGH^1, WENCH!!!/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_206_0");
	c_talk_wait();
	c_sel(ki);
	c_sprite(spr_king_sulk_left);
	c_wait(30);
	c_sel(ki);
	c_sprite(spr_king_sulk);
	c_sel(qu);
	c_autowalk(1);
	c_facing("u");
	c_speaker("king");
	c_msgsetloc(0, "\\EB* What purpose have you here... Queenie Beanie./", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_224_0");
	c_facenext("queen", 13);
	c_msgnextloc("\\ED* Just Thought I Would Send A Message^1, Kingy Wingy/", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_226_0");
	c_msgnextloc("\\E0* That You Don't Have To Worry About Lancer/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_227_0");
	c_talk_wait();
	c_sel(qu);
	c_walkdirect_wait(1305, 182, 15);
	c_speaker("queen");
	c_msgsetloc(0, "\\E1* I Will Be Looking After Him From Now On/", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_235_0");
	c_msgnextloc("\\E5* After All..^1. I Am.../%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_236_0");
	c_talk_wait();
	c_sel(qu);
	c_facing("d");
	c_speaker("queen");
	c_msgsetloc(0, "\\E0* His Mother/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_244_0");
	c_talk_wait();
	c_sel(ki);
	c_shakeobj();
	c_sprite(spr_king_sulk_drink_left);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_speaker("king");
	c_msgsetloc(0, "\\E9* When was that decided!?/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_255_0");
	c_talk_wait();
	c_sel(qu);
	c_facing("l");
	c_speaker("queen");
	c_msgsetloc(0, "\\ED* Arbitrarily Right Now/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_263_0");
	c_talk_wait();
	c_sel(ki);
	c_sprite(spr_king_sulk);
	c_speaker("king");
	c_msgsetloc(0, "\\E5* ...^1. hmph./", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_271_0");
	c_msgnextloc("\\E5* Do what you please with the boy./", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_272_0");
	c_msgnextloc("\\E5* But if he cries.../", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_273_0");
	c_msgnextloc("\\E8* ..^1. Bounce him on the ground like a ball./%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_274_0");
	c_talk_wait();
	c_wait(30);
	c_sel(qu);
	c_facing("d");
	c_speaker("queen");
	c_msgsetloc(0, "\\ED* I Think It Is Time To Abort This Conversation/", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_285_0");
	c_facenext("king", "B");
	c_msgnextloc("\\EB* ..^1. As you wish./%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_287_0");
	c_talk_wait();
	c_sel(ro);
	c_walkdirect_wait(1118, ro_actor.y, 15);
	c_speaker("rouxls");
	c_msgsetloc(0, "\\E0* Oho^1, quite sorry^1, mine Kinge.../", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_295_0");
	c_msgnextloc("\\E3* Queene hath a nyew Man about Towne now!!/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_296_0");
	c_talk_wait();
	c_wait(30);
	c_speaker("king");
	c_msgsetloc(0, "\\E5* Who?/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_303_0");
	c_talk_wait();
	c_sel(qu);
	c_autowalk(1);
	c_facing("l");
	c_speaker("queen");
	c_msgsetloc(0, "\\EI* Yeah Who/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_311_0");
	c_talk_wait();
	c_wait(30);
	c_speaker("rouxls");
	c_msgsetloc(0, "\\E6* Er/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_320_0");
	c_talk_wait();
	c_sel(ro);
	c_walk_wait("l", 5, 5);
	c_speaker("rouxls");
	c_msgsetloc(0, "\\E1* I think I/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_327_0");
	c_talk_wait();
	c_walk_wait("l", 5, 5);
	c_speaker("rouxls");
	c_msgsetloc(0, "\\E6* Left my puzzle on/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_333_0");
	c_talk_wait();
	c_walk("l", 15, 30);
	c_speaker("rouxls");
	c_msgsetloc(0, "\\E5* POSTHASTE!!!/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_341_0");
	c_talk_wait();
	c_wait(30);
	c_sel(qu);
	c_facing("u");
	c_speaker("queen");
	c_msgsetloc(0, "\\EL* Who Was That??/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_352_0");
	c_talk_wait();
	c_sel(ki);
	c_sprite(spr_king_sulk_left);
	c_speaker("king");
	c_msgsetloc(0, "\\E5* Sigh..^1. That was my son's..../%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_360_0");
	c_talk_wait();
	c_sel(ki);
	c_sprite(spr_king_sulk);
	c_speaker("king");
	c_msgsetloc(0, "\\EC* LESSER father./%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_368_0");
	c_talk_wait();
	c_sel(qu);
	c_autowalk(0);
	c_sprite(spr_cutscene_10_queen_ohoho_standing);
	c_imagespeed(0.25);
	c_speaker("queen");
	c_msgsetloc(0, "\\EN* Cannot Calculate Someone Less Than You/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_378_0");
	c_talk_wait();
	c_sel(ki);
	c_sprite(spr_king_sulk_drink_left);
	c_autowalk(0);
	c_imagespeed(0.25);
	c_shake();
	c_speaker("king");
	c_msgsetloc(0, "\\EA* BEGONE!!!!/", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_390_0");
	c_facenext("queen", "0");
	c_msgnextloc("\\E0* Bye Bye Kingy Wingy/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_392_0");
	c_talk_wait();
	c_sel(ki);
	c_sprite(spr_king_sulk);
	c_sel(qu);
	c_autowalk(1);
	c_facing("d");
	c_wait(30);
	c_sel(qu);
	c_autowalk(1);
	c_walk_wait("l", 8, 45);
	c_facing("r");
	c_wait(30);
	c_speaker("queen");
	c_msgsetloc(0, "\\ED* By The Way Did You Want Anything From The Store/", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_413_0");
	c_facenext("king", "8");
	c_msgnextloc("\\E8* ..^1. cashews./", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_415_0");
	c_facenext("queen", 1);
	c_msgnextloc("\\E1* Order Processed/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_417_0");
	c_talk_wait();
	c_sel(qu);
	c_walk_wait("l", 10, 10);
	c_pannable(1);
	c_panobj(kr_actor, 15);
	c_wait(15);
	c_pannable(0);
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (con == 50 && !i_ex(obj_cutscene_master))
{
	global.interact = 0;
	global.facing = 0;
	con = 0;
	global.flag[320] = 1;
	with (obj_npc_king)
		visible = 1;
	instance_destroy();
}
if (i_ex(ki_actor))
{
	if (king_drink)
	{
		with (ki_actor)
		{
			if (x < 1380)
			{
				if (hspeed < 3)
					hspeed = 3;
				hspeed += 1;
				if (y >= (ystart - 60))
					y -= 4;
			}
			else
			{
				hspeed = 0;
			}
		}
	}
	else
	{
		var xpos = obj_npc_king.xstart;
		var ypos = obj_npc_king.ystart;
		with (ki_actor)
		{
			if (x > xpos)
			{
				if (y <= ypos)
					y = clamp(y + 4, 0, ypos);
				hspeed -= 1;
			}
			else
			{
				hspeed = 0;
				x = xpos;
			}
		}
	}
}
