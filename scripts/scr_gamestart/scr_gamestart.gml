function scr_gamestart()
{
	global.chapter = 2;
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
	global.townname = stringsetloc("", "scr_gamestart_slash_scr_gamestart_gml_19_0");
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
	global.ambush = 0;
	global.tension = 0;
	global.maxtension = 250;
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
	for (i = 0; i < 72; i++)
		global.pocketitem[i] = 0;
	for (i = 0; i < 48; i++)
	{
		global.weapon[i] = 0;
		global.armor[i] = 0;
	}
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
	for (i = 0; i < 20; i += 1)
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
		global.weaponstyle[i] = 0;
		global.charname[i] = stringsetloc(" ", "scr_gamestart_slash_scr_gamestart_gml_72_0");
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
			global.itemelement[i][q] = 0;
			global.itemelementamount[i][q] = 0;
			global.charauto[i] = 0;
		}
		for (j = 0; j < 12; j += 1)
			global.spell[i][j] = 0;
	}
	global.boltspeed = 100;
	global.grazeamt = 100;
	global.grazesize = 100;
	scr_initialize_charnames();
	global.charweapon[0] = 0;
	global.chararmor1[0] = 0;
	global.chararmor2[0] = 0;
	global.hp[0] = 0;
	global.maxhp[0] = 0;
	if (global.chapter == 1)
	{
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
	}
	if (global.chapter == 2)
	{
		global.maxhp[1] = 120;
		global.hp[1] = global.maxhp[1];
		global.at[1] = 12;
		global.chararmor1[1] = 1;
		global.chararmor2[1] = 1;
		global.charweapon[2] = 2;
		global.maxhp[2] = 140;
		global.hp[2] = global.maxhp[2];
		global.at[2] = 16;
		global.mag[2] = 1;
		global.chararmor1[2] = 1;
		global.chararmor2[2] = 1;
		global.charweapon[3] = 3;
		global.maxhp[3] = 100;
		global.hp[3] = global.maxhp[3];
		global.at[3] = 10;
		global.mag[3] = 9;
		global.chararmor1[3] = 1;
		global.chararmor2[3] = 4;
		global.charweapon[4] = 12;
		global.chararmor1[4] = 14;
		global.chararmor2[4] = 22;
		global.hp[4] = 90;
		global.maxhp[4] = 90;
		global.at[4] = 3;
		global.mag[4] = 11;
		global.df[4] = 1;
	}
	global.spell[1][0] = 7;
	global.spell[2][0] = 4;
	global.spell[3][0] = 3;
	global.spell[3][1] = 2;
	global.spell[4][0] = 2;
	global.spell[4][1] = 8;
	global.spell[4][2] = 9;
	scr_weaponinfo_mine();
	scr_armorinfo_mine();
	scr_iteminfo_all();
	global.grazetotal = 0;
	global.grazeturn = 0;
	for (i = 0; i < 3; i += 1)
	{
		global.monstermakex[i] = 500;
		global.monstermakey[i] = 240;
		global.monsterinstancetype[i] = 2283728;
		global.monster[i] = 1;
		global.monstername[i] = stringsetloc("ECHIDNA", "scr_gamestart_slash_scr_gamestart_gml_231_0");
		global.monstertype[i] = 1;
		global.monsterat[i] = 3;
		global.monsterdf[i] = 2;
		global.monsterhp[i] = 20;
		global.monstermaxhp[i] = 20;
		global.sparepoint[i] = 0;
		global.monsterattackname[i] = " ";
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
	global.battletyper = 4;
	global.msg = " ";
	global.msc = 0;
	global.msgno = 0;
	for (i = 0; i < 10; i += 1)
	{
		global.writersnd[i] = snd_noise;
		global.writerimg[i] = spr_btact;
		global.smdir[i] = 90;
		global.smspeed[i] = 2;
		global.smsprite[i] = spr_smallface_s0;
		global.smalarm[i] = 20;
		global.smtype[i] = 0;
		global.smxx[i] = 100;
		global.smyy[i] = 110;
		global.smimage[i] = 0;
		global.smimagespeed[i] = 0;
		global.sminstance[i] = 4384738473;
		global.smcolor[i] = c_white;
		global.smstring[i] = stringsetloc(" ", "scr_gamestart_slash_scr_gamestart_gml_282_0");
	}
	global.smalarm[1] = 15;
	global.smyy[1] = 70;
	global.smxx[1] = 700;
	global.smdir[1] = 180;
	global.smspeed[1] = 40;
	global.smtype[1] = 3;
	global.smsprite[1] = spr_smallface_a2;
	global.smcolor[1] = c_white;
	global.smstring[1] = stringsetloc(" ", "scr_gamestart_slash_scr_gamestart_gml_293_0");
	for (i = 0; i < 100; i += 1)
		global.msg[i] = stringsetloc("%%", "scr_gamestart_slash_scr_gamestart_gml_297_0");
	global.msg[0] = stringsetloc(" ", "scr_gamestart_slash_scr_gamestart_gml_300_0");
	global.msg[1] = stringsetloc(" ", "scr_gamestart_slash_scr_gamestart_gml_303_0");
	global.msg[2] = stringsetloc(" ", "scr_gamestart_slash_scr_gamestart_gml_305_0");
	global.msg[3] = stringsetloc(" ", "scr_gamestart_slash_scr_gamestart_gml_306_0");
	global.msg[4] = stringsetloc(" ", "scr_gamestart_slash_scr_gamestart_gml_307_0");
	global.currentsong[0] = snd_nosound;
	global.currentsong[1] = snd_nosound;
	global.batmusic[0] = snd_nosound;
	global.batmusic[1] = snd_nosound;
	global.fc = 0;
	global.fe = 0;
	global.choice = -1;
	global.seriousbattle = 0;
	global.turntimer = 0;
	global.mnfight = 0;
	global.myfight = 0;
	global.interact = 0;
	global.entrance = 0;
	for (i = 0; i < 9; i += 1)
	{
		global.litem[i] = 0;
		global.litemname[i] = "";
		global.phone[i] = 0;
		global.phonename[i] = stringsetloc("", "scr_gamestart_slash_scr_gamestart_gml_341_0");
	}
	for (i = 0; i < 20; i += 1)
		global.menucoord[i] = 0;
	for (i = 0; i < 100; i += 1)
		global.msg[i] = stringsetloc(" ", "scr_gamestart_slash_scr_gamestart_gml_353_0");
	global.choicemsg[0] = stringsetloc("Yes", "scr_gamestart_slash_scr_gamestart_gml_356_0_b");
	global.choicemsg[1] = stringsetloc("No", "scr_gamestart_slash_scr_gamestart_gml_357_0");
	global.choicemsg[2] = stringsetloc("Maybe", "scr_gamestart_slash_scr_gamestart_gml_358_0");
	global.choicemsg[3] = stringsetloc("Don't know", "scr_gamestart_slash_scr_gamestart_gml_359_0");
	for (i = 0; i < 9999; i += 1)
		global.flag[i] = 0;
	global.litem[0] = 0;
	global.litemname[0] = " ";
	global.phone[0] = 201;
	global.phonename[0] = stringsetloc("Home", "scr_gamestart_slash_scr_gamestart_gml_356_0");
	global.lcharname = stringsetloc("Kris", "scr_gamestart_slash_scr_gamestart_gml_396_0");
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
	for (i = 0; i < 10; i += 1)
	{
		global.input_pressed[i] = 0;
		global.input_held[i] = 0;
		global.input_released[i] = 0;
	}
	global.flag[220] = choose(0, 1, 2, 3);
	global.flag[221] = choose(0, 1, 2, 3);
	global.flag[222] = choose(0, 1, 2, 3);
	global.flag[223] = floor(random(31));
	global.flag[224] = floor(random(31));
	global.flag[225] = floor(random(31));
	scr_gamestart_chapter_override();
	scr_spellinfo_all();
	scr_weaponinfo_mine();
	scr_armorinfo_mine();
	audio_set_master_gain(0, global.flag[17]);
	global.cinstance[0] = 4854845464869464;
	global.cinstance[1] = 48548454648694644;
	global.cinstance[2] = 48548454648694649;
}
