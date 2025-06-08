function scr_monstersetup()
{
	scr_monster_actreset(myself);
	if (global.monstertype[myself] == 1)
	{
		global.monstername[myself] = stringsetloc("Enemy", "scr_monstersetup_slash_scr_monstersetup_gml_7_0");
		global.monstermaxhp[myself] = 130;
		global.monstermaxhp[myself] = 130;
		global.monsterhp[myself] = 130;
		global.monsterat[myself] = 7;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 20;
		global.sparepoint[myself] = 10;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_19_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Warning", "scr_monstersetup_slash_scr_monstersetup_gml_21_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = stringsetloc("Victory", "scr_monstersetup_slash_scr_monstersetup_gml_23_0");
		global.canact[myself][3] = 1;
		global.actname[myself][3] = stringsetloc("SimuDance", "scr_monstersetup_slash_scr_monstersetup_gml_25_0");
		global.actsimul[myself][3] = 1;
		global.canact[myself][4] = 1;
		global.actname[myself][4] = stringsetloc("Victory (S)", "scr_monstersetup_slash_scr_monstersetup_gml_28_0");
		global.canact[myself][5] = 1;
		global.actname[myself][5] = stringsetloc("Lecture", "scr_monstersetup_slash_scr_monstersetup_gml_30_0");
		global.canactsus[myself][0] = 1;
		global.actnamesus[myself][0] = stringsetloc("CoolDance", "scr_monstersetup_slash_scr_monstersetup_gml_33_0");
		global.canactsus[myself][1] = 1;
		global.actnamesus[myself][1] = stringsetloc("SimuDance", "scr_monstersetup_slash_scr_monstersetup_gml_35_0");
		global.actsimulsus[myself][1] = 1;
		global.canactral[myself][0] = 1;
		global.actnameral[myself][0] = stringsetloc("CoolDance", "scr_monstersetup_slash_scr_monstersetup_gml_40_0");
		global.canactral[myself][1] = 1;
		global.actnameral[myself][1] = stringsetloc("SimuDance", "scr_monstersetup_slash_scr_monstersetup_gml_42_0");
		global.actsimulral[myself][1] = 1;
	}
	if (global.monstertype[myself] == 2)
	{
		global.monstername[myself] = stringsetloc("Lancer", "scr_monstersetup_slash_scr_monstersetup_gml_50_0");
		global.monstermaxhp[myself] = 540;
		global.monsterhp[myself] = 540;
		global.monsterat[myself] = 5;
		global.monsterdf[myself] = 1;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 20;
		global.sparepoint[myself] = 10;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_61_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Warning", "scr_monstersetup_slash_scr_monstersetup_gml_64_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = stringsetloc("Compliment", "scr_monstersetup_slash_scr_monstersetup_gml_67_0");
		global.battlemsg[0] = stringsetloc("* Lancer busts in!", "scr_monstersetup_slash_scr_monstersetup_gml_69_0");
	}
	if (global.monstertype[myself] == 3)
	{
		global.monstername[myself] = stringsetloc("Dummy", "scr_monstersetup_slash_scr_monstersetup_gml_77_0");
		global.monstermaxhp[myself] = 450;
		global.monsterhp[myself] = 450;
		global.monsterat[myself] = 0;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 0;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_88_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Hug", "scr_monstersetup_slash_scr_monstersetup_gml_90_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = stringsetloc("Hug Ralsei", "scr_monstersetup_slash_scr_monstersetup_gml_92_0");
		global.actactor[myself][2] = 3;
		global.battlemsg[0] = stringsetloc("* The tutorial begins.", "scr_monstersetup_slash_scr_monstersetup_gml_96_0");
	}
	if (global.monstertype[myself] == 4)
	{
		global.monstername[myself] = stringsetloc("Ralsei", "scr_monstersetup_slash_scr_monstersetup_gml_100_0");
		global.monstermaxhp[myself] = 90;
		global.monsterhp[myself] = 90;
		global.monsterat[myself] = 8;
		global.monsterdf[myself] = 6;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 0;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_112_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Hug", "scr_monstersetup_slash_scr_monstersetup_gml_114_0");
		global.battlemsg[0] = stringsetloc("* The tutorial begins.", "scr_monstersetup_slash_scr_monstersetup_gml_115_0");
	}
	if (global.monstertype[myself] == 5)
	{
		global.monstername[myself] = stringsetloc("Rudinn", "scr_monstersetup_slash_scr_monstersetup_gml_121_0");
		global.monstermaxhp[myself] = 120;
		global.monsterhp[myself] = 120;
		global.monsterat[myself] = 5;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 30;
		global.sparepoint[myself] = 10;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_132_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Convince", "scr_monstersetup_slash_scr_monstersetup_gml_134_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = stringsetloc("Lecture", "scr_monstersetup_slash_scr_monstersetup_gml_136_0");
		if (scr_havechar(2) && global.plot < 150)
		{
			global.canact[myself][3] = 1;
			global.actname[myself][3] = stringsetloc("Warning", "scr_monstersetup_slash_scr_monstersetup_gml_140_0");
			global.actactor[myself][3] = 3;
		}
	}
	if (global.monstertype[myself] == 6)
	{
		global.monstername[myself] = stringsetloc("Hathy", "scr_monstersetup_slash_scr_monstersetup_gml_150_0");
		global.monstermaxhp[myself] = 150;
		global.monsterhp[myself] = 150;
		global.monsterat[myself] = 6;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 28;
		global.sparepoint[myself] = 10;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_161_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Flatter", "scr_monstersetup_slash_scr_monstersetup_gml_163_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = stringsetloc("X-Flatter", "scr_monstersetup_slash_scr_monstersetup_gml_165_0");
		global.actactor[myself][2] = 3;
		if (global.encounterno == 7)
		{
			global.actactor[myself][2] = 2;
			if (global.plot < 40)
				global.plot = 40;
		}
		if (scr_havechar(2) && global.plot < 150)
		{
			global.canact[myself][3] = 1;
			global.actname[myself][3] = stringsetloc("Warning", "scr_monstersetup_slash_scr_monstersetup_gml_171_0");
			global.actactor[myself][3] = 3;
		}
		if (scr_havechar(2) && global.plot >= 150)
		{
			global.canact[myself][3] = 1;
			global.actname[myself][3] = stringsetloc("S-Flatter", "scr_monstersetup_slash_scr_monstersetup_gml_177_0");
			global.actactor[myself][3] = 2;
		}
	}
	if (global.monstertype[myself] == 7)
	{
		global.monstername[myself] = stringsetloc("Clover", "scr_monstersetup_slash_scr_monstersetup_gml_188_0");
		global.monstermaxhp[myself] = 270;
		global.monsterhp[myself] = 270;
		global.monsterat[myself] = 8;
		global.monsterdf[myself] = 1;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 43;
		global.sparepoint[myself] = 10;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_201_0");
		myact = choose(0, 1, 2);
		if (myact == 0)
		{
			global.canact[myself][1] = 1;
			global.actname[myself][1] = stringsetloc("Politics", "scr_monstersetup_slash_scr_monstersetup_gml_207_0");
			global.canact[myself][2] = 1;
			global.actname[myself][2] = stringsetloc("Religion", "scr_monstersetup_slash_scr_monstersetup_gml_209_0");
			global.canact[myself][3] = 1;
			global.actname[myself][3] = stringsetloc("Sports", "scr_monstersetup_slash_scr_monstersetup_gml_211_0");
		}
		if (myact == 1)
		{
			global.canact[myself][1] = 1;
			global.actname[myself][1] = stringsetloc("Kindness", "scr_monstersetup_slash_scr_monstersetup_gml_216_0");
			global.canact[myself][2] = 1;
			global.actname[myself][2] = stringsetloc("Cuteboys", "scr_monstersetup_slash_scr_monstersetup_gml_218_0");
			global.canact[myself][3] = 1;
			global.actname[myself][3] = stringsetloc("GunControl", "scr_monstersetup_slash_scr_monstersetup_gml_220_0");
		}
		if (myact == 2)
		{
			global.canact[myself][1] = 1;
			global.actname[myself][1] = stringsetloc("Trees", "scr_monstersetup_slash_scr_monstersetup_gml_225_0");
			global.canact[myself][2] = 1;
			global.actname[myself][2] = stringsetloc("Ghosts", "scr_monstersetup_slash_scr_monstersetup_gml_227_0");
			global.canact[myself][3] = 1;
			global.actname[myself][3] = stringsetloc("Games", "scr_monstersetup_slash_scr_monstersetup_gml_229_0");
		}
		if (scr_havechar(2))
		{
			global.canact[myself][4] = 1;
			global.actname[myself][4] = stringsetloc("Warning", "scr_monstersetup_slash_scr_monstersetup_gml_235_0");
			global.actactor[myself][4] = 3;
		}
	}
	if (global.monstertype[myself] == 8)
	{
		global.monstername[myself] = stringsetloc("Pippins", "scr_monstersetup_slash_scr_monstersetup_gml_244_0");
		global.monstermaxhp[myself] = 170;
		global.monsterhp[myself] = 170;
		global.monsterat[myself] = 8;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 50;
		global.sparepoint[myself] = 10;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_255_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Bet", "scr_monstersetup_slash_scr_monstersetup_gml_257_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = stringsetloc("X-Bet", "scr_monstersetup_slash_scr_monstersetup_gml_259_0");
		global.actactor[myself][2] = 3;
	}
	if (global.monstertype[myself] == 9)
	{
		global.monstername[myself] = stringsetloc("C.Round", "scr_monstersetup_slash_scr_monstersetup_gml_269_0");
		global.monstermaxhp[myself] = 10;
		global.monsterhp[myself] = 10;
		global.monsterat[myself] = 5;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 10;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_280_0");
		if (global.encounterno == 7)
		{
			if (global.plot < 40)
				global.plot = 40;
		}
		if (scr_havechar(2))
		{
			global.canact[myself][1] = 1;
			global.actactor[myself][1] = 2;
			global.actname[myself][1] = stringsetloc("X-Compliment", "scr_monstersetup_slash_scr_monstersetup_gml_288_0");
			global.canact[myself][2] = 1;
			global.actname[myself][2] = stringsetloc("Warning", "scr_monstersetup_slash_scr_monstersetup_gml_291_0");
			global.actactor[myself][2] = 3;
		}
	}
	if (global.monstertype[myself] == 10)
	{
		global.monstername[myself] = stringsetloc("K.Round", "scr_monstersetup_slash_scr_monstersetup_gml_300_0");
		global.monstermaxhp[myself] = 1300;
		global.monsterhp[myself] = 1300;
		global.monsterat[myself] = 7.5;
		global.monsterdf[myself] = 3;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 100;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_311_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Bow", "scr_monstersetup_slash_scr_monstersetup_gml_313_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = stringsetloc("Deep Bow", "scr_monstersetup_slash_scr_monstersetup_gml_315_0");
		global.actactor[myself][2] = 3;
		if (scr_havechar(2))
		{
			global.canact[myself][3] = 1;
			global.actname[myself][3] = stringsetloc("Warning", "scr_monstersetup_slash_scr_monstersetup_gml_324_0");
			global.actactor[myself][3] = 3;
		}
	}
	if (global.monstertype[myself] == 11)
	{
		global.monstername[myself] = stringsetloc("Ponman", "scr_monstersetup_slash_scr_monstersetup_gml_333_0");
		global.monstermaxhp[myself] = 140;
		global.monsterhp[myself] = 140;
		global.monsterat[myself] = 7;
		global.monsterdf[myself] = 1;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 23;
		global.sparepoint[myself] = 10;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_344_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Goodnight", "scr_monstersetup_slash_scr_monstersetup_gml_346_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = stringsetloc("Lullaby", "scr_monstersetup_slash_scr_monstersetup_gml_348_0");
		global.actactor[myself][2] = 3;
		if (scr_havechar(2) && global.plot < 150)
		{
			global.canact[myself][3] = 1;
			global.actname[myself][3] = stringsetloc("Warning", "scr_monstersetup_slash_scr_monstersetup_gml_354_0");
			global.actactor[myself][3] = 3;
		}
	}
	if (global.monstertype[myself] == 12)
	{
		global.monstername[myself] = stringsetloc("Lancer", "scr_monstersetup_slash_scr_monstersetup_gml_364_0");
		global.monstermaxhp[myself] = 2400;
		global.monsterhp[myself] = 2400;
		global.monsterat[myself] = 4;
		global.monsterdf[myself] = -40;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 0;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_375_0");
	}
	if (global.monstertype[myself] == 13)
	{
		global.monstername[myself] = stringsetloc("Rabbick", "scr_monstersetup_slash_scr_monstersetup_gml_383_0");
		global.monstermaxhp[myself] = 120;
		global.monsterhp[myself] = 120;
		global.monsterat[myself] = 8;
		global.monsterdf[myself] = 1;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 38;
		global.sparepoint[myself] = 10;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_394_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Blow On", "scr_monstersetup_slash_scr_monstersetup_gml_396_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = stringsetloc("BreathAll", "scr_monstersetup_slash_scr_monstersetup_gml_398_0");
		global.actactor[myself][2] = 3;
		if (scr_havechar(2) && global.plot < 150)
		{
			global.canact[myself][3] = 1;
			global.actname[myself][3] = stringsetloc("Warning", "scr_monstersetup_slash_scr_monstersetup_gml_403_0");
			global.actactor[myself][3] = 3;
		}
	}
	if (global.monstertype[myself] == 14)
	{
		global.monstername[myself] = stringsetloc("Bloxer", "scr_monstersetup_slash_scr_monstersetup_gml_412_0");
		global.monstermaxhp[myself] = 130;
		global.monsterhp[myself] = 130;
		global.monsterat[myself] = 9;
		global.monsterdf[myself] = 2;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 38;
		global.sparepoint[myself] = 10;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_423_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Rearrange", "scr_monstersetup_slash_scr_monstersetup_gml_425_0");
		if (scr_havechar(2) && global.plot >= 150)
		{
			global.canact[myself][2] = 1;
			global.actname[myself][2] = stringsetloc("Rival", "scr_monstersetup_slash_scr_monstersetup_gml_429_0");
			global.actactor[myself][2] = 2;
		}
	}
	if (global.monstertype[myself] == 15)
	{
		global.monstername[myself] = stringsetloc("Jigsawry", "scr_monstersetup_slash_scr_monstersetup_gml_438_0");
		global.monstermaxhp[myself] = 90;
		global.monsterhp[myself] = 90;
		global.monsterat[myself] = 5;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 20;
		global.sparepoint[myself] = 10;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_449_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Befriend", "scr_monstersetup_slash_scr_monstersetup_gml_451_0");
		if (scr_havechar(2) && global.plot < 150)
		{
			global.canact[myself][2] = 1;
			global.actname[myself][2] = stringsetloc("Warning", "scr_monstersetup_slash_scr_monstersetup_gml_457_0");
			global.actactor[myself][2] = 3;
		}
	}
	if (global.monstertype[myself] == 16)
	{
		global.monstername[myself] = stringsetloc("Clover", "scr_monstersetup_slash_scr_monstersetup_gml_466_0");
		global.monstermaxhp[myself] = 270;
		global.monsterhp[myself] = 270;
		global.monsterat[myself] = 6;
		global.monsterdf[myself] = 1;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 80;
		global.sparepoint[myself] = 10;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_480_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("TalkBday", "scr_monstersetup_slash_scr_monstersetup_gml_482_0");
		global.actactor[myself][1] = 3;
		global.actname[myself][2] = stringsetloc("TalkBoys", "scr_monstersetup_slash_scr_monstersetup_gml_484_0");
		global.canact[myself][2] = 1;
		global.actactor[myself][2] = 3;
		global.actname[myself][3] = stringsetloc("TalkSports", "scr_monstersetup_slash_scr_monstersetup_gml_487_0");
		global.canact[myself][3] = 1;
		global.actactor[myself][3] = 3;
		global.actname[myself][4] = stringsetloc("TalkAnimals", "scr_monstersetup_slash_scr_monstersetup_gml_490_0");
		global.canact[myself][4] = 1;
		global.actname[myself][5] = stringsetloc("TalkTrees", "scr_monstersetup_slash_scr_monstersetup_gml_492_0");
		global.canact[myself][5] = 1;
		myact = choose(0, 1, 2);
	}
	if (global.monstertype[myself] == 17)
	{
		global.monstername[myself] = stringsetloc("DoomTank", "scr_monstersetup_slash_scr_monstersetup_gml_501_0");
		global.monstermaxhp[myself] = 700;
		global.monsterhp[myself] = 700;
		global.monsterat[myself] = 6;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 0;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_513_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Hug", "scr_monstersetup_slash_scr_monstersetup_gml_515_0");
		global.actactor[myself][1] = 3;
		global.canact[myself][2] = 1;
		global.actname[myself][2] = stringsetloc("Flatter", "scr_monstersetup_slash_scr_monstersetup_gml_518_0");
		global.actactor[myself][2] = 3;
		global.canact[myself][3] = 1;
		global.actname[myself][3] = stringsetloc("Diplomacy", "scr_monstersetup_slash_scr_monstersetup_gml_521_0");
		global.canact[myself][4] = 1;
		global.actname[myself][4] = stringsetloc("Smile", "scr_monstersetup_slash_scr_monstersetup_gml_523_0");
	}
	if (global.monstertype[myself] == 18)
	{
		global.monstername[myself] = stringsetloc("Lancer", "scr_monstersetup_slash_scr_monstersetup_gml_530_0");
		global.monstermaxhp[myself] = 800;
		global.monsterhp[myself] = 800;
		global.monsterat[myself] = 6;
		global.monsterdf[myself] = 1;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 0;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_541_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Anything", "scr_monstersetup_slash_scr_monstersetup_gml_544_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = stringsetloc("X-Anything", "scr_monstersetup_slash_scr_monstersetup_gml_547_0");
		global.actactor[myself][2] = 3;
	}
	if (global.monstertype[myself] == 19)
	{
		_armordf = global.itemdf[2][0] + global.itemdf[2][1] + global.itemdf[2][2];
		global.monstername[myself] = stringsetloc("Susie", "scr_monstersetup_slash_scr_monstersetup_gml_556_0");
		global.monstermaxhp[myself] = 120;
		global.monsterhp[myself] = 120;
		global.monsterat[myself] = 7;
		global.monsterdf[myself] = -5 + _armordf;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 0;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_567_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Anything", "scr_monstersetup_slash_scr_monstersetup_gml_570_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = stringsetloc("Sing", "scr_monstersetup_slash_scr_monstersetup_gml_573_0");
		global.actactor[myself][2] = 3;
	}
	if (global.monstertype[myself] == 20)
	{
		global.monstername[myself] = stringsetloc("JEVIL", "scr_monstersetup_slash_scr_monstersetup_gml_580_0");
		global.monstermaxhp[myself] = 3500;
		global.monsterhp[myself] = 3500;
		global.monsterat[myself] = 10;
		global.monsterdf[myself] = 5;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 0;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 999;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_591_0");
		global.canact[myself][1] = 1;
		global.actactor[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Pirouette", "scr_monstersetup_slash_scr_monstersetup_gml_596_0");
		global.actdesc[myself][1] = stringsetloc("Random#Chaos", "scr_monstersetup_slash_scr_monstersetup_gml_597_0");
		global.actcost[myself][1] = 50;
		global.canact[myself][2] = 1;
		global.actactor[myself][2] = 4;
		global.actname[myself][2] = stringsetloc("Hypnosis", "scr_monstersetup_slash_scr_monstersetup_gml_602_0");
		global.actdesc[myself][2] = stringsetloc("Induce#TIRED", "scr_monstersetup_slash_scr_monstersetup_gml_603_0");
		global.actcost[myself][2] = 125;
	}
	if (global.monstertype[myself] == 21)
	{
		global.monstername[myself] = stringsetloc("K.Round", "scr_monstersetup_slash_scr_monstersetup_gml_612_0");
		global.monstermaxhp[myself] = 1300;
		global.monsterhp[myself] = 1300;
		global.monsterat[myself] = 8;
		global.monsterdf[myself] = 3;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 100;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_623_0");
		if (global.flag[246] == 1)
			global.actname[myself][0] = stringsetloc("Checkers", "scr_monstersetup_slash_scr_monstersetup_gml_624_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Bow", "scr_monstersetup_slash_scr_monstersetup_gml_626_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = stringsetloc("Susie's Idea", "scr_monstersetup_slash_scr_monstersetup_gml_628_0");
		global.actactor[myself][2] = 4;
	}
	if (global.monstertype[myself] == 22)
	{
		global.monstername[myself] = stringsetloc("Rudinn Ranger", "scr_monstersetup_slash_scr_monstersetup_gml_637_0");
		global.monstermaxhp[myself] = 170;
		global.monsterhp[myself] = 170;
		global.monsterat[myself] = 8;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 45;
		global.sparepoint[myself] = 25;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_648_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Convince", "scr_monstersetup_slash_scr_monstersetup_gml_650_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = stringsetloc("Compliment", "scr_monstersetup_slash_scr_monstersetup_gml_652_0");
		global.actactor[myself][2] = 2;
	}
	if (global.monstertype[myself] == 23)
	{
		global.monstername[myself] = stringsetloc("Head Hathy", "scr_monstersetup_slash_scr_monstersetup_gml_661_0");
		global.monstermaxhp[myself] = 190;
		global.monsterhp[myself] = 190;
		global.monsterat[myself] = 8;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 40;
		global.sparepoint[myself] = 10;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_672_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Flirt", "scr_monstersetup_slash_scr_monstersetup_gml_674_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = stringsetloc("X-Flirt", "scr_monstersetup_slash_scr_monstersetup_gml_676_0");
		global.actactor[myself][2] = 2;
	}
	if (global.monstertype[myself] == 25)
	{
		global.monstername[myself] = stringsetloc("King", "scr_monstersetup_slash_scr_monstersetup_gml_683_0");
		global.monstermaxhp[myself] = 2800;
		global.monsterhp[myself] = 2800;
		global.monsterat[myself] = 8;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 0;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 999;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_694_0");
		global.canact[myself][1] = 1;
		global.actactor[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Talk", "scr_monstersetup_slash_scr_monstersetup_gml_699_0");
		global.actdesc[myself][1] = " ";
		global.actcost[myself][1] = 0;
		global.canact[myself][2] = 1;
		global.actactor[myself][2] = 2;
		global.actname[myself][2] = stringsetloc("Talk", "scr_monstersetup_slash_scr_monstersetup_gml_705_0");
		global.actdesc[myself][2] = " ";
		global.actcost[myself][2] = 0;
		global.canact[myself][3] = 1;
		global.actactor[myself][3] = 3;
		global.actname[myself][3] = stringsetloc("Talk", "scr_monstersetup_slash_scr_monstersetup_gml_711_0");
		global.actdesc[myself][3] = " ";
		global.actcost[myself][3] = 0;
		if (global.tempflag[5] == 1)
		{
			global.canact[myself][1] = 1;
			global.actactor[myself][1] = 1;
			global.actname[myself][1] = stringsetloc("Courage", "scr_monstersetup_slash_scr_monstersetup_gml_721_0");
			global.actdesc[myself][1] = stringsetloc("Defense#Boost", "scr_monstersetup_slash_scr_monstersetup_gml_722_0");
			global.actcost[myself][1] = 62;
		}
		if (global.tempflag[6] == 1)
		{
			global.canact[myself][2] = 1;
			global.actactor[myself][2] = 2;
			global.actname[myself][2] = stringsetloc("RedBuster", "scr_monstersetup_slash_scr_monstersetup_gml_731_0");
			global.actdesc[myself][2] = stringsetloc("Red#Damage", "scr_monstersetup_slash_scr_monstersetup_gml_732_0");
			global.actcost[myself][2] = 150;
		}
		if (global.tempflag[7] == 1)
		{
			global.canact[myself][3] = 1;
			global.actactor[myself][3] = 3;
			global.actname[myself][3] = stringsetloc("DualHeal", "scr_monstersetup_slash_scr_monstersetup_gml_741_0");
			global.actdesc[myself][3] = stringsetloc("Heals#everyone", "scr_monstersetup_slash_scr_monstersetup_gml_742_0");
			global.actcost[myself][3] = 125;
		}
	}
	if (global.monstertype[myself] == 30)
	{
		global.monstername[myself] = stringsetloc("Ambyu-Lance", "scr_monstersetup_slash_scr_monstersetup_gml_760_0");
		global.monstermaxhp[myself] = 300;
		global.monsterhp[myself] = 300;
		global.monsterat[myself] = 8;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 84;
		global.sparepoint[myself] = 20;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_772_0");
		if (!scr_havechar(4))
		{
			global.canact[myself][1] = 1;
			global.actactor[myself][1] = 2;
			global.actname[myself][1] = stringsetloc("Avoid", "scr_monstersetup_slash_scr_monstersetup_gml_778_0");
			global.actdesc[myself][1] = " ";
			global.actcost[myself][1] = 0;
			global.canact[myself][2] = 1;
			global.actactor[myself][2] = 3;
			global.actname[myself][2] = stringsetloc("GetHit", "scr_monstersetup_slash_scr_monstersetup_gml_784_0");
			global.actdesc[myself][2] = " ";
			global.actcost[myself][2] = 0;
		}
		else
		{
			global.canact[myself][1] = 1;
			global.actactor[myself][1] = 5;
			global.actname[myself][1] = stringsetloc("Hospitality", "scr_monstersetup_slash_scr_monstersetup_gml_791_0");
			global.actdesc[myself][1] = " ";
			global.actcost[myself][1] = 0;
		}
		global.canactsus[myself][0] = 1;
		global.actnamesus[myself][0] = stringsetloc("S-Action", "scr_monstersetup_slash_scr_monstersetup_gml_797_0");
		global.actsimulsus[myself][0] = 1;
		global.canactral[myself][0] = 1;
		global.actnameral[myself][0] = stringsetloc("R-Action", "scr_monstersetup_slash_scr_monstersetup_gml_801_0");
		global.actsimulral[myself][0] = 1;
		global.canactnoe[myself][0] = 1;
		global.actnamenoe[myself][0] = stringsetloc("N-Action", "scr_monstersetup_slash_scr_monstersetup_gml_805_0");
		global.actsimulnoe[myself][0] = 1;
	}
	if (global.monstertype[myself] == 31)
	{
		global.monstername[myself] = stringsetloc("Poppup", "scr_monstersetup_slash_scr_monstersetup_gml_811_0");
		global.monstermaxhp[myself] = 120;
		global.monsterhp[myself] = 120;
		global.monsterat[myself] = 9;
		if (!scr_havechar(2) && !scr_havechar(3) && !scr_havechar(4))
			global.monsterat[myself] = 8;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 77;
		global.sparepoint[myself] = 25;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_823_0");
		global.canact[myself][1] = 1;
		global.actactor[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Click", "scr_monstersetup_slash_scr_monstersetup_gml_827_0");
		global.actdesc[myself][1] = "";
		global.actcost[myself][1] = 0;
		global.canact[myself][2] = 1;
		global.actactor[myself][2] = 1;
		global.actname[myself][2] = stringsetloc("Block", "scr_monstersetup_slash_scr_monstersetup_gml_833_0");
		global.actdesc[myself][2] = "";
		global.actcost[myself][2] = 0;
		if (scr_havechar(4))
		{
			global.canact[myself][3] = 1;
			global.actactor[myself][3] = 5;
			global.actname[myself][3] = stringsetloc("Avoid", "scr_monstersetup_slash_scr_monstersetup_gml_841_0");
			global.actdesc[myself][3] = " ";
			global.actcost[myself][3] = 0;
		}
		global.canactsus[myself][0] = 1;
		global.actnamesus[myself][0] = stringsetloc("S-Action", "scr_monstersetup_slash_scr_monstersetup_gml_847_0");
		global.actsimulsus[myself][0] = 0;
		global.canactral[myself][0] = 1;
		global.actnameral[myself][0] = stringsetloc("R-Action", "scr_monstersetup_slash_scr_monstersetup_gml_850_0");
		global.canactnoe[myself][0] = 1;
		global.actnamenoe[myself][0] = stringsetloc("N-Action", "scr_monstersetup_slash_scr_monstersetup_gml_853_0");
		global.actsimulnoe[myself][0] = 1;
	}
	if (global.monstertype[myself] == 32)
	{
		global.monstername[myself] = stringsetloc("Tasque", "scr_monstersetup_slash_scr_monstersetup_gml_859_0");
		global.monstermaxhp[myself] = 240;
		global.monsterhp[myself] = 240;
		global.monsterat[myself] = 8;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 75;
		global.sparepoint[myself] = 20;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_871_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Petting", "scr_monstersetup_slash_scr_monstersetup_gml_874_0");
		global.actsimul[myself][1] = 1;
		if (!scr_havechar(4))
		{
			global.canact[myself][2] = 1;
			global.actactor[myself][2] = 2;
			global.actname[myself][2] = stringsetloc("Roar", "scr_monstersetup_slash_scr_monstersetup_gml_881_0");
			global.actdesc[myself][2] = " ";
			global.actcost[myself][2] = 0;
			global.canact[myself][3] = 1;
			global.actactor[myself][3] = 3;
			global.actname[myself][3] = stringsetloc("SoftVoice", "scr_monstersetup_slash_scr_monstersetup_gml_887_0");
			global.actdesc[myself][3] = " ";
			global.actcost[myself][3] = 0;
		}
		else
		{
			global.canact[myself][2] = 1;
			global.actactor[myself][2] = 5;
			global.actname[myself][2] = stringsetloc("PettingX", "scr_monstersetup_slash_scr_monstersetup_gml_894_0");
			global.actdesc[myself][2] = " ";
			global.actcost[myself][2] = 0;
		}
		global.canactsus[myself][0] = 1;
		global.actnamesus[myself][0] = stringsetloc("S-Action", "scr_monstersetup_slash_scr_monstersetup_gml_900_0");
		global.actsimulsus[myself][0] = 1;
		global.canactral[myself][0] = 1;
		global.actnameral[myself][0] = stringsetloc("R-Action", "scr_monstersetup_slash_scr_monstersetup_gml_904_0");
		global.actsimulral[myself][0] = 1;
		global.canactnoe[myself][0] = 1;
		global.actnamenoe[myself][0] = stringsetloc("N-Action", "scr_monstersetup_slash_scr_monstersetup_gml_908_0");
		global.actsimulnoe[myself][0] = 1;
	}
	if (global.monstertype[myself] == 33)
	{
		global.monstername[myself] = stringsetloc("Werewire", "scr_monstersetup_slash_scr_monstersetup_gml_914_0");
		global.monstermaxhp[myself] = 240;
		global.monsterhp[myself] = 240;
		global.monsterat[myself] = 5;
		if (scr_havechar(3) || scr_havechar(4))
			global.monsterat[myself] = 8;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 79;
		global.sparepoint[myself] = 20;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_926_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("JiggleJiggle", "scr_monstersetup_slash_scr_monstersetup_gml_929_0");
		global.actsimul[myself][1] = 1;
		global.canact[myself][2] = 1;
		global.actactor[myself][2] = 2;
		global.actname[myself][2] = stringsetloc("ThrowWire", "scr_monstersetup_slash_scr_monstersetup_gml_934_0");
		global.actdesc[myself][2] = stringsetloc("Toss Kris#to free#wire", "scr_monstersetup_slash_scr_monstersetup_gml_935_0");
		global.actcost[myself][2] = 0;
		global.canactsus[myself][0] = 1;
		global.actnamesus[myself][0] = stringsetloc("S-Action", "scr_monstersetup_slash_scr_monstersetup_gml_939_0");
		global.actsimulsus[myself][0] = 1;
		global.canactral[myself][0] = 1;
		global.actnameral[myself][0] = stringsetloc("R-Action", "scr_monstersetup_slash_scr_monstersetup_gml_943_0");
		global.actsimulral[myself][0] = 1;
		global.canactnoe[myself][0] = 1;
		global.actnamenoe[myself][0] = stringsetloc("N-Action", "scr_monstersetup_slash_scr_monstersetup_gml_947_0");
		global.actsimulnoe[myself][0] = 1;
	}
	if (global.monstertype[myself] == 34)
	{
		global.monstername[myself] = stringsetloc("Maus", "scr_monstersetup_slash_scr_monstersetup_gml_953_0");
		global.monstermaxhp[myself] = 120;
		global.monsterhp[myself] = 120;
		global.monsterat[myself] = 8;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 70;
		global.sparepoint[myself] = 25;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_965_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("TrapOne", "scr_monstersetup_slash_scr_monstersetup_gml_968_0");
		if (!scr_havechar(4))
		{
			global.canact[myself][2] = 1;
			global.actactor[myself][2] = 2;
			global.actname[myself][2] = stringsetloc("Upgrade", "scr_monstersetup_slash_scr_monstersetup_gml_974_0");
			global.actdesc[myself][2] = " ";
			global.actcost[myself][2] = 0;
			global.canact[myself][3] = 1;
			global.actactor[myself][3] = 3;
			global.actname[myself][3] = stringsetloc("TrapAll", "scr_monstersetup_slash_scr_monstersetup_gml_980_0");
			global.actdesc[myself][3] = " ";
			global.actcost[myself][3] = 0;
		}
		else
		{
			global.canact[myself][2] = 1;
			global.actactor[myself][2] = 5;
			global.actname[myself][2] = (global.flag[379] == 0) ? stringsetloc("Fear", "scr_monstersetup_slash_scr_monstersetup_gml_987_0") : stringsetloc("Compliment", "scr_monstersetup_slash_scr_monstersetup_gml_987_1");
			global.actdesc[myself][2] = " ";
			global.actcost[myself][2] = 0;
			global.canact[myself][3] = 1;
			global.actactor[myself][3] = 5;
			global.actname[myself][3] = stringsetloc("TrapAll", "scr_monstersetup_slash_scr_monstersetup_gml_980_0");
			global.actdesc[myself][3] = " ";
			global.actcost[myself][3] = 0;
		}
		global.canactsus[myself][0] = 1;
		global.actnamesus[myself][0] = stringsetloc("S-Action", "scr_monstersetup_slash_scr_monstersetup_gml_993_0");
		global.actsimulsus[myself][0] = 1;
		global.canactral[myself][0] = 1;
		global.actnameral[myself][0] = stringsetloc("R-Action", "scr_monstersetup_slash_scr_monstersetup_gml_997_0");
		global.actsimulral[myself][0] = 0;
		global.canactnoe[myself][0] = 1;
		global.actnamenoe[myself][0] = stringsetloc("N-Action", "scr_monstersetup_slash_scr_monstersetup_gml_1001_0");
		global.actsimulnoe[myself][0] = 1;
	}
	if (global.monstertype[myself] == 35)
	{
		global.monstername[myself] = stringsetloc("Virovirokun", "scr_monstersetup_slash_scr_monstersetup_gml_1008_0");
		global.monstermaxhp[myself] = 240;
		global.monsterhp[myself] = 240;
		global.monsterat[myself] = 8;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 84;
		global.sparepoint[myself] = 20;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_1019_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("TakeCare", "scr_monstersetup_slash_scr_monstersetup_gml_1022_0");
		if (!scr_havechar(4))
		{
			global.canact[myself][2] = 1;
			global.actactor[myself][2] = 4;
			global.actname[myself][2] = stringsetloc("TakeCareX", "scr_monstersetup_slash_scr_monstersetup_gml_1028_0");
			global.actdesc[myself][2] = " ";
			global.actcost[myself][2] = 0;
		}
		else
		{
			global.canact[myself][2] = 1;
			global.actactor[myself][2] = 5;
			global.actname[myself][2] = stringsetloc("TakeCareX", "scr_monstersetup_slash_scr_monstersetup_gml_1047_0");
			global.actdesc[myself][2] = " ";
			global.actcost[myself][2] = 0;
		}
		global.canactsus[myself][0] = 1;
		global.actnamesus[myself][0] = stringsetloc("S-Action", "scr_monstersetup_slash_scr_monstersetup_gml_1053_0");
		global.actsimulsus[myself][0] = 1;
		global.canactral[myself][0] = 1;
		global.actnameral[myself][0] = stringsetloc("R-Action", "scr_monstersetup_slash_scr_monstersetup_gml_1057_0");
		global.actsimulral[myself][0] = 1;
		global.canactnoe[myself][0] = 1;
		global.actnamenoe[myself][0] = stringsetloc("N-Action", "scr_monstersetup_slash_scr_monstersetup_gml_1061_0");
		global.actsimulnoe[myself][0] = 1;
	}
	if (global.monstertype[myself] == 36)
	{
		global.monstername[myself] = stringsetloc("Swatchling", "scr_monstersetup_slash_scr_monstersetup_gml_1068_0");
		global.monstermaxhp[myself] = 300;
		global.monsterhp[myself] = 300;
		global.monsterat[myself] = 9;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 100;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_1079_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Warmify", "scr_monstersetup_slash_scr_monstersetup_gml_1082_0");
		global.actdesc[myself][1] = stringsetloc("Redder#2 stages", "scr_monstersetup_slash_scr_monstersetup_gml_1099_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = stringsetloc("Coldify", "scr_monstersetup_slash_scr_monstersetup_gml_1085_0");
		global.actdesc[myself][2] = stringsetloc("Bluer#2 stages", "scr_monstersetup_slash_scr_monstersetup_gml_1103_0");
		global.canactsus[myself][0] = 1;
		global.actnamesus[myself][0] = stringsetloc("Half-Warm", "scr_monstersetup_slash_scr_monstersetup_gml_1088_0");
		global.actdescsus[myself][0] = stringsetloc("Redder#1 stage", "scr_monstersetup_slash_scr_monstersetup_gml_1107_0");
		global.canactral[myself][0] = 1;
		global.actnameral[myself][0] = stringsetloc("Half-Cold", "scr_monstersetup_slash_scr_monstersetup_gml_1091_0");
		global.actdescral[myself][0] = stringsetloc("Bluer#1 stage", "scr_monstersetup_slash_scr_monstersetup_gml_1111_0_b");
	}
	if (global.monstertype[myself] == 37)
	{
		global.monstername[myself] = stringsetloc("Cap'n", "scr_monstersetup_slash_scr_monstersetup_gml_1097_0");
		global.monstermaxhp[myself] = 120;
		global.monsterhp[myself] = 120;
		global.monsterat[myself] = 8;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 1;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_1108_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Dance", "scr_monstersetup_slash_scr_monstersetup_gml_1111_0");
		if (global.lang != "ja")
			global.actsimul[myself][1] = 1;
		global.canact[myself][2] = 1;
		global.actactor[myself][2] = 4;
		global.actname[myself][2] = stringsetloc("Dance X", "scr_monstersetup_slash_scr_monstersetup_gml_1116_0");
		global.canactsus[myself][0] = 1;
		global.actnamesus[myself][0] = stringsetloc("Dance", "scr_monstersetup_slash_scr_monstersetup_gml_1119_0");
		if (global.lang != "ja")
			global.actsimulsus[myself][0] = 1;
		global.canactral[myself][0] = 1;
		global.actnameral[myself][0] = stringsetloc("Dance", "scr_monstersetup_slash_scr_monstersetup_gml_1123_0");
		if (global.lang != "ja")
			global.actsimulral[myself][0] = 1;
	}
	if (global.monstertype[myself] == 38)
	{
		global.monstername[myself] = "K_K";
		global.monstermaxhp[myself] = 120;
		global.monsterhp[myself] = 120;
		global.monsterat[myself] = 8;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 100;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_1142_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Dance", "scr_monstersetup_slash_scr_monstersetup_gml_1145_0");
		if (global.lang != "ja")
			global.actsimul[myself][1] = 1;
		global.canact[myself][2] = 1;
		global.actactor[myself][2] = 4;
		global.actname[myself][2] = stringsetloc("Dance X", "scr_monstersetup_slash_scr_monstersetup_gml_1150_0");
		global.canactsus[myself][0] = 1;
		global.actnamesus[myself][0] = stringsetloc("Dance", "scr_monstersetup_slash_scr_monstersetup_gml_1153_0");
		if (global.lang != "ja")
			global.actsimulsus[myself][0] = 1;
		global.canactral[myself][0] = 1;
		global.actnameral[myself][0] = stringsetloc("Dance", "scr_monstersetup_slash_scr_monstersetup_gml_1157_0");
		if (global.lang != "ja")
			global.actsimulral[myself][0] = 1;
	}
	if (global.monstertype[myself] == 39)
	{
		global.monstername[myself] = stringsetloc("Sweet", "scr_monstersetup_slash_scr_monstersetup_gml_1165_0");
		global.monstermaxhp[myself] = 120;
		global.monsterhp[myself] = 120;
		global.monsterat[myself] = 8;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 50;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_1176_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Dance", "scr_monstersetup_slash_scr_monstersetup_gml_1179_0");
		if (global.lang != "ja")
			global.actsimul[myself][1] = 1;
		global.canact[myself][2] = 1;
		global.actactor[myself][2] = 4;
		global.actname[myself][2] = stringsetloc("Dance X", "scr_monstersetup_slash_scr_monstersetup_gml_1184_0");
		global.canactsus[myself][0] = 1;
		global.actnamesus[myself][0] = stringsetloc("Dance", "scr_monstersetup_slash_scr_monstersetup_gml_1187_0");
		if (global.lang != "ja")
			global.actsimulsus[myself][0] = 1;
		global.canactral[myself][0] = 1;
		global.actnameral[myself][0] = stringsetloc("Dance", "scr_monstersetup_slash_scr_monstersetup_gml_1191_0");
		if (global.lang != "ja")
			global.actsimulral[myself][0] = 1;
	}
	if (global.monstertype[myself] == 40)
	{
		global.monstername[myself] = stringsetloc("Werewerewire", "scr_monstersetup_slash_scr_monstersetup_gml_1199_0");
		global.monstermaxhp[myself] = 1753;
		global.monsterhp[myself] = 1753;
		global.monsterat[myself] = 11;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 300;
		global.sparepoint[myself] = 5;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_1210_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("BeCold", "scr_monstersetup_slash_scr_monstersetup_gml_1213_0");
		global.actsimul[myself][1] = 1;
		global.canact[myself][2] = 1;
		global.actactor[myself][2] = 2;
		global.actname[myself][2] = stringsetloc("BeTough", "scr_monstersetup_slash_scr_monstersetup_gml_1218_0");
		global.actdesc[myself][2] = " ";
		global.actcost[myself][2] = 0;
		global.canact[myself][3] = 1;
		global.actactor[myself][3] = 3;
		global.actname[myself][3] = stringsetloc("BeSweet", "scr_monstersetup_slash_scr_monstersetup_gml_1224_0");
		global.actdesc[myself][3] = " ";
		global.actcost[myself][3] = 0;
		global.canactsus[myself][0] = 1;
		global.actnamesus[myself][0] = stringsetloc("S-Action", "scr_monstersetup_slash_scr_monstersetup_gml_1229_0");
		global.actsimulsus[myself][0] = 1;
		global.canactral[myself][0] = 1;
		global.actnameral[myself][0] = stringsetloc("R-Action", "scr_monstersetup_slash_scr_monstersetup_gml_1233_0");
		global.actsimulral[myself][0] = 1;
	}
	if (global.monstertype[myself] == 41)
	{
		global.monstername[myself] = stringsetloc("GrazeTest", "scr_monstersetup_slash_scr_monstersetup_gml_1234_0");
		global.monstermaxhp[myself] = 1;
		global.monsterhp[myself] = 100;
		global.monsterat[myself] = 8;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 0;
		global.sparepoint[myself] = 100;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_1251_0");
		global.canactsus[myself][0] = 1;
		global.actnamesus[myself][0] = stringsetloc("S-Action", "scr_monstersetup_slash_scr_monstersetup_gml_1254_0");
		global.canactral[myself][0] = 1;
		global.actnameral[myself][0] = stringsetloc("R-Action", "scr_monstersetup_slash_scr_monstersetup_gml_1257_0");
	}
	if (global.monstertype[myself] == 42)
	{
		global.monstername[myself] = stringsetloc("Tasque Manager", "scr_monstersetup_slash_scr_monstersetup_gml_1259_0");
		global.monstermaxhp[myself] = 1367;
		global.monsterhp[myself] = 1367;
		global.monsterat[myself] = 10;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 200;
		global.sparepoint[myself] = 5;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_1276_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Order", "scr_monstersetup_slash_scr_monstersetup_gml_1280_0");
		global.actdesc[myself][1] = " ";
		global.actsimul[myself][1] = 1;
		global.canact[myself][2] = 1;
		global.actactor[myself][2] = 4;
		global.actname[myself][2] = stringsetloc("OrderX", "scr_monstersetup_slash_scr_monstersetup_gml_1285_0");
		global.actdesc[myself][2] = " ";
		global.actsimul[myself][2] = 1;
		global.canactsus[myself][0] = 1;
		global.actnamesus[myself][0] = stringsetloc("S-Action", "scr_monstersetup_slash_scr_monstersetup_gml_1289_0_b");
		global.actsimulsus[myself][0] = 1;
		global.canactral[myself][0] = 1;
		global.actnameral[myself][0] = stringsetloc("R-Action", "scr_monstersetup_slash_scr_monstersetup_gml_1293_0");
		global.actsimulral[myself][0] = 1;
	}
	if (global.monstertype[myself] == 43)
	{
		global.monstername[myself] = stringsetloc("Berdly", "scr_monstersetup_slash_scr_monstersetup_gml_1289_0");
		global.monstermaxhp[myself] = 1985;
		global.monsterhp[myself] = 1985;
		global.monsterat[myself] = 10;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 100;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_1312_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Bump", "scr_monstersetup_slash_scr_monstersetup_gml_1315_0");
		global.actdesc[myself][1] = stringsetloc("Ride#coaster", "scr_monstersetup_slash_scr_monstersetup_gml_1332_0_b");
		global.actcost[myself][1] = 0;
		global.canact[myself][2] = 1;
		global.actactor[myself][2] = 4;
		global.actname[myself][2] = stringsetloc("BumpX", "scr_monstersetup_slash_scr_monstersetup_gml_1321_0");
		global.actdesc[myself][2] = stringsetloc("Everyone#rides#coaster", "scr_monstersetup_slash_scr_monstersetup_gml_1338_0");
		global.actcost[myself][2] = 0;
		global.canactsus[myself][0] = 1;
		global.actnamesus[myself][0] = stringsetloc("Bump", "scr_monstersetup_slash_scr_monstersetup_gml_1337_0");
		global.actdescsus[myself][0] = stringsetloc("Ride#coaster", "scr_monstersetup_slash_scr_monstersetup_gml_1354_0");
		global.actcostsus[myself][0] = 0;
		global.canactral[myself][0] = 1;
		global.actnameral[myself][0] = stringsetloc("Bump", "scr_monstersetup_slash_scr_monstersetup_gml_1347_0_b");
		global.actdescral[myself][0] = stringsetloc("Ride#coaster", "scr_monstersetup_slash_scr_monstersetup_gml_1364_0");
		global.actcostral[myself][0] = 0;
	}
	if (global.monstertype[myself] == 44)
	{
		global.monstername[myself] = stringsetloc("Mauswheel", "scr_monstersetup_slash_scr_monstersetup_gml_1347_0");
		global.monstermaxhp[myself] = 1753;
		global.monsterhp[myself] = 1753;
		global.monsterat[myself] = 10;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 200;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_1367_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Catch", "scr_monstersetup_slash_scr_monstersetup_gml_1362_0");
		global.canact[myself][2] = 1;
		global.actactor[myself][2] = 4;
		global.actname[myself][2] = stringsetloc("CatchX", "scr_monstersetup_slash_scr_monstersetup_gml_1366_0");
		global.canactsus[myself][0] = 1;
		global.actnamesus[myself][0] = stringsetloc("S-Action", "scr_monstersetup_slash_scr_monstersetup_gml_1378_0");
		global.actdescsus[myself][0] = " ";
		global.actcostsus[myself][0] = 0;
		global.canactral[myself][0] = 1;
		global.actnameral[myself][0] = stringsetloc("R-Action", "scr_monstersetup_slash_scr_monstersetup_gml_1384_0");
		global.actdescral[myself][0] = " ";
		global.actcostral[myself][0] = 0;
	}
	if (global.monstertype[myself] == 45)
	{
		global.monstername[myself] = stringsetloc("Rouxls", "scr_monstersetup_slash_scr_monstersetup_gml_1385_0");
		global.monstermaxhp[myself] = 600;
		global.monsterhp[myself] = 600;
		global.monsterat[myself] = 9;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 200;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_1405_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Take House", "scr_monstersetup_slash_scr_monstersetup_gml_1408_0");
		global.actdesc[myself][1] = " ";
		global.actcost[myself][1] = 0;
		global.canact[myself][2] = 1;
		global.actname[myself][2] = stringsetloc("Take House 2", "scr_monstersetup_slash_scr_monstersetup_gml_1413_0");
		global.actdesc[myself][2] = " ";
		global.actcost[myself][2] = 34;
		global.canact[myself][3] = 1;
		global.actactor[myself][3] = 3;
		global.actname[myself][3] = stringsetloc("Take House 3", "scr_monstersetup_slash_scr_monstersetup_gml_1419_0");
		global.actdesc[myself][3] = " ";
		global.actcost[myself][3] = 59;
		global.canact[myself][4] = 1;
		global.actactor[myself][4] = 3;
		global.actname[myself][4] = stringsetloc("Take House 4", "scr_monstersetup_slash_scr_monstersetup_gml_1425_0");
		global.actdesc[myself][4] = " ";
		global.actcost[myself][4] = 80;
		global.canactsus[myself][0] = 1;
		global.actnamesus[myself][0] = stringsetloc("S-Action", "scr_monstersetup_slash_scr_monstersetup_gml_1430_0");
		global.canactral[myself][0] = 1;
		global.actnameral[myself][0] = stringsetloc("Distract", "scr_monstersetup_slash_scr_monstersetup_gml_1433_0_b");
		global.actdescral[myself][0] = " ";
		global.actcostral[myself][0] = 0;
	}
	if (global.monstertype[myself] == 46)
	{
		global.monstername[myself] = stringsetloc("Berdly", "scr_monstersetup_slash_scr_monstersetup_gml_1433_0");
		global.monstermaxhp[myself] = 900;
		global.monsterhp[myself] = 900;
		global.monsterat[myself] = 9;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 100;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_1453_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = (scr_sideb_get_phase() > 0) ? stringsetloc("Glare", "scr_monstersetup_slash_scr_monstersetup_gml_1456_0") : stringsetloc("Play Dumb", "scr_monstersetup_slash_scr_monstersetup_gml_1456_1");
		global.canact[myself][2] = 1;
		global.actactor[myself][2] = 5;
		global.actname[myself][2] = (scr_sideb_get_phase() > 0) ? stringsetloc("Wake", "scr_monstersetup_slash_scr_monstersetup_gml_1460_0") : stringsetloc("Play Smart", "scr_monstersetup_slash_scr_monstersetup_gml_1460_1");
		global.actdesc[myself][2] = " ";
		global.actcost[myself][2] = 0;
		global.canactnoe[myself][0] = 1;
		global.actnamenoe[myself][0] = stringsetloc("N-Action", "scr_monstersetup_slash_scr_monstersetup_gml_1465_0");
	}
	if (global.monstertype[myself] == 47)
	{
		global.monstername[myself] = stringsetloc("Clover", "scr_monstersetup_slash_scr_monstersetup_gml_1464_0");
		global.monstermaxhp[myself] = 1500;
		global.monsterhp[myself] = 1500;
		global.monsterat[myself] = 11;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 0;
		global.sparepoint[myself] = 5;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_1484_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Topic", "scr_monstersetup_slash_scr_monstersetup_gml_1487_0");
		global.actsimul[myself][1] = 0;
		global.actdesc[myself][1] = stringsetloc("Guess#favorite#thing", "scr_monstersetup_slash_scr_monstersetup_gml_1505_0");
		global.canact[myself][2] = 1;
		global.actactor[myself][2] = 4;
		global.actname[myself][2] = stringsetloc("Topic(Long)", "scr_monstersetup_slash_scr_monstersetup_gml_1492_0");
		global.actdesc[myself][2] = stringsetloc("Longer#time to#guess", "scr_monstersetup_slash_scr_monstersetup_gml_1510_0");
		global.canactsus[myself][0] = 1;
		global.actnamesus[myself][0] = stringsetloc("S-Action", "scr_monstersetup_slash_scr_monstersetup_gml_1495_0");
		global.actsimulsus[myself][0] = 1;
		global.canactral[myself][0] = 1;
		global.actnameral[myself][0] = stringsetloc("R-Action", "scr_monstersetup_slash_scr_monstersetup_gml_1499_0_b");
		global.actsimulral[myself][0] = 1;
	}
	if (global.monstertype[myself] == 48)
	{
		global.monstername[myself] = stringsetloc("Queen", "scr_monstersetup_slash_scr_monstersetup_gml_1499_0");
		global.monstermaxhp[myself] = 1510;
		global.monsterhp[myself] = 1510;
		global.monsterat[myself] = 10;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 0;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		if (!instance_exists(obj_berdlyplug_enemy))
		{
			global.mercymod[myself] = 0;
			global.mercymax[myself] = 100;
			global.canact[myself][0] = 1;
			global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_1524_0");
		}
		else
		{
			global.canact[myself][0] = 1;
			global.actname[myself][0] = stringsetloc("Loosen", "scr_monstersetup_slash_scr_monstersetup_gml_1529_0");
			global.actcost[myself][0] = 0;
			global.canact[myself][1] = 1;
			global.actactor[myself][1] = 4;
			global.actname[myself][1] = stringsetloc("GroupLoosen", "scr_monstersetup_slash_scr_monstersetup_gml_1534_0");
			global.actdesc[myself][1] = " ";
			global.actcost[myself][1] = 0;
			global.canact[myself][2] = 1;
			global.actactor[myself][2] = 2;
			global.actname[myself][2] = stringsetloc("Throw", "scr_monstersetup_slash_scr_monstersetup_gml_1540_0");
			global.actdesc[myself][2] = " ";
			global.actcost[myself][2] = 0;
			global.canact[myself][3] = 1;
			global.actactor[myself][3] = 2;
			global.actname[myself][3] = stringsetloc("RedBuster", "scr_monstersetup_slash_scr_monstersetup_gml_1552_0");
			global.actdesc[myself][3] = stringsetloc("Red#Damage", "scr_monstersetup_slash_scr_monstersetup_gml_1553_0");
			global.actcost[myself][3] = 150;
			global.canact[myself][4] = 1;
			global.actactor[myself][4] = 3;
			global.actname[myself][4] = stringsetloc("DualHeal", "scr_monstersetup_slash_scr_monstersetup_gml_1558_0");
			global.actdesc[myself][4] = stringsetloc("Heals#everyone", "scr_monstersetup_slash_scr_monstersetup_gml_1559_0");
			global.actcost[myself][4] = 125;
			global.canactsus[myself][0] = 1;
			global.actnamesus[myself][0] = stringsetloc("Loosen", "scr_monstersetup_slash_scr_monstersetup_gml_1563_0");
			global.canactral[myself][0] = 1;
			global.actnameral[myself][0] = stringsetloc("Loosen", "scr_monstersetup_slash_scr_monstersetup_gml_1566_0");
		}
	}
	if (global.monstertype[myself] == 49)
	{
		global.monstername[myself] = stringsetloc("Spamton", "scr_monstersetup_slash_scr_monstersetup_gml_1564_0");
		global.monstermaxhp[myself] = 600;
		global.monsterhp[myself] = 600;
		global.monsterat[myself] = 8;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = -50;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_1576_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Deal", "scr_monstersetup_slash_scr_monstersetup_gml_1579_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = stringsetloc("HealDeal", "scr_monstersetup_slash_scr_monstersetup_gml_1611_0");
		global.actdesc[myself][2] = stringsetloc("DEAL &#HEAL 60", "scr_monstersetup_slash_scr_monstersetup_gml_1612_0");
		global.actcost[myself][2] = 125;
	}
	if (global.monstertype[myself] == 50)
	{
		global.monstername[myself] = stringsetloc("Spamton NEO", "scr_monstersetup_slash_scr_monstersetup_gml_1591_0");
		global.monstermaxhp[myself] = 4809;
		global.monsterhp[myself] = 4809;
		global.monsterat[myself] = 13;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 0;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_1614_0");
		if (scr_sideb_get_phase() > 2)
		{
			global.monsterdf[myself] = -27;
			global.canact[myself][1] = 1;
			global.actname[myself][1] = stringsetloc("X-Slash", "scr_monstersetup_slash_scr_monstersetup_gml_1643_0");
			global.actdesc[myself][1] = stringsetloc("Physical#damage", "scr_monstersetup_slash_scr_monstersetup_gml_1644_0");
			global.actcost[myself][1] = 62;
			global.canact[myself][2] = 1;
			global.actname[myself][2] = stringsetloc("FriedPipis", "scr_monstersetup_slash_scr_monstersetup_gml_1649_0");
			global.actdesc[myself][2] = stringsetloc("Heals#120 HP", "scr_monstersetup_slash_scr_monstersetup_gml_1650_0");
			global.actcost[myself][2] = 80;
		}
		else
		{
			global.canact[myself][1] = 1;
			global.actname[myself][1] = stringsetloc("Snap", "scr_monstersetup_slash_scr_monstersetup_gml_1664_0");
			global.actdesc[myself][1] = "";
			global.actcost[myself][1] = 0;
			global.canact[myself][2] = 1;
			global.actactor[myself][2] = 4;
			global.actname[myself][2] = stringsetloc("SnapAll", "scr_monstersetup_slash_scr_monstersetup_gml_1670_0");
			global.actdesc[myself][2] = "";
			global.actcost[myself][2] = 0;
			global.canactsus[myself][0] = 1;
			global.actnamesus[myself][0] = stringsetloc("Snap", "scr_monstersetup_slash_scr_monstersetup_gml_1682_0");
			global.actdescsus[myself][0] = "";
			global.actcostsus[myself][0] = 0;
			global.canactsus[myself][1] = 1;
			global.actnamesus[myself][1] = stringsetloc("Supercharge", "scr_monstersetup_slash_scr_monstersetup_gml_1687_0");
			global.actdescsus[myself][1] = stringsetloc("Charge#faster", "scr_monstersetup_slash_scr_monstersetup_gml_1685_0");
			global.actcostsus[myself][1] = 80;
			global.canactral[myself][0] = 1;
			global.actnameral[myself][0] = stringsetloc("Snap", "scr_monstersetup_slash_scr_monstersetup_gml_1698_0");
			global.actdescral[myself][0] = "";
			global.actcostral[myself][0] = 0;
			global.canactral[myself][1] = 1;
			global.actnameral[myself][1] = stringsetloc("FluffyGuard", "scr_monstersetup_slash_scr_monstersetup_gml_1703_0");
			global.actdescral[myself][1] = stringsetloc("Orbiting#shield", "scr_monstersetup_slash_scr_monstersetup_gml_1701_0");
			global.actcostral[myself][1] = 40;
		}
	}
	if (global.monstertype[myself] == 51)
	{
		global.monstername[myself] = stringsetloc("GIGA Queen", "scr_monstersetup_slash_scr_monstersetup_gml_1656_0");
		global.monstermaxhp[myself] = 4500;
		global.monsterhp[myself] = 4500;
		global.monsterat[myself] = 7.5;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 0;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		if (global.flag[220] == 2)
		{
			global.actname[myself][0] = stringsetloc("FireMode", "scr_monstersetup_slash_scr_monstersetup_gml_1730_0");
			global.actdesc[myself][0] = stringsetloc("Power#Attacks", "scr_monstersetup_slash_scr_monstersetup_gml_1730_1");
		}
		if (global.flag[220] == 1)
		{
			global.actname[myself][0] = stringsetloc("SwordMode", "scr_monstersetup_slash_scr_monstersetup_gml_1731_0");
			global.actdesc[myself][0] = stringsetloc("Power up#each hit", "scr_monstersetup_slash_scr_monstersetup_gml_1731_1");
		}
		if (global.flag[220] == 0)
		{
			global.actname[myself][0] = stringsetloc("LaserMode", "scr_monstersetup_slash_scr_monstersetup_gml_1732_0");
			global.actdesc[myself][0] = stringsetloc("Fast#Attacks", "scr_monstersetup_slash_scr_monstersetup_gml_1732_1");
		}
		if (global.flag[220] == 3)
		{
			global.actname[myself][0] = stringsetloc("DuckMode", "scr_monstersetup_slash_scr_monstersetup_gml_1733_0");
			global.actdesc[myself][0] = stringsetloc("Sucky#Attacks", "scr_monstersetup_slash_scr_monstersetup_gml_1733_1");
		}
		global.actcost[myself][0] = 125;
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("TurboDodge", "scr_monstersetup_slash_scr_monstersetup_gml_1738_0");
		global.actdesc[myself][1] = stringsetloc("Better#dodge", "scr_monstersetup_slash_scr_monstersetup_gml_1739_0");
		global.actcost[myself][1] = 62;
		global.canact[myself][2] = 1;
		global.actname[myself][2] = stringsetloc("SELF-FIX", "scr_monstersetup_slash_scr_monstersetup_gml_1743_0");
		global.actdesc[myself][2] = stringsetloc("Heals#100HP", "scr_monstersetup_slash_scr_monstersetup_gml_1744_0");
		global.actcost[myself][2] = 50;
	}
	if (global.monstertype[myself] == 52)
	{
		global.monstername[myself] = stringsetloc("Jigsaw Joe", "scr_monstersetup_slash_scr_monstersetup_gml_1727_0");
		global.monstermaxhp[myself] = 1;
		global.monsterhp[myself] = 1;
		global.monsterat[myself] = 8;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 0;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_1276_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = stringsetloc("Shave", "scr_monstersetup_slash_scr_monstersetup_gml_1742_0");
		global.actdesc[myself][1] = " ";
		global.actsimul[myself][1] = 1;
	}
	if (global.monstertype[myself] == 53)
	{
		global.monstername[myself] = stringsetloc("Pipis", "scr_monstersetup_slash_scr_monstersetup_gml_1790_0");
		global.monstermaxhp[myself] = 200;
		global.monsterhp[myself] = 200;
		global.monsterat[myself] = 8;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 0;
		global.sparepoint[myself] = 0;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = stringsetloc("Check", "scr_monstersetup_slash_scr_monstersetup_gml_1276_0");
		global.canactsus[myself][0] = 1;
		global.actnamesus[myself][0] = stringsetloc("S-Action", "scr_monstersetup_slash_scr_monstersetup_gml_1816_0");
		global.actsimulsus[myself][0] = 1;
		global.canactral[myself][0] = 1;
		global.actnameral[myself][0] = stringsetloc("R-Action", "scr_monstersetup_slash_scr_monstersetup_gml_1820_0");
		global.actsimulral[myself][0] = 1;
	}
}
