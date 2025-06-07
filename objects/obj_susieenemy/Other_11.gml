if (global.mnfight == 1 && talked == 0)
{
	awoke = 0;
	sleepcounter += 1;
	if (sleepcounter >= 3 && sleeping == 1)
	{
		sleeping = 0;
		idlesprite = spr_susie_enemy;
		global.monstercomment[myself] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_9_0");
		global.monsterstatus[myself] = 0;
		sleepcounter = 99;
		awoke = 1;
	}
	if (sleeping == 0)
		scr_randomtarget();
	if (!instance_exists(obj_darkener))
		instance_create(0, 0, obj_darkener);
	global.typer = 53;
	rr = choose(0, 1, 2, 3);
	if (rr == 0)
		global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_19_0");
	if (rr == 1)
		global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_20_0");
	if (rr == 2)
		global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_21_0");
	if (rr == 3)
		global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_22_0");
	if (lancer_hurt == 0 && global.monsterhp[1] <= (global.monstermaxhp[1] * 0.5))
	{
		lancer_hurt = 1;
		if (global.monsterhp[myself] == global.monstermaxhp[myself])
			global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_28_0");
		else
			global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_31_0");
	}
	if (acting == 2)
	{
		if (anythingcounter == 1)
			global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_35_0");
		if (anythingcounter == 2)
			global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_36_0");
		if (anythingcounter == 3)
			global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_37_0");
		if (anythingcounter == 4)
			global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_38_0");
		if (anythingcounter >= 5)
			global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_39_0");
	}
	if (lancer_act == 3)
	{
		if (anythingxcounter == 1)
			global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_43_0");
		if (anythingxcounter == 2)
			global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_44_0");
		if (anythingxcounter == 3)
			global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_45_0");
		if (anythingxcounter >= 4)
			global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_46_0");
	}
	if (sleeping == 1)
		global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_48_0");
	if (awoke == 1)
		global.msg[0] = scr_84_get_lang_string("obj_susieenemy_slash_Other_11_gml_49_0");
	awoke = 0;
	lancer_act = 0;
	scr_enemyblcon(x - 160, y, 3);
	talked = 1;
	talktimer = 0;
}
