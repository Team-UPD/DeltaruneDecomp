function scr_encountersetup(arg0)
{
	xx = __view_get(e__VW.XView, 0);
	yy = __view_get(e__VW.YView, 0);
	for (i = 0; i < 3; i += 1)
	{
		global.heromakex[i] = xx + 80;
		global.heromakey[i] = yy + 50 + (80 * i);
		global.monsterinstancetype[i] = obj_baseenemy;
		global.monstertype[i] = 1;
		global.monstermakex[i] = xx + 500 + (20 * i);
		global.monstermakey[i] = yy + 40 + (90 * i);
	}
	global.monstertype[1] = 0;
	global.monstertype[2] = 0;
	if (global.char[0] != 0 && global.char[1] == 0 && global.char[2] == 0)
		global.heromakey[0] = yy + 140;
	if (global.char[0] != 0 && global.char[1] != 0 && global.char[2] == 0)
	{
		global.heromakey[0] = yy + 100;
		global.heromakey[1] = yy + 180;
	}
	global.battlemsg[0] = stringsetloc("* It is known.", "scr_encountersetup_slash_scr_encountersetup_gml_34_0");
	switch (arg0)
	{
		case 0:
			break;
		case 1:
			global.monsterinstancetype[0] = obj_baseenemy;
			global.monstertype[0] = 1;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 110;
			global.monsterinstancetype[1] = obj_baseenemy;
			global.monstertype[1] = 1;
			global.monstermakex[1] = xx + 500;
			global.monstermakey[1] = yy + 200;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Test enemies showed up.", "scr_encountersetup_slash_scr_encountersetup_gml_60_0");
			break;
		case 2:
			global.monsterinstancetype[0] = obj_lancerboss;
			global.monstertype[0] = 2;
			global.monstermakex[0] = xx + 540;
			global.monstermakey[0] = yy + 200;
			global.monstertype[1] = 0;
			global.monstertype[2] = 0;
			break;
		case 3:
			global.monsterinstancetype[0] = obj_dummyenemy;
			global.monstertype[0] = 3;
			global.monstermakex[0] = xx + 500;
			global.monstermakey[0] = yy + 160;
			if (instance_exists(obj_npc_room))
			{
				global.monstermakex[0] = obj_npc_room.xstart;
				global.monstermakey[0] = obj_npc_room.ystart;
			}
			global.monstertype[1] = 0;
			global.monstertype[2] = 0;
			break;
		case 4:
			global.monsterinstancetype[0] = obj_diamondenemy;
			global.monstertype[0] = 5;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 140;
			global.monstertype[1] = 0;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Rudinn drew near!", "scr_encountersetup_slash_scr_encountersetup_gml_98_0");
			if (global.flag[500] >= 1)
				global.battlemsg[0] = stringsetloc("* A different Rudinn from last time drew near!", "scr_encountersetup_slash_scr_encountersetup_gml_99_0");
			if (global.flag[500] == 2)
				global.battlemsg[0] = stringsetloc("* Assumedly another different Rudinn appeared!", "scr_encountersetup_slash_scr_encountersetup_gml_100_0");
			break;
		case 5:
			global.monsterinstancetype[0] = obj_diamondenemy;
			global.monstertype[0] = 5;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 110;
			global.monsterinstancetype[1] = obj_diamondenemy;
			global.monstertype[1] = 5;
			global.monstermakex[1] = xx + 500;
			global.monstermakey[1] = yy + 200;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* A necklace of Rudinns blocks your path.", "scr_encountersetup_slash_scr_encountersetup_gml_116_0");
			break;
		case 6:
			global.monsterinstancetype[0] = obj_diamondenemy;
			global.monstertype[0] = 5;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 110;
			global.monsterinstancetype[1] = obj_heartenemy;
			global.monstertype[1] = 6;
			global.monstermakex[1] = xx + 500;
			global.monstermakey[1] = yy + 200;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Rudinn and Hathy blocked the way!", "scr_encountersetup_slash_scr_encountersetup_gml_132_0");
			break;
		case 7:
			global.monsterinstancetype[0] = obj_smallcheckers_enemy;
			global.monstertype[0] = 9;
			global.monstermakex[0] = xx + 440;
			global.monstermakey[0] = yy + 150;
			global.monstertype[1] = 0;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* C. Round attacked violently!&* (You recall Ralsei's advice to include Susie in an ACT.)", "scr_encountersetup_slash_scr_encountersetup_gml_144_0");
			break;
		case 8:
			global.monsterinstancetype[0] = obj_clubsenemy;
			global.monstertype[0] = 16;
			global.monstermakex[0] = xx + 400;
			global.monstermakey[0] = yy + 120;
			global.monstertype[1] = 0;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Clover grew close!", "scr_encountersetup_slash_scr_encountersetup_gml_155_0");
			break;
		case 9:
			global.monsterinstancetype[0] = obj_heartenemy;
			global.monstertype[0] = 6;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 20;
			global.monsterinstancetype[1] = obj_heartenemy;
			global.monstertype[1] = 6;
			global.monstermakex[1] = xx + 500;
			global.monstermakey[1] = yy + 120;
			global.monsterinstancetype[2] = obj_heartenemy;
			global.monstertype[2] = 6;
			global.monstermakex[2] = xx + 460;
			global.monstermakey[2] = yy + 220;
			global.battlemsg[0] = stringsetloc("* Three Hathys blocked the way!", "scr_encountersetup_slash_scr_encountersetup_gml_174_0");
			break;
		case 12:
			global.monsterinstancetype[0] = obj_checkers_enemy;
			global.monstertype[0] = 10;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 120;
			global.monstertype[1] = 0;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Here it comes!", "scr_encountersetup_slash_scr_encountersetup_gml_188_0");
			break;
		case 13:
			global.monsterinstancetype[0] = obj_ponman_enemy;
			global.monstertype[0] = 11;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 110;
			global.monsterinstancetype[1] = obj_ponman_enemy;
			global.monstertype[1] = 11;
			global.monstermakex[1] = xx + 500;
			global.monstermakey[1] = yy + 200;
			global.battlemsg[0] = stringsetloc("* Ponman drew near!", "scr_encountersetup_slash_scr_encountersetup_gml_201_0");
			global.monstertype[2] = 0;
			break;
		case 14:
			global.monsterinstancetype[0] = obj_ponman_enemy;
			global.monstertype[0] = 11;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 20;
			global.monsterinstancetype[1] = obj_ponman_enemy;
			global.monstertype[1] = 11;
			global.monstermakex[1] = xx + 500;
			global.monstermakey[1] = yy + 120;
			global.monsterinstancetype[2] = obj_ponman_enemy;
			global.monstertype[2] = 11;
			global.monstermakex[2] = xx + 460;
			global.monstermakey[2] = yy + 220;
			global.battlemsg[0] = stringsetloc("* Ponman drew near!", "scr_encountersetup_slash_scr_encountersetup_gml_222_0");
			break;
		case 15:
			global.monsterinstancetype[0] = obj_clubsenemy;
			global.monstertype[0] = 7;
			global.monstermakex[0] = xx + 400;
			global.monstermakey[0] = yy + 30;
			global.monsterinstancetype[1] = obj_heartenemy;
			global.monstertype[1] = 6;
			global.monstermakex[1] = xx + 420;
			global.monstermakey[1] = yy + 200;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Clover and Hathy grew close!", "scr_encountersetup_slash_scr_encountersetup_gml_239_0");
			break;
		case 16:
			global.monsterinstancetype[0] = obj_rabbick_enemy;
			global.monstertype[0] = 13;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 140;
			global.monstertype[1] = 0;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Rabbick slithered in the way!", "scr_encountersetup_slash_scr_encountersetup_gml_250_0");
			break;
		case 17:
			global.monsterinstancetype[0] = obj_rabbick_enemy;
			global.monstertype[0] = 13;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 60;
			global.monsterinstancetype[1] = obj_rabbick_enemy;
			global.monstertype[1] = 13;
			global.monstermakex[1] = xx + 460;
			global.monstermakey[1] = yy + 180;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Rabbicks slithered in the way!", "scr_encountersetup_slash_scr_encountersetup_gml_266_0");
			break;
		case 18:
			global.monsterinstancetype[0] = obj_bloxer_enemy;
			global.monstertype[0] = 14;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 140;
			global.monstertype[1] = 0;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Bloxer assembled!", "scr_encountersetup_slash_scr_encountersetup_gml_277_0");
			break;
		case 19:
			global.monsterinstancetype[0] = obj_bloxer_enemy;
			global.monstertype[0] = 14;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 60;
			global.monsterinstancetype[1] = obj_bloxer_enemy;
			global.monstertype[1] = 14;
			global.monstermakex[1] = xx + 460;
			global.monstermakey[1] = yy + 180;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Bloxers assembled!", "scr_encountersetup_slash_scr_encountersetup_gml_293_0");
			break;
		case 20:
			global.monsterinstancetype[0] = obj_lancerboss2;
			global.monstertype[0] = 12;
			global.heromakex[0] = xx + 120;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 160;
			global.monstertype[1] = 0;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Lancer blocked the way!", "scr_encountersetup_slash_scr_encountersetup_gml_308_0");
			break;
		case 21:
			global.monsterinstancetype[0] = obj_jigsawryenemy;
			global.monstertype[0] = 15;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 140;
			global.monstertype[1] = 0;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Jigsawry drew near!", "scr_encountersetup_slash_scr_encountersetup_gml_319_0");
			if (global.flag[500] >= 1)
				global.battlemsg[0] = stringsetloc("* A different Jigsawry from last time drew near!", "scr_encountersetup_slash_scr_encountersetup_gml_320_0");
			if (global.flag[500] == 2)
				global.battlemsg[0] = stringsetloc("* Assumedly another different Jigsawry appeared!", "scr_encountersetup_slash_scr_encountersetup_gml_321_0");
			break;
		case 22:
			global.monsterinstancetype[0] = obj_jigsawryenemy;
			global.monstertype[0] = 15;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 20;
			global.monsterinstancetype[1] = obj_jigsawryenemy;
			global.monstertype[1] = 15;
			global.monstermakex[1] = xx + 500;
			global.monstermakey[1] = yy + 120;
			global.monsterinstancetype[2] = obj_jigsawryenemy;
			global.monstertype[2] = 15;
			global.monstermakex[2] = xx + 460;
			global.monstermakey[2] = yy + 220;
			global.battlemsg[0] = stringsetloc("* A board of Jigsawrys blocked the way!", "scr_encountersetup_slash_scr_encountersetup_gml_340_0");
			break;
		case 23:
			global.monsterinstancetype[0] = obj_jigsawryenemy;
			global.monstertype[0] = 15;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 20;
			global.monsterinstancetype[1] = obj_diamondenemy;
			global.monstertype[1] = 5;
			global.monstermakex[1] = xx + 500;
			global.monstermakey[1] = yy + 120;
			global.monsterinstancetype[2] = obj_heartenemy;
			global.monstertype[2] = 6;
			global.monstermakex[2] = xx + 460;
			global.monstermakey[2] = yy + 220;
			global.battlemsg[0] = stringsetloc("* Smorgasboard.", "scr_encountersetup_slash_scr_encountersetup_gml_359_0");
			break;
		case 24:
			global.monsterinstancetype[0] = obj_rabbick_enemy;
			global.monstertype[0] = 13;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 60;
			global.monsterinstancetype[1] = obj_diamondenemy;
			global.monstertype[1] = 5;
			global.monstermakex[1] = xx + 460;
			global.monstermakey[1] = yy + 180;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Rabbick slithered in the way!", "scr_encountersetup_slash_scr_encountersetup_gml_374_0");
			break;
		case 25:
			global.heromakex[0] = xx + 80;
			global.heromakey[0] = yy + 100;
			global.heromakex[1] = xx + 90;
			global.heromakey[1] = yy + 150;
			global.heromakex[2] = xx + 100;
			global.heromakey[2] = yy + 210;
			global.monsterinstancetype[0] = obj_joker;
			global.monstertype[0] = 20;
			global.monstermakex[0] = xx + 500;
			global.monstermakey[0] = yy + 160;
			global.monstertype[1] = 0;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* LET THE GAMES BEGIN!", "scr_encountersetup_slash_scr_encountersetup_gml_400_0");
			break;
		case 27:
			global.monsterinstancetype[0] = obj_checkers_enemy;
			global.monstertype[0] = 21;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 120;
			global.monstertype[1] = 0;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Here it comes^1. Again.", "scr_encountersetup_slash_scr_encountersetup_gml_413_0");
			global.heromakey[0] = yy + 65;
			break;
		case 28:
			global.monsterinstancetype[0] = obj_rudinnranger;
			global.monstertype[0] = 22;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 110;
			global.monsterinstancetype[1] = obj_rudinnranger;
			global.monstertype[1] = 22;
			global.monstermakex[1] = xx + 500;
			global.monstermakey[1] = yy + 200;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Rudinn Rangers came sparkling into view!", "scr_encountersetup_slash_scr_encountersetup_gml_430_0");
			break;
		case 29:
			global.monsterinstancetype[0] = obj_headhathy;
			global.monstertype[0] = 23;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 110;
			global.monsterinstancetype[1] = obj_headhathy;
			global.monstertype[1] = 23;
			global.monstermakex[1] = xx + 500;
			global.monstermakey[1] = yy + 200;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Head Hathy blocked the way quietly!", "scr_encountersetup_slash_scr_encountersetup_gml_446_0");
			break;
		case 30:
			global.monsterinstancetype[0] = obj_headhathy;
			global.monstertype[0] = 23;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 20;
			global.monsterinstancetype[1] = obj_headhathy;
			global.monstertype[1] = 23;
			global.monstermakex[1] = xx + 500;
			global.monstermakey[1] = yy + 120;
			global.monsterinstancetype[2] = obj_headhathy;
			global.monstertype[2] = 23;
			global.monstermakex[2] = xx + 460;
			global.monstermakey[2] = yy + 220;
			global.battlemsg[0] = stringsetloc("* Head Hathy blocked the way quietly! (x3)", "scr_encountersetup_slash_scr_encountersetup_gml_465_0");
			break;
		case 31:
			global.monsterinstancetype[0] = obj_susieenemy;
			global.monstertype[0] = 19;
			global.monstermakex[0] = xx + 520;
			global.monstermakey[0] = yy + 80;
			global.monsterinstancetype[1] = obj_lancerboss3;
			global.monstertype[1] = 18;
			global.monstermakex[1] = xx + 540;
			global.monstermakey[1] = yy + 240;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Two bad guys blocked the way!", "scr_encountersetup_slash_scr_encountersetup_gml_479_0");
			break;
		case 32:
			global.monsterinstancetype[0] = obj_rabbick_enemy;
			global.monstertype[0] = 13;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 20;
			global.monsterinstancetype[1] = obj_rabbick_enemy;
			global.monstertype[1] = 13;
			global.monstermakex[1] = xx + 500;
			global.monstermakey[1] = yy + 120;
			global.monsterinstancetype[2] = obj_rabbick_enemy;
			global.monstertype[2] = 13;
			global.monstermakex[2] = xx + 460;
			global.monstermakey[2] = yy + 220;
			global.battlemsg[0] = stringsetloc("* Rabbicks slithered in the way!", "scr_encountersetup_slash_scr_encountersetup_gml_500_0");
			break;
		case 33:
			global.monsterinstancetype[0] = obj_diamondenemy;
			global.monstertype[0] = 5;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 20;
			global.monsterinstancetype[1] = obj_heartenemy;
			global.monstertype[1] = 6;
			global.monstermakex[1] = xx + 500;
			global.monstermakey[1] = yy + 120;
			global.monsterinstancetype[2] = obj_diamondenemy;
			global.monstertype[2] = 5;
			global.monstermakex[2] = xx + 460;
			global.monstermakey[2] = yy + 220;
			global.battlemsg[0] = stringsetloc("* Various guys appeared!", "scr_encountersetup_slash_scr_encountersetup_gml_521_0");
			break;
		case 40:
			global.monsterinstancetype[0] = obj_king_boss;
			global.monstertype[0] = 25;
			global.monstermakex[0] = xx + 460;
			global.monstermakey[0] = yy + 70;
			global.monstertype[1] = 0;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* King blocked the way!", "scr_encountersetup_slash_scr_encountersetup_gml_533_0");
			break;
		case 50:
			global.monsterinstancetype[0] = obj_omawaroid_enemy;
			global.monstertype[0] = 30;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 110;
			global.monsterinstancetype[1] = obj_omawaroid_enemy;
			global.monstertype[1] = 30;
			global.monstermakex[1] = xx + 500;
			global.monstermakey[1] = yy + 200;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Ambyu-Lances beeped towards you!", "scr_encountersetup_slash_scr_encountersetup_gml_554_0");
			if (global.chapter == 2)
			{
				if (room == room_dw_city_postbaseball_1)
					global.battlemsg[0] = stringsetloc("* Hey Kris^1, lemme show you my ultimate healing!", "scr_encountersetup_slash_scr_encountersetup_gml_559_0");
			}
			break;
		case 51:
			global.monsterinstancetype[0] = obj_poppup_enemy;
			global.monstertype[0] = 31;
			global.monstermakex[0] = xx + 440;
			global.monstermakey[0] = yy + 50;
			global.monsterinstancetype[1] = obj_poppup_enemy;
			global.monstertype[1] = 31;
			global.monstermakex[1] = xx + 490;
			global.monstermakey[1] = yy + 120;
			global.monstertype[2] = 0;
			global.monstermakex[2] = xx + 440;
			global.monstermakey[2] = yy + 190;
			global.battlemsg[0] = stringsetloc("* Poppups popped up!", "scr_encountersetup_slash_scr_encountersetup_gml_568_0");
			break;
		case 52:
			global.monsterinstancetype[0] = obj_tasque_enemy;
			global.monstertype[0] = 32;
			global.monstermakex[0] = xx + 440;
			global.monstermakey[0] = yy + 50;
			global.monsterinstancetype[1] = obj_tasque_enemy;
			global.monstertype[1] = 32;
			global.monstermakex[1] = xx + 480;
			global.monstermakey[1] = yy + 160;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Tasques crossed your path!", "scr_encountersetup_slash_scr_encountersetup_gml_585_0");
			break;
		case 53:
			global.monsterinstancetype[0] = obj_werewire_enemy;
			global.monstertype[0] = 33;
			global.monstermakex[0] = xx + 490;
			global.monstermakey[0] = yy + 60;
			global.monsterinstancetype[1] = obj_werewire_enemy;
			global.monstertype[1] = 33;
			global.monstermakex[1] = xx + 520;
			global.monstermakey[1] = yy + 190;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Werewires swung in!", "scr_encountersetup_slash_scr_encountersetup_gml_603_0");
			break;
		case 54:
			global.monsterinstancetype[0] = obj_maus_enemy;
			global.monstertype[0] = 34;
			global.monstermakex[0] = xx + 478;
			global.monstermakey[0] = yy + 98;
			global.monsterinstancetype[1] = obj_maus_enemy;
			global.monstertype[1] = 34;
			global.monstermakex[1] = xx + 500;
			global.monstermakey[1] = yy + 202;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Maice blocked the way! ", "scr_encountersetup_slash_scr_encountersetup_gml_620_0");
			break;
		case 55:
			global.monsterinstancetype[0] = obj_virovirokun_enemy;
			global.monstertype[0] = 35;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 40;
			global.monsterinstancetype[1] = obj_virovirokun_enemy;
			global.monstertype[1] = 35;
			global.monstermakex[1] = xx + 510;
			global.monstermakey[1] = yy + 154;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Virovirokun floated in!", "scr_encountersetup_slash_scr_encountersetup_gml_637_0");
			if (global.ambush == 2)
				global.battlemsg[0] = stringsetloc("* First strike!", "scr_encountersetup_slash_scr_encountersetup_gml_640_0");
			break;
		case 56:
			global.flag[426] = choose(0, 1, 2, 3);
			if (global.flag[541] == 0)
				global.flag[426] = -1;
			global.monsterinstancetype[0] = obj_swatchling_enemy;
			global.monstertype[0] = 36;
			global.monstermakex[0] = xx + 394;
			global.monstermakey[0] = yy + 7;
			global.monsterinstancetype[1] = obj_swatchling_enemy;
			global.monstertype[1] = 36;
			global.monstermakex[1] = xx + 490;
			global.monstermakey[1] = yy + 74;
			global.monsterinstancetype[2] = obj_swatchling_enemy;
			global.monstertype[2] = 36;
			global.monstermakex[2] = xx + 394;
			global.monstermakey[2] = yy + 180;
			global.battlemsg[0] = stringsetloc("* Swatchlings bowed in!", "scr_encountersetup_slash_scr_encountersetup_gml_661_0");
			break;
		case 57:
			global.monsterinstancetype[0] = obj_tasque_enemy;
			global.monstertype[0] = 32;
			global.monstermakex[0] = xx + 450;
			global.monstermakey[0] = yy + 35;
			global.monsterinstancetype[1] = obj_tasque_manager_enemy;
			global.monstertype[1] = 42;
			global.monstermakex[1] = xx + 486;
			global.monstermakey[1] = yy + 95;
			global.monsterinstancetype[2] = obj_tasque_enemy;
			global.monstertype[2] = 32;
			global.monstermakex[2] = xx + 450;
			global.monstermakey[2] = yy + 220;
			global.battlemsg[0] = stringsetloc("* Tasque Manager blocks the way!", "scr_encountersetup_slash_scr_encountersetup_gml_681_0");
			break;
		case 58:
			global.monsterinstancetype[0] = obj_berdlyb_enemy;
			global.monstertype[0] = 43;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 100;
			global.monsterinstancetype[1] = 0;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Berdly rides in!", "scr_encountersetup_slash_scr_encountersetup_gml_695_0");
			break;
		case 59:
			global.monsterinstancetype[0] = obj_queen_enemy;
			global.monstertype[0] = 48;
			if (scr_sideb_get_phase() < 2)
			{
				global.monstermakex[0] = xx + 470;
				global.monstermakey[0] = yy + 120;
			}
			else
			{
				global.monstermakex[0] = xx + 450;
				global.monstermakey[0] = yy + 98;
			}
			global.monstertype[1] = 0;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Queen blocks the way!", "scr_encountersetup_slash_scr_encountersetup_gml_708_0");
			break;
		case 60:
			global.monsterinstancetype[0] = obj_spamton_enemy;
			global.monstertype[0] = 49;
			global.monstermakex[0] = xx + 490;
			global.monstermakey[0] = yy + 180;
			global.heromakex[0] = xx + 90;
			global.heromakey[0] = yy + 170;
			global.battlemsg[0] = stringsetloc("* DON'T YOU WANNA BE A BIG SHOT?", "scr_encountersetup_slash_scr_encountersetup_gml_720_0");
			break;
		case 61:
			global.monsterinstancetype[0] = obj_spamton_neo_enemy;
			global.monstertype[0] = 50;
			global.monstermakex[0] = xx + 460;
			global.monstermakey[0] = yy + 80;
			global.monstertype[2] = 0;
			global.heromakex[0] = xx + 80;
			global.heromakey[0] = yy + 60;
			if (scr_sideb_get_phase() > 2)
				global.heromakey[0] = yy + 173;
			global.battlemsg[0] = stringsetloc("* It's time to be a BIG SHOT!", "scr_encountersetup_slash_scr_encountersetup_gml_732_0");
			break;
		case 62:
			global.monsterinstancetype[0] = obj_sweet_enemy;
			global.monstertype[0] = 39;
			global.monstermakex[0] = xx + 460;
			global.monstermakey[0] = yy + 40;
			global.monsterinstancetype[1] = obj_kk_enemy;
			global.monstertype[1] = 38;
			global.monstermakex[1] = xx + 500;
			global.monstermakey[1] = yy + 90;
			global.monsterinstancetype[2] = obj_hatguy_enemy;
			global.monstertype[2] = 37;
			global.monstermakex[2] = xx + 480;
			global.monstermakey[2] = yy + 200;
			global.battlemsg[0] = stringsetloc("* Sweet Cap'n Cakes block your way!", "scr_encountersetup_slash_scr_encountersetup_gml_752_0");
			break;
		case 63:
			if (i_ex(obj_ch2_scene21_loop))
			{
				with (obj_ch2_scene21_loop)
				{
					global.heromakex[0] = kr_actor.x;
					global.heromakey[0] = kr_actor.y;
					global.heromakex[1] = ra_actor.x;
					global.heromakey[1] = ra_actor.y;
				}
			}
			global.monsterinstancetype[0] = obj_rouxls_enemy;
			global.monstertype[0] = 45;
			global.monstermakex[0] = xx + 500;
			global.monstermakey[0] = yy + 60;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Thrash Machine reluctantly fights you!", "scr_encountersetup_slash_scr_encountersetup_gml_776_0");
			break;
		case 64:
			global.flag[426] = choose(4, 5, 6, 7, 8);
			global.monsterinstancetype[0] = obj_swatchling_enemy;
			global.monstertype[0] = 36;
			global.monstermakex[0] = xx + 432;
			global.monstermakey[0] = yy + 24;
			global.monsterinstancetype[1] = obj_swatchling_enemy;
			global.monstertype[1] = 36;
			global.monstermakex[1] = xx + 488;
			global.monstermakey[1] = yy + 142;
			global.battlemsg[0] = stringsetloc("* Swatchlings bowed in!", "scr_encountersetup_slash_scr_encountersetup_gml_791_0");
			break;
		case 65:
			global.monsterinstancetype[0] = obj_werewerewire_enemy;
			global.monstertype[0] = 40;
			global.monstermakex[0] = xx + 502;
			global.monstermakey[0] = yy + 70;
			global.monsterinstancetype[1] = obj_werewerewire_enemy;
			global.monstertype[1] = 40;
			global.monstermakex[1] = xx + 456;
			global.monstermakey[1] = yy + 190;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Werewerewire strongly blocks the way!", "scr_encountersetup_slash_scr_encountersetup_gml_808_0");
			break;
		case 66:
			global.monsterinstancetype[0] = obj_maus_enemy;
			global.monstertype[0] = 34;
			global.monstermakex[0] = xx + 500;
			global.monstermakey[0] = yy + 172;
			global.battlemsg[0] = stringsetloc("* Maus blocked the way! ", "scr_encountersetup_slash_scr_encountersetup_gml_817_0");
			break;
		case 67:
			global.monsterinstancetype[0] = obj_virovirokun_enemy;
			global.monstertype[0] = 35;
			global.monstermakex[0] = xx + 494;
			global.monstermakey[0] = yy + 110;
			global.monstertype[1] = 0;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* H-huh!? What's going on!?", "scr_encountersetup_slash_scr_encountersetup_gml_831_0");
			break;
		case 68:
			global.monsterinstancetype[0] = obj_virovirokun_enemy;
			global.monstertype[0] = 35;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 40;
			global.monsterinstancetype[1] = obj_omawaroid_enemy;
			global.monstertype[1] = 30;
			global.monstermakex[1] = xx + 500;
			global.monstermakey[1] = yy + 160;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Virovirokun and Ambyu-lance are fighting each other!", "scr_encountersetup_slash_scr_encountersetup_gml_848_0");
			break;
		case 69:
			global.monsterinstancetype[0] = obj_omawaroid_enemy;
			global.monstertype[0] = 30;
			global.monstermakex[0] = xx + 500;
			global.monstermakey[0] = yy + 40;
			global.monsterinstancetype[1] = obj_virovirokun_enemy;
			global.monstertype[1] = 35;
			global.monstermakex[1] = xx + 480;
			global.monstermakey[1] = yy + 160;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Virovirokun and Ambyu-lance are fighting each other!", "scr_encountersetup_slash_scr_encountersetup_gml_865_0");
			break;
		case 70:
			global.monsterinstancetype[0] = obj_poppup_enemy;
			global.monstertype[0] = 31;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 150;
			global.monsterinstancetype[1] = obj_tasque_enemy;
			global.monstertype[1] = 32;
			global.monstermakex[1] = xx + 480;
			global.monstermakey[1] = yy + 170;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Animal house.", "scr_encountersetup_slash_scr_encountersetup_gml_882_0");
			break;
		case 71:
			global.heromakex[0] = xx + 94;
			global.heromakey[0] = yy + 50;
			global.heromakex[1] = xx + 80;
			global.heromakey[1] = yy + 122;
			global.heromakex[2] = xx + 72;
			global.heromakey[2] = yy + 200;
			global.monsterinstancetype[0] = obj_clubsenemy;
			global.monstertype[0] = 47;
			global.monstermakex[0] = xx + 400;
			global.monstermakey[0] = yy + 80;
			global.battlemsg[0] = stringsetloc("* Clover joins the stage!", "scr_encountersetup_slash_scr_encountersetup_gml_892_0");
			break;
		case 72:
			global.heromakex[0] = xx + 94;
			global.heromakey[0] = yy + 50;
			global.heromakex[1] = xx + 80;
			global.heromakey[1] = yy + 122;
			global.heromakex[2] = xx + 72;
			global.heromakey[2] = yy + 200;
			global.monsterinstancetype[0] = obj_dojograzeenemy;
			global.monstertype[0] = 42;
			global.monstermakex[0] = xx + 440;
			global.monstermakey[0] = yy + 100;
			global.battlemsg[0] = stringsetloc("* It's a grazing adventure.", "scr_encountersetup_slash_scr_encountersetup_gml_901_0");
			break;
		case 73:
			global.monsterinstancetype[0] = obj_virovirokun_enemy;
			global.monstertype[0] = 35;
			global.monstermakex[0] = xx + 494;
			global.monstermakey[0] = yy + 110;
			global.monstertype[1] = 0;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("\\EE* H-huh!? What's going on!?&* What are we doing!?", "scr_encountersetup_slash_scr_encountersetup_gml_915_0");
			break;
		case 74:
			global.monsterinstancetype[0] = obj_werewire_enemy;
			global.monstertype[0] = 33;
			global.monstermakex[0] = xx + 494;
			global.monstermakey[0] = yy + 64;
			global.monsterinstancetype[1] = obj_tasque_enemy;
			global.monstertype[1] = 32;
			global.monstermakex[1] = xx + 430;
			global.monstermakey[1] = yy + 130;
			global.monsterinstancetype[2] = obj_virovirokun_enemy;
			global.monstertype[2] = 35;
			global.monstermakex[2] = xx + 495;
			global.monstermakey[2] = yy + 204;
			global.battlemsg[0] = stringsetloc("* Smorgasbord 2.", "scr_encountersetup_slash_scr_encountersetup_gml_935_0");
			break;
		case 75:
			global.monsterinstancetype[0] = obj_werewire_enemy;
			global.monstertype[0] = 33;
			global.monstermakex[0] = xx + 540;
			global.monstermakey[0] = yy + 85;
			global.monsterinstancetype[1] = obj_werewire_enemy;
			global.monstertype[1] = 33;
			global.monstermakex[1] = xx + 435;
			global.monstermakey[1] = yy + 144;
			global.monsterinstancetype[2] = obj_werewire_enemy;
			global.monstertype[2] = 33;
			global.monstermakex[2] = xx + 522;
			global.monstermakey[2] = yy + 214;
			global.battlemsg[0] = stringsetloc("* Werewires swung in!", "scr_encountersetup_slash_scr_encountersetup_gml_955_0");
			break;
		case 76:
			global.monsterinstancetype[0] = obj_werewire_enemy;
			global.monstertype[0] = 33;
			global.monstermakex[0] = xx + 500;
			global.monstermakey[0] = yy + 62;
			global.monsterinstancetype[1] = obj_werewire_enemy;
			global.monstertype[1] = 33;
			global.monstermakex[1] = xx + 434;
			global.monstermakey[1] = yy + 126;
			global.monsterinstancetype[2] = obj_maus_enemy;
			global.monstertype[2] = 34;
			global.monstermakex[2] = xx + 530;
			global.monstermakey[2] = yy + 236;
			global.battlemsg[0] = stringsetloc("* Werewire and Maus swung down like stringed superheroes!", "scr_encountersetup_slash_scr_encountersetup_gml_975_0");
			break;
		case 77:
			global.monsterinstancetype[0] = obj_poppup_enemy;
			global.monstertype[0] = 31;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 150;
			global.monsterinstancetype[1] = obj_omawaroid_enemy;
			global.monstertype[1] = 30;
			global.monstermakex[1] = xx + 480;
			global.monstermakey[1] = yy + 170;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Ambyu-Lance and its pet appeared!", "scr_encountersetup_slash_scr_encountersetup_gml_992_0");
			break;
		case 78:
			global.flag[426] = choose(4, 5, 6, 7, 8);
			global.monsterinstancetype[0] = obj_swatchling_enemy;
			global.monstertype[0] = 36;
			global.monstermakex[0] = xx + 390;
			global.monstermakey[0] = yy + 18;
			global.monsterinstancetype[1] = obj_swatchling_enemy;
			global.monstertype[1] = 36;
			global.monstermakex[1] = xx + 394;
			global.monstermakey[1] = yy + 180;
			global.monsterinstancetype[0] = obj_poppup_enemy;
			global.monstertype[2] = 31;
			global.monstermakex[2] = xx + 460;
			global.monstermakey[2] = yy + 240;
			global.battlemsg[0] = stringsetloc("* Poppup and caretakers appeared!", "scr_encountersetup_slash_scr_encountersetup_gml_1012_0");
			break;
		case 79:
			global.monsterinstancetype[0] = obj_maus_enemy;
			global.monstertype[0] = 34;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 70;
			global.monsterinstancetype[1] = obj_maus_enemy;
			global.monstertype[1] = 34;
			global.monstermakex[1] = xx + 530;
			global.monstermakey[1] = yy + 142;
			global.monsterinstancetype[2] = obj_maus_enemy;
			global.monstertype[2] = 34;
			global.monstermakex[2] = xx + 468;
			global.monstermakey[2] = yy + 214;
			global.battlemsg[0] = stringsetloc("* Maice blocked the way!", "scr_encountersetup_slash_scr_encountersetup_gml_1032_0");
			break;
		case 80:
			global.flag[426] = choose(4, 5, 6, 7, 8);
			global.monsterinstancetype[0] = obj_swatchling_enemy;
			global.monstertype[0] = 36;
			global.monstermakex[0] = xx + 410;
			global.monstermakey[0] = yy + 18;
			global.monsterinstancetype[1] = obj_swatchling_enemy;
			global.monstertype[1] = 36;
			global.monstermakex[1] = xx + 482;
			global.monstermakey[1] = yy + 100;
			global.monsterinstancetype[2] = obj_maus_enemy;
			global.monstertype[2] = 34;
			global.monstermakex[2] = xx + 466;
			global.monstermakey[2] = yy + 240;
			global.battlemsg[0] = stringsetloc("* Swatchling and vermin appeared!", "scr_encountersetup_slash_scr_encountersetup_gml_1052_0");
			break;
		case 81:
			global.monsterinstancetype[0] = obj_werewerewire_enemy;
			global.monstertype[0] = 40;
			global.monstermakex[0] = xx + 482;
			global.monstermakey[0] = yy + 164;
			global.monsterinstancetype[1] = 0;
			global.monsterinstancetype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Werewerewire strongly blocks the way!", "scr_encountersetup_slash_scr_encountersetup_gml_1066_0");
			break;
		case 82:
			global.monsterinstancetype[0] = obj_berdlyb2_enemy;
			global.monstertype[0] = 46;
			global.monstermakex[0] = xx + 470;
			global.monstermakey[0] = yy + 144;
			global.monstertype[1] = 0;
			global.monstermakex[1] = xx + 540;
			global.monstermakey[1] = yy + 84;
			global.monstertype[2] = 0;
			global.monstermakex[2] = xx + 522;
			global.monstermakey[2] = yy + 214;
			global.battlemsg[0] = stringsetloc("* Berdly blocks the way!", "scr_encountersetup_slash_scr_encountersetup_gml_1076_0");
			break;
		case 83:
			global.monsterinstancetype[0] = obj_mauswheel_enemy;
			global.monstertype[0] = 44;
			global.monstermakex[0] = xx + 450;
			global.monstermakey[0] = yy + 100;
			global.monsterinstancetype[1] = 0;
			global.monsterinstancetype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Mauswheel spins into you!", "scr_encountersetup_slash_scr_encountersetup_gml_1090_0");
			break;
		case 84:
			global.monsterinstancetype[0] = obj_gigaqueen_enemy;
			global.monstertype[0] = 51;
			global.monstermakex[0] = xx + 150;
			global.monstermakey[0] = yy + 0;
			global.monsterinstancetype[1] = 0;
			global.monsterinstancetype[2] = 0;
			global.battlemsg[0] = stringsetloc("* GIGA Queen blocks the way!", "scr_encountersetup_slash_scr_encountersetup_gml_1104_0");
			break;
		case 85:
			global.monsterinstancetype[0] = obj_omawaroid_enemy;
			global.monstertype[0] = 30;
			global.monstermakex[0] = xx + 500;
			global.monstermakey[0] = yy + 42;
			global.monsterinstancetype[1] = obj_omawaroid_enemy;
			global.monstertype[1] = 30;
			global.monstermakex[1] = xx + 422;
			global.monstermakey[1] = yy + 134;
			global.monsterinstancetype[2] = obj_omawaroid_enemy;
			global.monstertype[2] = 30;
			global.monstermakex[2] = xx + 500;
			global.monstermakey[2] = yy + 200;
			global.battlemsg[0] = stringsetloc("* Ambyu-Lances beeped towards you!", "scr_encountersetup_slash_scr_encountersetup_gml_551_0");
			break;
		case 86:
			global.monsterinstancetype[0] = obj_virovirokun_enemy;
			global.monstertype[0] = 35;
			global.monstermakex[0] = xx + 412;
			global.monstermakey[0] = yy + 24;
			global.monsterinstancetype[1] = obj_tasque_enemy;
			global.monstertype[1] = 32;
			global.monstermakex[1] = xx + 482;
			global.monstermakey[1] = yy + 126;
			global.monsterinstancetype[2] = obj_virovirokun_enemy;
			global.monstertype[2] = 35;
			global.monstermakex[2] = xx + 412;
			global.monstermakey[2] = yy + 184;
			global.battlemsg[0] = stringsetloc("* Tasque and Co. drew near!", "scr_encountersetup_slash_scr_encountersetup_gml_1156_0");
			break;
		case 87:
			global.monsterinstancetype[0] = obj_tasque_enemy;
			global.monstertype[0] = 32;
			global.monstermakex[0] = xx + 412;
			global.monstermakey[0] = yy + 24;
			global.monsterinstancetype[1] = obj_tasque_enemy;
			global.monstertype[1] = 32;
			global.monstermakex[1] = xx + 474;
			global.monstermakey[1] = yy + 114;
			global.monsterinstancetype[2] = obj_tasque_enemy;
			global.monstertype[2] = 32;
			global.monstermakex[2] = xx + 412;
			global.monstermakey[2] = yy + 184;
			global.battlemsg[0] = stringsetloc("* Tasques zoomed towards you!", "scr_encountersetup_slash_scr_encountersetup_gml_1175_0");
			break;
		case 88:
			global.monsterinstancetype[0] = obj_poppup_enemy;
			global.monstertype[0] = 31;
			global.monstermakex[0] = xx + 434;
			global.monstermakey[0] = yy + 36;
			global.monsterinstancetype[1] = obj_virovirokun_enemy;
			global.monstertype[1] = 35;
			global.monstermakex[1] = xx + 500;
			global.monstermakey[1] = yy + 100;
			global.monstertype[2] = 0;
			global.monstermakex[2] = xx + 440;
			global.monstermakey[2] = yy + 190;
			global.battlemsg[0] = stringsetloc("* Poppup and Virovirokun Appeared!", "scr_encountersetup_slash_scr_encountersetup_gml_1233_0");
			break;
		case 89:
			global.heromakex[0] = xx + 94;
			global.heromakey[0] = yy + 50;
			global.heromakex[1] = xx + 80;
			global.heromakey[1] = yy + 122;
			global.heromakex[2] = xx + 72;
			global.heromakey[2] = yy + 200;
			global.monsterinstancetype[0] = obj_tasque_manager_enemy;
			global.monstertype[0] = 42;
			global.monstermakex[0] = xx + 487;
			global.monstermakey[0] = yy + 94;
			global.monstertype[1] = 0;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Graze!", "scr_encountersetup_slash_scr_encountersetup_gml_1247_0");
			break;
		case 90:
			global.heromakex[0] = xx + 94;
			global.heromakey[0] = yy + 50;
			global.heromakex[1] = xx + 80;
			global.heromakey[1] = yy + 122;
			global.heromakex[2] = xx + 72;
			global.heromakey[2] = yy + 200;
			global.monsterinstancetype[0] = obj_werewire_enemy;
			global.monstertype[0] = 33;
			global.monstermakex[0] = xx + 476;
			global.monstermakey[0] = yy + 70;
			global.monsterinstancetype[1] = obj_werewire_enemy;
			global.monstertype[1] = 33;
			global.monstermakex[1] = xx + 454;
			global.monstermakey[1] = yy + 168;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Round One!", "scr_encountersetup_slash_scr_encountersetup_gml_1263_0");
			break;
		case 91:
			global.heromakex[0] = xx + 94;
			global.heromakey[0] = yy + 50;
			global.heromakex[1] = xx + 80;
			global.heromakey[1] = yy + 122;
			global.heromakex[2] = xx + 72;
			global.heromakey[2] = yy + 200;
			global.monsterinstancetype[0] = obj_poppup_enemy;
			global.monstertype[0] = 31;
			global.monstermakex[0] = xx + 412;
			global.monstermakey[0] = yy + 40;
			global.monsterinstancetype[1] = obj_omawaroid_enemy;
			global.monstertype[1] = 30;
			global.monstermakex[1] = xx + 466;
			global.monstermakey[1] = yy + 106;
			global.monsterinstancetype[2] = obj_virovirokun_enemy;
			global.monstertype[2] = 35;
			global.monstermakex[2] = xx + 412;
			global.monstermakey[2] = yy + 184;
			global.battlemsg[0] = stringsetloc("* Round Two!", "scr_encountersetup_slash_scr_encountersetup_gml_1282_0");
			break;
		case 92:
			global.heromakex[0] = xx + 94;
			global.heromakey[0] = yy + 50;
			global.heromakex[1] = xx + 80;
			global.heromakey[1] = yy + 122;
			global.heromakex[2] = xx + 72;
			global.heromakey[2] = yy + 200;
			global.monsterinstancetype[0] = obj_tasque_enemy;
			global.monstertype[0] = 32;
			global.monstermakex[0] = xx + 432;
			global.monstermakey[0] = yy + 52;
			global.monsterinstancetype[1] = obj_tasque_enemy;
			global.monstertype[1] = 32;
			global.monstermakex[1] = xx + 476;
			global.monstermakey[1] = yy + 140;
			global.monsterinstancetype[2] = obj_maus_enemy;
			global.monstertype[2] = 34;
			global.monstermakex[2] = xx + 512;
			global.monstermakey[2] = yy + 236;
			global.battlemsg[0] = stringsetloc("* Round Three!", "scr_encountersetup_slash_scr_encountersetup_gml_1301_0");
			break;
		case 93:
			global.flag[426] = choose(0, 1, 2, 3);
			global.heromakex[0] = xx + 94;
			global.heromakey[0] = yy + 50;
			global.heromakex[1] = xx + 80;
			global.heromakey[1] = yy + 122;
			global.heromakex[2] = xx + 72;
			global.heromakey[2] = yy + 200;
			global.monsterinstancetype[0] = obj_swatchling_enemy;
			global.monstertype[0] = 36;
			global.monstermakex[0] = xx + 394;
			global.monstermakey[0] = yy + 8;
			global.monsterinstancetype[1] = obj_swatchling_enemy;
			global.monstertype[1] = 36;
			global.monstermakex[1] = xx + 490;
			global.monstermakey[1] = yy + 74;
			global.monsterinstancetype[2] = obj_swatchling_enemy;
			global.monstertype[2] = 36;
			global.monstermakex[2] = xx + 394;
			global.monstermakey[2] = yy + 160;
			global.battlemsg[0] = stringsetloc("* Round Four!", "scr_encountersetup_slash_scr_encountersetup_gml_1323_0");
			break;
		case 94:
			global.heromakex[0] = xx + 94;
			global.heromakey[0] = yy + 50;
			global.heromakex[1] = xx + 80;
			global.heromakey[1] = yy + 122;
			global.heromakex[2] = xx + 72;
			global.heromakey[2] = yy + 200;
			global.monsterinstancetype[0] = obj_werewerewire_enemy;
			global.monstertype[0] = 40;
			global.monstermakex[0] = xx + 464;
			global.monstermakey[0] = yy + 68;
			global.monsterinstancetype[1] = obj_werewerewire_enemy;
			global.monstertype[1] = 40;
			global.monstermakex[1] = xx + 494;
			global.monstermakey[1] = yy + 184;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Final Round!", "scr_encountersetup_slash_scr_encountersetup_gml_1339_0");
			break;
		case 95:
			global.monsterinstancetype[0] = obj_werewire_enemy;
			global.monstertype[0] = 33;
			global.monstermakex[0] = xx + 502;
			global.monstermakey[0] = yy + 144;
			global.monstertype[1] = 0;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Werewire appeared.", "scr_encountersetup_slash_scr_encountersetup_gml_1351_0");
			break;
		case 96:
			global.monsterinstancetype[0] = obj_virovirokun_enemy;
			global.monstertype[0] = 35;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 120;
			global.monstertype[1] = 0;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Virovirokun floated in!", "scr_encountersetup_slash_scr_encountersetup_gml_637_0");
			break;
		case 97:
			global.monsterinstancetype[0] = obj_omawaroid_enemy;
			global.monstertype[0] = 30;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 114;
			global.monstertype[1] = 0;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Ambyu-Lance beeps towards you!", "scr_encountersetup_slash_scr_encountersetup_gml_1377_0");
			break;
		case 98:
			global.monsterinstancetype[0] = obj_tasque_enemy;
			global.monstertype[0] = 32;
			global.monstermakex[0] = xx + 494;
			global.monstermakey[0] = yy + 144;
			global.monstertype[1] = 0;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Tasque crossed your path!", "scr_encountersetup_slash_scr_encountersetup_gml_1390_0");
			break;
		case 99:
			global.monsterinstancetype[0] = obj_baseenemy;
			global.monstertype[0] = 1;
			global.monstermakex[0] = xx + 480;
			global.monstermakey[0] = yy + 80;
			global.monsterinstancetype[1] = obj_baseenemy;
			global.monstertype[1] = 1;
			global.monstermakex[1] = xx + 500;
			global.monstermakey[1] = yy + 160;
			global.monsterinstancetype[2] = obj_baseenemy;
			global.monstertype[2] = 1;
			global.monstermakex[2] = xx + 520;
			global.monstermakey[2] = yy + 240;
			global.monstertype[2] = 0;
			global.battlemsg[0] = stringsetloc("* Test enemies showed up.", "scr_encountersetup_slash_scr_encountersetup_gml_60_0");
			break;
		case 100:
			global.heromakex[0] = xx + 94;
			global.heromakey[0] = yy + 50;
			global.heromakex[1] = xx + 80;
			global.heromakey[1] = yy + 122;
			global.heromakex[2] = xx + 72;
			global.heromakey[2] = yy + 200;
			global.monsterinstancetype[0] = obj_dojo_spareenemy;
			global.monstertype[0] = 52;
			global.monstermakex[0] = xx + 440;
			global.monstermakey[0] = yy + 100;
			global.battlemsg[0] = stringsetloc("* Jigsaw Joe jigs in!", "scr_encountersetup_slash_scr_encountersetup_gml_1422_0");
			break;
		case 101:
			global.monsterinstancetype[0] = obj_poppup_enemy;
			global.monstertype[0] = 31;
			global.monstermakex[0] = xx + 440;
			global.monstermakey[0] = yy + 50;
			global.monsterinstancetype[1] = obj_maus_enemy;
			global.monstertype[1] = 34;
			global.monstermakex[1] = xx + 490;
			global.monstermakey[1] = yy + 166;
			global.monstertype[2] = 0;
			global.monstermakex[2] = xx + 440;
			global.monstermakey[2] = yy + 206;
			global.battlemsg[0] = stringsetloc("* Poppup and Maus appeared.", "scr_encountersetup_slash_scr_encountersetup_gml_1441_0");
			break;
		case 102:
			global.monsterinstancetype[0] = obj_pipis_enemy;
			global.monstertype[0] = 53;
			global.monstermakex[0] = xx + 530;
			global.monstermakey[0] = yy + 100;
			global.monsterinstancetype[1] = obj_pipis_enemy;
			global.monstertype[1] = 53;
			global.monstermakex[1] = xx + 448;
			global.monstermakey[1] = yy + 168;
			global.monsterinstancetype[2] = obj_pipis_enemy;
			global.monstertype[2] = 53;
			global.monstermakex[2] = xx + 510;
			global.monstermakey[2] = yy + 250;
			global.battlemsg[0] = stringsetloc("* Pipis.", "scr_encountersetup_slash_scr_encountersetup_gml_1462_0");
			break;
		case 777:
			global.monsterinstancetype[0] = obj_bullettester_enemy;
			global.monsterinstancetype[1] = obj_bullettester_enemy;
			global.monsterinstancetype[2] = obj_bullettester_enemy;
			global.monstertype[0] = 1;
			global.monstertype[1] = 1;
			global.monstertype[2] = 1;
			global.battlemsg[0] = stringsetloc(" ", "scr_encountersetup_slash_scr_encountersetup_gml_1114_0");
			break;
	}
}
