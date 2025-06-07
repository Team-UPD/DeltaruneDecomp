if (ambushed == 0)
{
	scr_ambush();
	ambushed = 1;
}
if (plot != 3)
{
	global.charmove[0] = 1;
	global.charmove[1] = 0;
	if (global.charspecial[0] == 100)
		spare_used = 1;
	else
		spare_used = 0;
}
else
{
	global.charmove[0] = 0;
	global.charmove[1] = 1;
	if (global.charspecial[1] == 100)
		ral_wrongcommand = 1;
	if (global.charaction[1] == 4)
		ral_wrongcommand = 1;
	if (global.charaction[1] != 2 && global.charaction[1] != 4)
	{
		with (obj_attackpress)
		{
			with (obj_heroparent)
			{
				if (state == 1)
					state = 0;
				attacked = 0;
				itemed = 0;
			}
			global.mnfight = 1;
			global.myfight = -1;
			instance_destroy();
		}
		global.charaction[1] = 0;
		global.faceaction[1] = 0;
	}
}
if (global.monster[myself] == 1)
{
	global.flag[51 + myself] = 4;
	commanded = 0;
	if (global.mnfight == 1 && talked == 0)
	{
		global.writerimg[0] = scr_84_get_sprite("spr_btfight");
		global.writerimg[1] = scr_84_get_sprite("spr_btdefend");
		global.writerimg[2] = scr_84_get_sprite("spr_bttech");
		global.writerimg[3] = scr_84_get_sprite("spr_btact");
		global.writerimg[4] = scr_84_get_sprite("spr_btspare");
		global.writerimg[5] = scr_84_get_sprite("spr_btitem");
		if (attackcon == 0)
		{
			scr_moveheart();
			abletotarget = 1;
			if (global.charcantarget[0] == 0 && global.charcantarget[1] == 0 && global.charcantarget[2] == 0)
				abletotarget = 0;
			mytarget = choose(0);
			if (abletotarget == 1)
			{
				while (global.charcantarget[mytarget] == 0)
					mytarget = choose(0);
			}
			else
			{
				target = 3;
			}
			global.targeted[mytarget] = 1;
			attackcon = 1;
			instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 170, obj_growtangle);
			instance_create(0, 0, obj_darkener);
		}
		global.typer = 45;
		global.fc = 2;
		global.fe = 1;
		global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_81_0");
		if (plot == 0 && attackcon == 1)
		{
			global.fe = 0;
			global.flag[30] = 0;
			global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_87_0");
			global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_88_0");
			global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_89_0");
			global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_90_0");
			global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_91_0");
			global.msg[5] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_92_0");
			global.msg[6] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_93_0");
			global.msg[7] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_94_0");
		}
		if (plot >= 1)
		{
			dial = 0;
			if (global.charaction[0] == 1)
			{
				if (dummyhp > global.monsterhp[0])
					dial = 1;
				if (dummyhp == global.monsterhp[0] && plot == 1)
					dial = 2;
				if (dummyhp == global.monsterhp[0] && misstime == 9 && plot == 2)
				{
					dial = 3;
					global.flag[205] = 6;
				}
				if (dial == 1 && hitdum >= 3)
				{
					hitdum = 4;
					dial = 3;
					global.flag[205] = 4;
				}
			}
			if (global.charaction[0] == 10 && commanded == 0)
			{
				global.fe = 0;
				global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_115_0");
				global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_116_0");
				if (defendtime == 1)
				{
					global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_120_0");
					global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_121_0");
				}
				if (defendtime == 2)
				{
					global.fe = 1;
					global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_127_0");
					global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_128_0");
					global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_129_0");
				}
				if (defendtime == 3)
				{
					global.fe = 9;
					global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_136_0");
				}
				if (plot == 2)
				{
					global.writerimg[2] = scr_84_get_sprite("spr_bttech");
					global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_142_0");
					global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_143_0");
					global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_144_0");
					global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_145_0");
					global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_146_0");
					if (global.monsterhp[0] == global.monstermaxhp[0])
					{
						global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_150_0");
						global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_151_0");
					}
					global.monsterstatus[myself] = 1;
					if (global.monstercomment[myself] == " ")
						global.monstercomment[myself] = scr_84_get_lang_string("obj_dummyenemy_slash_Draw_0_gml_4_0");
					plot = 3;
					if (defendtime == 4)
						defendtime = 3;
				}
				if (defendtime >= 4)
				{
					dial = 3;
					global.flag[205] = 5;
				}
				defendtime += 1;
				commanded = 1;
			}
			if (global.charaction[0] == 4 && commanded == 0)
			{
				global.fe = 0;
				global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_167_0");
				global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_168_0");
				global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_169_0");
				if (item_command == 1)
				{
					global.fe = 1;
					global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_174_0");
					global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_175_0");
					global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_176_0");
					global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_177_0");
					global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_178_0");
				}
				if (item_command == 2)
				{
					global.fe = 6;
					global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_184_0");
					global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_185_0");
				}
				if (item_command == 3)
				{
					global.fe = 0;
					global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_191_0");
					global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_192_0");
				}
				if (item_command >= 4)
					dial = 3;
				commanded = 1;
				item_command += 1;
			}
			if (ral_wrongcommand == 1 && commanded == 0)
			{
				global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_206_0");
				if (ral_wrongcommand_count == 0)
					global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_211_0");
				if (ral_wrongcommand_count == 1)
				{
					global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_216_0");
					global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_217_0");
				}
				if (ral_wrongcommand_count == 2)
					global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_222_0");
				if (ral_wrongcommand_count == 3)
				{
					global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_227_0");
					global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_228_0");
					global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_229_0");
					global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_230_0");
					global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_231_0");
					if (plot == 3)
						plot = 4;
					if (global.mercymod[myself] >= 100)
					{
						global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_237_0");
						global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_238_0");
						global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_239_0");
						plot = 5;
					}
				}
				ral_wrongcommand_count += 1;
				commanded = 0;
			}
			if (global.charaction[1] == 2 && ral_wrongcommand == 0 && commanded == 0)
			{
				global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_252_0");
				global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_253_0");
				global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_254_0");
				global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_255_0");
				global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_256_0");
				if (pacifycon == 1)
				{
					global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_260_0");
					if (global.monsterstatus[myself] == 0)
						global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_262_0");
				}
				plot = 4;
				if (global.mercymod[myself] >= 100)
				{
					global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_268_0");
					global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_269_0");
					global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_270_0");
					plot = 5;
				}
				commanded = 1;
			}
			if (spare_used == 1 && commanded == 0)
			{
				if (plot < 5)
				{
					global.fe = 0;
					if (spare_command == 0)
						global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_282_0");
					if (spare_command == 1)
						global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_283_0");
					if (spare_command >= 2)
						global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_284_0");
					if (global.mercymod[myself] >= 100)
						win_spare += 1;
					if (win_spare == 1)
					{
						global.fe = 6;
						global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_289_0");
						global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_290_0");
						global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_291_0");
					}
					if (win_spare == 2)
					{
						global.fe = 6;
						global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_296_0");
						global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_297_0");
						global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_298_0");
						won = 1;
					}
				}
				if (plot == 5)
				{
					global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_307_0");
					global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_308_0");
					won = 1;
				}
				spare_used = 0;
				spare_command += 1;
				commanded = 1;
			}
			if (dial == 1)
			{
				if (plot == 1)
				{
					global.fe = 3;
					if (dummyhp > (global.monsterhp[0] + 50))
					{
						global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_327_0");
						global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_328_0");
					}
					else
					{
						global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_332_0");
						global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_333_0") + scr_get_input_name(4) + scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_333_1");
					}
					if (misstime >= 6)
					{
						global.fe = 8;
						global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_338_0");
						global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_339_0");
					}
					global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_341_0");
					global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_342_0");
					global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_343_0");
					global.msg[5] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_344_0");
					plot = 2;
					if (defendtime >= 1)
					{
						global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_348_0");
						global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_349_0");
						global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_350_0");
						global.msg[5] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_351_0");
						global.msg[6] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_352_0");
						global.msg[7] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_353_0");
						plot = 3;
					}
				}
				else
				{
					if (hitdum == 0)
					{
						global.fe = 1;
						global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_364_0");
						global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_365_0");
					}
					if (hitdum == 1)
					{
						global.fe = 1;
						global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_372_0");
						global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_373_0");
						global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_374_0");
					}
					if (hitdum == 2)
					{
						global.fe = 6;
						global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_380_0");
						global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_381_0");
						global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_382_0");
					}
					if (hitdum >= 3)
						dial = 3;
					hitdum += 1;
				}
			}
			if (dial == 2)
			{
				global.fe = 3;
				global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_398_0");
				global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_399_0") + scr_get_input_name(4) + scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_399_1");
				if (misstime >= 1)
				{
					global.fe = 8;
					global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_403_0");
					if (misstime == 2)
						global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_404_0") + scr_get_input_name(4) + scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_404_1");
					if (misstime == 3)
						global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_405_0") + scr_get_input_name(4) + scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_405_1");
					if (misstime == 4)
						global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_406_0") + scr_get_input_name(4) + scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_406_1");
					if (misstime == 5)
						global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_407_0");
					if (misstime == 6)
						global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_408_0");
					if (misstime == 7)
					{
						global.fe = 9;
						global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_412_0");
					}
					if (misstime == 8)
					{
						global.fe = 1;
						global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_417_0");
						plot = 2;
						if (defendtime >= 1)
						{
							global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_421_0");
							global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_422_0");
							global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_423_0");
							global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_424_0");
							global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_425_0");
							global.msg[5] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_426_0");
							global.msg[6] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_427_0");
							plot = 3;
						}
					}
				}
				misstime += 1;
			}
			if (dial == 3)
			{
				global.fe = 9;
				global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_441_0");
				global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_442_0");
				global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_443_0");
				global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_444_0");
				if (hitdum >= 4)
				{
					global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_447_0");
					global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_448_0");
					global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_449_0");
				}
				won = 1;
				global.myfight = 999;
				global.mnfight = 999;
			}
		}
		scr_battletext();
		if (global.msg[0] == scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_463_0"))
		{
			with (obj_writer)
				instance_destroy();
		}
		acting = 0;
		spare_used = 0;
		dummyhp = global.monsterhp[myself];
		talked = 1;
		talktimer = 0;
		ral_wrongcommand = 0;
	}
	if (global.mnfight == 9786 && attacked == 0)
	{
		turns += 1;
		global.turntimer = -1;
		scr_mnendturn();
		attacked = 1;
		rr = floor(random(0));
		global.typer = 6;
		global.fc = 0;
		if (rr == 0)
			global.battlemsg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_489_0");
	}
	if (talked == 1 && global.mnfight == 1)
	{
		if (won == 0)
		{
			rtimer = 0;
			scr_blconskip(-1);
			if (global.mnfight == 2 && attackcon == 1)
			{
				if (!instance_exists(obj_moveheart) && !instance_exists(obj_heart))
					scr_moveheart();
				if (!instance_exists(obj_growtangle))
					instance_create(__view_get(e__VW.XView, 0) + 320, __view_get(e__VW.YView, 0) + 170, obj_growtangle);
			}
		}
		else if (!instance_exists(obj_writer))
		{
			scr_monsterdefeat();
			scr_mnendturn();
		}
	}
	if (global.mnfight == 2 && attacked == 0)
	{
		if (attackcon != 1)
			rtimer = 8;
		rtimer += 1;
		if (rtimer >= 8)
		{
			rr = choose(0);
			if (rr == 0)
			{
				dc = instance_create(x, y, obj_dbulletcontroller);
				dc.type = 14;
				dc.target = mytarget;
				dc.damage = global.monsterat[myself] * 5;
			}
			turns += 1;
			global.turntimer = 150;
			if (attackcon == 1)
				battlecancel = 2;
			if (attackcon != 1)
			{
				global.turntimer = -100;
				with (dc)
					instance_destroy();
			}
			attackcon = 2;
			attacked = 1;
			global.typer = 6;
			global.fc = 0;
			global.battlemsg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_548_0");
			global.writerimg[0] = scr_84_get_sprite("spr_btfight");
			global.writerimg[1] = scr_84_get_sprite("spr_btdefend");
			global.writerimg[2] = scr_84_get_sprite("spr_bttech");
			global.writerimg[3] = scr_84_get_sprite("spr_btact");
			global.writerimg[4] = scr_84_get_sprite("spr_btspare");
			global.writerimg[5] = scr_84_get_sprite("spr_btitem");
			global.fc = 0;
			if (plot == 1)
				global.battlemsg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_556_0");
			if (plot == 2)
				global.battlemsg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_557_0");
			if (plot == 3)
				global.battlemsg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_558_0");
			if (plot == 4)
				global.battlemsg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_559_0");
			if (plot == 5)
				global.battlemsg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_560_0");
			spare_used = 0;
			ral_wrongcommand = 0;
		}
		else
		{
			global.turntimer = 150;
		}
	}
	if (global.mnfight == 2)
	{
		if (global.turntimer <= 1)
		{
			if (battlecancel == 2)
			{
				with (obj_battlecontroller)
					noreturn = 1;
				con = 1;
				battlecancel = 3;
			}
		}
	}
}
if (con == 1)
{
	con = 2;
	alarm[5] = 2;
}
if (con == 3)
{
	global.typer = 45;
	global.fc = 2;
	global.fe = 0;
	global.writerimg[0] = scr_84_get_sprite("spr_btfight");
	global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_598_0");
	if (kris_inithp > global.hp[1])
	{
		global.fe = 6;
		global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_602_0");
	}
	global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_604_0");
	global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_605_0");
	global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_606_0");
	global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_607_0");
	global.battlemsg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_610_0");
	scr_battletext();
	con = 6;
}
if (con == 6 && !instance_exists(obj_writer))
{
	with (obj_battlecontroller)
	{
		noreturn = 0;
		alarm[2] = 2;
	}
	battlecancel = 0;
	if (plot == 0)
		plot = 1;
	con = 7;
}
if (global.myfight == 3)
{
	xx = __view_get(e__VW.XView, 0);
	yy = __view_get(e__VW.YView, 0);
	if (acting == 1 && actcon == 0)
	{
		actcon = 1;
		global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_642_0");
		if (checked == 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_645_0");
			scr_ralface(1, 6);
			global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_647_0");
			global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_648_0");
			global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_649_0");
		}
		checked += 1;
		scr_battletext_default();
	}
	if (acting == 2 && actcon == 0)
	{
		actcon = 10;
		with (obj_herokris)
		{
			global.faceaction[myself] = 0;
			state = 0;
			acttimer = 0;
		}
		global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_666_0");
		scr_battletext_default();
	}
	if (actcon == 1 && !instance_exists(obj_writer))
	{
		global.acting[0] = 0;
		global.acting[1] = 0;
		global.acting[2] = 0;
		actcon = 0;
		acting = -1;
		scr_attackphase();
	}
	if (actcon == 10)
	{
		with (global.charinstance[0])
			visible = 0;
		k = scr_dark_marker(global.charinstance[0].x, global.charinstance[0].y, spr_kris_hug);
		with (k)
			scr_move_to_point_over_time(global.monsterx[0] - 42, global.monstery[0] - 30, 15);
		actcon = 11;
		alarm[4] = 25;
	}
	if (actcon == 12)
	{
		with (k)
			image_speed = 0.25;
		actcon = 13;
		alarm[4] = 12;
	}
	if (actcon == 14)
	{
		with (k)
			image_speed = 0;
		actcon = 15;
	}
	if (actcon == 15 && !instance_exists(obj_writer))
	{
		global.flag[205] = 1;
		global.typer = 45;
		global.fc = 2;
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_711_0");
		if (plot == 5)
		{
			global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_714_0");
			if (hugtime >= 1)
				global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_715_0");
			hugtime += 1;
		}
		if (plot == 1)
		{
			global.fe = 3;
			global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_722_0");
			global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_723_0");
			global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_724_0");
			global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_725_0");
			global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_726_0");
			global.msg[5] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_727_0");
			global.msg[6] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_728_0");
			plot = 2;
			if (defendtime >= 1)
			{
				global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_733_0");
				global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_734_0");
				global.msg[5] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_735_0");
				global.msg[6] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_736_0");
				global.msg[7] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_737_0");
				global.msg[8] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_738_0");
				plot = 3;
			}
		}
		if (plot == 4)
		{
			global.fe = 8;
			global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_746_0");
			global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_747_0");
			global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_748_0");
			global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_749_0");
			global.msg[4] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_750_0");
			plot = 5;
		}
		scr_battletext();
		actcon = 16;
	}
	if (actcon == 16 && !instance_exists(obj_writer))
	{
		with (myface)
			instance_destroy();
		with (k)
			image_speed = -0.25;
		actcon = 17;
		alarm[4] = 12;
	}
	if (actcon == 18)
	{
		with (k)
			image_speed = 0;
		with (k)
			scr_move_to_point_over_time(global.charinstance[0].x, global.charinstance[0].y, 15);
		actcon = 19;
		alarm[4] = 25;
	}
	if (actcon == 20)
	{
		with (k)
			instance_destroy();
		global.mercymod[0] = 100;
		global.mercymod[1] = 100;
		global.charinstance[0].visible = 1;
		actcon = 1;
	}
	if (acting == 3 && actcon == 0)
	{
		makekris = 0;
		with (obj_herokris)
		{
			global.faceaction[myself] = 0;
			state = 0;
			acttimer = 0;
		}
		with (obj_heroralsei)
		{
			global.faceaction[myself] = 0;
			state = 0;
			acttimer = 0;
		}
		actcon = 30;
		global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_808_0");
		scr_battletext_default();
	}
	if (actcon == 30)
	{
		makekris = 1;
		maker = 0;
		with (global.charinstance[0])
			visible = 0;
		k = scr_dark_marker(global.charinstance[0].x, global.charinstance[0].y, spr_kris_hug);
		with (k)
			scr_move_to_point_over_time(obj_heroralsei.x - 24, obj_heroralsei.y + 10, 15);
		actcon = 31;
		alarm[4] = 25;
	}
	if (actcon == 32)
	{
		maker = 1;
		with (obj_heroralsei)
			visible = 0;
		rb = scr_dark_marker(obj_heroralsei.x, obj_heroralsei.y, spr_ralseil_blush);
		with (k)
			image_speed = 0.25;
		actcon = 33;
		alarm[4] = 12;
	}
	if (actcon == 34)
	{
		with (k)
			image_speed = 0;
		actcon = 35;
	}
	if (actcon == 35 && !instance_exists(obj_writer))
	{
		global.typer = 45;
		global.fc = 2;
		global.fe = 2;
		global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_846_0");
		if (r_hugtime == 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_850_0");
			global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_851_0");
			global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_852_0");
			global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_853_0");
			with (obj_event_manager)
				trigger_event((0 << 0), (18 << 0));
		}
		if (r_hugtime == 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_858_0");
			global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_859_0");
			global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_860_0");
		}
		if (r_hugtime == 2)
		{
			global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_868_0");
			global.msg[1] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_869_0");
			global.msg[2] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_870_0");
			global.msg[3] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_871_0");
		}
		if (r_hugtime >= 3)
			global.msg[0] = scr_84_get_lang_string("obj_dummyenemy_slash_Step_0_gml_876_0");
		r_hugtime += 1;
		scr_battletext();
		actcon = 36;
	}
	if (actcon == 36 && !instance_exists(obj_writer))
	{
		with (myface)
			instance_destroy();
		with (k)
			image_speed = -0.25;
		actcon = 37;
		alarm[4] = 12;
	}
	if (actcon == 38)
	{
		with (k)
			image_speed = 0;
		with (k)
			scr_move_to_point_over_time(global.charinstance[0].x, global.charinstance[0].y, 15);
		actcon = 39;
		alarm[4] = 25;
	}
	if (actcon == 40)
	{
		makekris = 0;
		maker = 0;
		with (rb)
			instance_destroy();
		with (obj_heroralsei)
			visible = 1;
		with (k)
			instance_destroy();
		global.charinstance[0].visible = 1;
		actcon = 1;
	}
	if (actcon >= 30 && actcon < 40)
	{
		if (makekris == 1)
		{
			with (k)
				scr_depth();
			with (k)
				depth -= 100000;
		}
		if (maker == 1)
		{
			with (rb)
				scr_depth();
			with (rb)
				depth -= 100000;
		}
	}
}
if (instance_exists(obj_battlecontroller) == false)
	instance_destroy();
