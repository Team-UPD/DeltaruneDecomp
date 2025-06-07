function scr_monstersetup()
{
	if (global.monstertype[myself] == 1)
	{
		global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_4_0");
		global.monstermaxhp[myself] = 130;
		global.monsterhp[myself] = 130;
		global.monsterat[myself] = 7;
		global.monsterdf[myself] = 0;
		global.monsterexp[myself] = 0;
		global.monstergold[myself] = 0;
		global.sparepoint[myself] = 10;
		global.mercymod[myself] = 0;
		global.mercymax[myself] = 100;
		global.canact[myself][0] = 1;
		global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_16_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_18_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_20_0");
		global.canact[myself][3] = 1;
		global.actname[myself][3] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_22_0");
		global.canact[myself][4] = 1;
		global.actname[myself][4] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_24_0");
		global.canact[myself][5] = 1;
		global.actname[myself][5] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_26_0");
		global.battlemsg[0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_27_0");
	}
	if (global.monstertype[myself] == 2)
	{
		global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_32_0");
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
		global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_44_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_47_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_50_0");
		global.battlemsg[0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_51_0");
	}
	if (global.monstertype[myself] == 3)
	{
		global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_59_0");
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
		global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_71_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_73_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_75_0");
		global.actactor[myself][2] = 3;
		global.battlemsg[0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_78_0");
	}
	if (global.monstertype[myself] == 4)
	{
		global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_83_0");
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
		global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_95_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_97_0");
		global.battlemsg[0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_98_0");
	}
	if (global.monstertype[myself] == 5)
	{
		global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_103_0");
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
		global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_115_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_117_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_119_0");
		if (scr_havechar(2) && global.plot < 150)
		{
			global.canact[myself][3] = 1;
			global.actname[myself][3] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_123_0");
			global.actactor[myself][3] = 3;
		}
	}
	if (global.monstertype[myself] == 6)
	{
		global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_132_0");
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
		global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_144_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_146_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_148_0");
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
			global.actname[myself][3] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_154_0");
			global.actactor[myself][3] = 3;
		}
		if (scr_havechar(2) && global.plot >= 150)
		{
			global.canact[myself][3] = 1;
			global.actname[myself][3] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_160_0");
			global.actactor[myself][3] = 2;
		}
	}
	if (global.monstertype[myself] == 7)
	{
		global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_170_0");
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
		global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_184_0");
		myact = choose(0, 1, 2);
		if (myact == 0)
		{
			global.canact[myself][1] = 1;
			global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_190_0");
			global.canact[myself][2] = 1;
			global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_192_0");
			global.canact[myself][3] = 1;
			global.actname[myself][3] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_194_0");
		}
		if (myact == 1)
		{
			global.canact[myself][1] = 1;
			global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_199_0");
			global.canact[myself][2] = 1;
			global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_201_0");
			global.canact[myself][3] = 1;
			global.actname[myself][3] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_203_0");
		}
		if (myact == 2)
		{
			global.canact[myself][1] = 1;
			global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_208_0");
			global.canact[myself][2] = 1;
			global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_210_0");
			global.canact[myself][3] = 1;
			global.actname[myself][3] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_212_0");
		}
		if (scr_havechar(2))
		{
			global.canact[myself][4] = 1;
			global.actname[myself][4] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_218_0");
			global.actactor[myself][4] = 3;
		}
	}
	if (global.monstertype[myself] == 8)
	{
		global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_226_0");
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
		global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_238_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_240_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_242_0");
		global.actactor[myself][2] = 3;
	}
	if (global.monstertype[myself] == 9)
	{
		global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_251_0");
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
		global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_263_0");
		if (global.encounterno == 7)
		{
			if (global.plot < 40)
				global.plot = 40;
		}
		if (scr_havechar(2))
		{
			global.canact[myself][1] = 1;
			global.actactor[myself][1] = 2;
			global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_271_0");
			global.canact[myself][2] = 1;
			global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_274_0");
			global.actactor[myself][2] = 3;
		}
	}
	if (global.monstertype[myself] == 10)
	{
		global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_282_0");
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
		global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_294_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_296_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_298_0");
		global.actactor[myself][2] = 3;
		if (scr_havechar(2))
		{
			global.canact[myself][3] = 1;
			global.actname[myself][3] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_307_0");
			global.actactor[myself][3] = 3;
		}
	}
	if (global.monstertype[myself] == 11)
	{
		global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_315_0");
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
		global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_327_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_329_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_331_0");
		global.actactor[myself][2] = 3;
		if (scr_havechar(2) && global.plot < 150)
		{
			global.canact[myself][3] = 1;
			global.actname[myself][3] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_337_0");
			global.actactor[myself][3] = 3;
		}
	}
	if (global.monstertype[myself] == 12)
	{
		global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_346_0");
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
		global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_358_0");
	}
	if (global.monstertype[myself] == 13)
	{
		global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_365_0");
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
		global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_377_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_379_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_381_0");
		global.actactor[myself][2] = 3;
		if (scr_havechar(2) && global.plot < 150)
		{
			global.canact[myself][3] = 1;
			global.actname[myself][3] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_386_0");
			global.actactor[myself][3] = 3;
		}
	}
	if (global.monstertype[myself] == 14)
	{
		global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_394_0");
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
		global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_406_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_408_0");
		if (scr_havechar(2) && global.plot >= 150)
		{
			global.canact[myself][2] = 1;
			global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_412_0");
			global.actactor[myself][2] = 2;
		}
	}
	if (global.monstertype[myself] == 15)
	{
		global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_420_0");
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
		global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_432_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_434_0");
		if (scr_havechar(2) && global.plot < 150)
		{
			global.canact[myself][2] = 1;
			global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_440_0");
			global.actactor[myself][2] = 3;
		}
	}
	if (global.monstertype[myself] == 16)
	{
		global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_449_0");
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
		global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_463_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_465_0");
		global.actactor[myself][1] = 3;
		global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_467_0");
		global.canact[myself][2] = 1;
		global.actactor[myself][2] = 3;
		global.actname[myself][3] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_470_0");
		global.canact[myself][3] = 1;
		global.actactor[myself][3] = 3;
		global.actname[myself][4] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_473_0");
		global.canact[myself][4] = 1;
		global.actname[myself][5] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_475_0");
		global.canact[myself][5] = 1;
		myact = choose(0, 1, 2);
	}
	if (global.monstertype[myself] == 17)
	{
		global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_484_0");
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
		global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_496_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_498_0");
		global.actactor[myself][1] = 3;
		global.canact[myself][2] = 1;
		global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_501_0");
		global.actactor[myself][2] = 3;
		global.canact[myself][3] = 1;
		global.actname[myself][3] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_504_0");
		global.canact[myself][4] = 1;
		global.actname[myself][4] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_506_0");
	}
	if (global.monstertype[myself] == 18)
	{
		global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_512_0");
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
		global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_524_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_527_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_530_0");
		global.actactor[myself][2] = 3;
	}
	if (global.monstertype[myself] == 19)
	{
		_armordf = global.itemdf[2][0] + global.itemdf[2][1] + global.itemdf[2][2];
		global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_538_0");
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
		global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_550_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_553_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_556_0");
		global.actactor[myself][2] = 3;
	}
	if (global.monstertype[myself] == 20)
	{
		global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_562_0");
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
		global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_574_0");
		global.canact[myself][1] = 1;
		global.actactor[myself][1] = 1;
		global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_579_0");
		global.actdesc[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_580_0");
		global.actcost[myself][1] = 50;
		global.canact[myself][2] = 1;
		global.actactor[myself][2] = 4;
		global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_585_0");
		global.actdesc[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_586_0");
		global.actcost[myself][2] = 125;
	}
	if (global.monstertype[myself] == 21)
	{
		global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_594_0");
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
		global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_606_0");
		if (global.flag[246] == 1)
			global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_607_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_609_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_611_0");
		global.actactor[myself][2] = 4;
	}
	if (global.monstertype[myself] == 22)
	{
		global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_619_0");
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
		global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_631_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_633_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_635_0");
		global.actactor[myself][2] = 2;
	}
	if (global.monstertype[myself] == 23)
	{
		global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_643_0");
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
		global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_655_0");
		global.canact[myself][1] = 1;
		global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_657_0");
		global.canact[myself][2] = 1;
		global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_659_0");
		global.actactor[myself][2] = 2;
	}
	if (global.monstertype[myself] == 25)
	{
		global.monstername[myself] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_665_0");
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
		global.actname[myself][0] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_677_0");
		global.canact[myself][1] = 1;
		global.actactor[myself][1] = 1;
		global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_682_0");
		global.actdesc[myself][1] = " ";
		global.actcost[myself][1] = 0;
		global.canact[myself][2] = 1;
		global.actactor[myself][2] = 2;
		global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_688_0");
		global.actdesc[myself][2] = " ";
		global.actcost[myself][2] = 0;
		global.canact[myself][3] = 1;
		global.actactor[myself][3] = 3;
		global.actname[myself][3] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_694_0");
		global.actdesc[myself][3] = " ";
		global.actcost[myself][3] = 0;
		if (global.tempflag[5] == 1)
		{
			global.canact[myself][1] = 1;
			global.actactor[myself][1] = 1;
			global.actname[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_704_0");
			global.actdesc[myself][1] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_705_0");
			global.actcost[myself][1] = 62;
		}
		if (global.tempflag[6] == 1)
		{
			global.canact[myself][2] = 1;
			global.actactor[myself][2] = 2;
			global.actname[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_714_0");
			global.actdesc[myself][2] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_715_0");
			global.actcost[myself][2] = 150;
		}
		if (global.tempflag[7] == 1)
		{
			global.canact[myself][3] = 1;
			global.actactor[myself][3] = 3;
			global.actname[myself][3] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_724_0");
			global.actdesc[myself][3] = scr_84_get_lang_string("scr_monstersetup_slash_scr_monstersetup_gml_725_0");
			global.actcost[myself][3] = 125;
		}
	}
}
