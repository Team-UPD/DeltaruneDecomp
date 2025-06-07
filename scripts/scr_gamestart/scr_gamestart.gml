function scr_gamestart()
{
	global.chapter = 1;
	global.darkzone = 0;
	global.filechoice = 0;
	global.plot = 0;
	global.truename = "";
	global.othername[0] = "";
	global.othername[1] = "";
	global.othername[2] = "";
	global.othername[3] = "";
	global.othername[4] = "";
	global.othername[5] = "";
	global.othername[6] = "";
	global.time = 0;
	global.fighting = 0;
	global.char[0] = 1;
	global.char[1] = 0;
	global.char[2] = 0;
	global.gold = 0;
	global.xp = 0;
	global.lv = 1;
	global.inv = 0;
	global.invc = 1;
	global.charselect = -1;
	global.encounterno = 1;
	global.specialbattle = 0;
	for (i = 0; i < 3; i += 1)
	{
		global.heromakex[i] = 100;
		global.heromakey[i] = 200;
		global.charauto[i] = 0;
		global.charmove[i] = 0;
		global.charcantarget[i] = 0;
		global.chardead[i] = 0;
		global.invincible[i] = 1;
		global.charaction[i] = 0;
		global.faceaction[i] = 0;
		global.charcond[i] = 0;
	}
	global.charauto[0] = 0;
	global.charauto[1] = 0;
	global.charauto[2] = 1;
	global.charauto[3] = 0;
	for (i = 0; i < 4; i += 1)
	{
		global.hp[i] = 200;
		global.maxhp[i] = 250;
		global.at[i] = 10;
		global.df[i] = 2;
		global.mag[i] = 0;
		global.guts[i] = 0;
		global.charweapon[i] = 1;
		global.chararmor1[i] = 0;
		global.chararmor2[i] = 0;
		global.weaponstyle[i] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_69_0");
		for (q = 0; q < 4; q += 1)
		{
			global.itemat[i][q] = 0;
			global.itemdf[i][q] = 0;
			global.itemmag[i][q] = 0;
			global.itembolts[i][q] = 0;
			global.itemgrazeamt[i][q] = 0;
			global.itemgrazesize[i][q] = 0;
			global.itemboltspeed[i][q] = 0;
			global.itemspecial[i][q] = 0;
		}
		for (j = 0; j < 12; j += 1)
			global.spell[i][j] = 0;
	}
	global.boltspeed = 100;
	global.grazeamt = 100;
	global.grazesize = 100;
	global.charname[0] = " ";
	global.charname[1] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_98_0");
	global.charname[2] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_99_0");
	global.charname[3] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_100_0");
	global.charweapon[0] = 0;
	global.chararmor1[0] = 0;
	global.chararmor2[0] = 0;
	global.hp[0] = 0;
	global.maxhp[0] = 0;
	global.hp[1] = 90;
	global.maxhp[1] = 90;
	global.at[1] = 10;
	global.charweapon[2] = 2;
	global.hp[2] = 110;
	global.maxhp[2] = 110;
	global.at[2] = 14;
	global.mag[2] = 1;
	global.charweapon[3] = 3;
	global.hp[3] = 70;
	global.maxhp[3] = 70;
	global.at[3] = 8;
	global.mag[3] = 7;
	global.spell[1][0] = 7;
	global.spell[2][0] = 4;
	global.spell[3][0] = 3;
	global.spell[3][1] = 2;
	scr_spellinfo_all();
	global.item[0] = 0;
	global.item[1] = 0;
	global.item[2] = 0;
	global.item[3] = 0;
	global.item[4] = 0;
	global.item[5] = 0;
	global.item[6] = 0;
	global.item[7] = 0;
	global.item[8] = 0;
	global.item[9] = 0;
	global.item[10] = 0;
	global.item[11] = 0;
	global.item[12] = 0;
	global.keyitem[0] = 1;
	global.keyitem[1] = 0;
	global.keyitem[2] = 0;
	global.keyitem[3] = 0;
	global.keyitem[4] = 0;
	global.keyitem[5] = 0;
	global.keyitem[6] = 0;
	global.keyitem[7] = 0;
	global.keyitem[8] = 0;
	global.keyitem[9] = 0;
	global.keyitem[10] = 0;
	global.keyitem[11] = 0;
	global.keyitem[12] = 0;
	global.weapon[0] = 0;
	global.weapon[1] = 0;
	global.weapon[2] = 0;
	global.weapon[3] = 0;
	global.weapon[4] = 0;
	global.weapon[5] = 0;
	global.weapon[6] = 0;
	global.weapon[7] = 0;
	global.weapon[8] = 0;
	global.weapon[9] = 0;
	global.weapon[10] = 0;
	global.weapon[11] = 0;
	global.weapon[12] = 0;
	global.armor[0] = 0;
	global.armor[1] = 0;
	global.armor[2] = 0;
	global.armor[3] = 0;
	global.armor[4] = 0;
	global.armor[5] = 0;
	global.armor[6] = 0;
	global.armor[7] = 0;
	global.armor[8] = 0;
	global.armor[9] = 0;
	global.armor[10] = 0;
	global.armor[11] = 0;
	global.armor[12] = 0;
	scr_iteminfo_all();
	global.tension = 0;
	global.maxtension = 250;
	global.grazetotal = 0;
	global.grazeturn = 0;
	for (i = 0; i < 3; i += 1)
	{
		global.monstermakex[i] = 500;
		global.monstermakey[i] = 240;
		global.monsterinstancetype[i] = 2283728;
		global.monster[i] = 1;
		global.monstername[i] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_206_0");
		global.monstertype[i] = 1;
		global.monsterat[i] = 3;
		global.monsterdf[i] = 2;
		global.monsterhp[i] = 20;
		global.monstermaxhp[i] = 20;
		global.sparepoint[i] = 0;
	}
	global.bmenuno = 0;
	for (i = 0; i < 20; i += 1)
	{
		for (j = 0; j < 20; j += 1)
			global.bmenucoord[i][j] = 0;
	}
	global.myfight = 0;
	global.mnfight = 0;
	draw_set_color(c_white);
	global.fc = 0;
	global.fe = 0;
	global.typer = 5;
	global.msg = " ";
	global.msc = 0;
	for (i = 0; i < 10; i += 1)
	{
		global.writersnd[i] = snd_noise;
		global.writerimg[i] = scr_84_get_sprite("spr_btact");
		global.smdir[i] = 90;
		global.smspeed[i] = 2;
		global.smface[i] = 505050;
		global.smsprite[i] = spr_smallface_s0;
		global.smalarm[i] = 20;
		global.smtype[i] = 0;
		global.smxx[i] = 100;
		global.smyy[i] = 110;
		global.smcolor[i] = c_purple;
		global.smstring[i] = " ";
	}
	global.smalarm[1] = 15;
	global.smyy[1] = 70;
	global.smxx[1] = 700;
	global.smdir[1] = 180;
	global.smspeed[1] = 40;
	global.smtype[1] = 3;
	global.smsprite[1] = spr_smallface_a2;
	global.smcolor[1] = c_white;
	global.smstring[1] = " ";
	for (i = 0; i < 100; i += 1)
		global.msg[i] = "%%";
	global.msg[0] = " ";
	global.msg[1] = " ";
	global.msg[2] = " ";
	global.msg[3] = " ";
	global.msg[4] = " ";
	global.currentsong[0] = snd_nosound;
	global.currentsong[1] = snd_nosound;
	global.batmusic[0] = snd_nosound;
	global.batmusic[1] = snd_nosound;
	global.fc = 0;
	global.fe = 0;
	global.choice = -1;
	global.seriousbattle = 0;
	global.interact = 0;
	global.entrance = 0;
	for (i = 0; i < 9; i += 1)
	{
		global.litem[i] = 0;
		global.litemname[i] = "";
		global.phone[i] = 0;
		global.phonename[i] = "";
	}
	for (i = 0; i < 20; i += 1)
		global.menucoord[i] = 0;
	for (i = 0; i < 100; i += 1)
		global.msg[i] = " ";
	global.choicemsg[0] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_325_0");
	global.choicemsg[1] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_326_0");
	global.choicemsg[2] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_327_0");
	global.choicemsg[3] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_328_0");
	for (i = 0; i < 9999; i += 1)
		global.flag[i] = 0;
	global.litem[0] = 0;
	global.litemname[0] = " ";
	global.phone[0] = 201;
	global.phonename[0] = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_343_0");
	global.lcharname = scr_84_get_lang_string("scr_gamestart_slash_scr_gamestart_gml_345_0");
	global.lweapon = 2;
	global.larmor = 3;
	global.lxp = 0;
	global.llv = 1;
	global.lgold = 2;
	global.lhp = 20;
	global.lmaxhp = 20;
	global.lat = 10;
	global.ldf = 10;
	global.lwstrength = 1;
	global.ladef = 0;
	global.facing = 0;
	global.flag[15] = 1;
	global.flag[16] = 0.85;
	global.flag[17] = 0.6;
	audio_set_master_gain(0, global.flag[17]);
	for (i = 0; i < 10; i += 1)
	{
		global.input_pressed[i] = 0;
		global.input_held[i] = 0;
		global.input_released[i] = 0;
	}
	global.currentroom = 0;
	global.disable_border = false;
}
