global.msc = 0;
global.typer = 5;
if (global.darkzone == 1)
	global.typer = 6;
global.fc = 0;
global.fe = 0;
global.interact = 1;
image_speed = 0.2;
if (global.darkzone == 1)
	image_speed = 0.2;
global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_11_0");
if (room == room_krisroom)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_15_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_16_0");
}
if (room == room_torhouse)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_21_0");
	if (global.plot >= 250)
	{
		global.msc = 455;
		scr_text(global.msc);
		global.typer = 7;
		global.fc = 4;
		global.fe = 0;
	}
	else
	{
		with (obj_event_manager)
			trigger_event((0 << 0), (25 << 0));
	}
}
if (room == room_alphysclass)
{
	global.msc = 100;
	scr_text(global.msc);
	global.fc = 4;
}
if (room == room_castle_tutorial)
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_41_0");
if (room == room_field2)
{
	if (global.flag[501] == 1)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_48_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_49_0");
	}
	if (global.flag[501] == 2)
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_53_0");
	if (global.flag[501] == 3)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_57_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_58_0");
	}
}
if (room == room_field2A)
{
	global.msc = 145;
	scr_text(global.msc);
}
if (room == room_field_puzzle1)
{
	global.msc = 147;
	scr_text(global.msc);
}
if (room == room_field_topchef)
{
	if (y >= 160)
	{
		image_speed = 0.334;
		normalanim = 2;
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_81_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_82_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_83_0");
		global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_84_0");
		scr_ralface(4, 8);
		global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_86_0");
		global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_87_0");
		if (talked >= 1)
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_90_0");
		if (scr_havechar(2))
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_95_0");
			scr_susface(1, 2);
			global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_97_0");
			scr_noface(3);
			global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_99_0");
			scr_susface(5, 2);
			global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_101_0");
			if (talked >= 1)
			{
				global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_104_0");
				scr_susface(1, 0);
				global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_106_0");
				scr_ralface(3, 9);
				global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_108_0");
				scr_susface(5, 2);
				global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_110_0");
			}
		}
		if (scr_itemcheck(6))
		{
			global.msc = 465;
			scr_text(global.msc);
		}
		if (global.flag[253] == 1)
		{
			global.msc = 470;
			scr_text(global.msc);
		}
	}
	else
	{
		global.msc = 149;
		scr_text(global.msc);
	}
}
if (room == room_field_maze)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_137_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_138_0");
	global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_139_0");
	if (global.plot < 37)
	{
		scr_ralface(3, 3);
		global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_143_0");
	}
	else
	{
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_147_0");
	}
	if (talked >= 1)
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_152_0");
	if (scr_havechar(2))
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_157_0");
		scr_susface(1, 2);
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_159_0");
		if (talked >= 1)
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_165_0");
	}
	if (x > 1600)
	{
		global.fc = 5;
		global.fe = 0;
		global.typer = 32;
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_175_0");
		scr_ralface(1, 1);
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_177_0");
		scr_lanface(3, 2);
		global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_179_0");
	}
}
if (room == room_field_shop1)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_186_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_187_0");
	global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_188_0");
}
if (room == room_field_puzzletutorial)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_193_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_194_0");
	global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_195_0");
	global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_196_0");
	if (x <= (room_width / 2))
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_200_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_201_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_202_0");
		if (talked >= 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_205_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_206_0");
		}
	}
	if (y >= (room_height / 2))
	{
		if (x <= (room_width / 2))
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_214_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_215_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_216_0");
			global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_217_0");
		}
		else
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_221_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_222_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_223_0");
			global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_224_0");
		}
	}
}
if (room == room_field4)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_233_0");
	if (scr_havechar(3) && scr_havechar(2))
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_236_0");
		scr_ralface(1, 8);
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_238_0");
		scr_susface(3, 2);
		global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_240_0");
		scr_ralface(5, 8);
		global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_242_0");
		global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_243_0");
		if (talked >= 1)
		{
			scr_ralface(0, 8);
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_248_0");
			scr_susface(2, 0);
			global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_250_0");
			scr_ralface(4, 1);
			global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_252_0");
			scr_susface(6, 7);
			global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_254_0");
		}
	}
}
if (room == room_field_puzzletutorial)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_262_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_263_0");
	global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_264_0");
	global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_265_0");
	if (talked >= 1)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_269_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_270_0");
	}
}
if (room == room_field_checkers7)
{
	if (sprite_index == spr_npc_mrelegance)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_278_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_279_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_280_0");
		if (talked >= 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_284_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_285_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_286_0");
		}
	}
	else
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_292_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_293_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_294_0");
		if (talked >= 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_297_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_298_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_299_0");
		}
		if (global.plot >= 60)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_304_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_305_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_306_0");
		}
	}
}
if (room == room_forest_savepoint1)
{
	if (sprite_index == spr_npc_puzzlepiece)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_316_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_317_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_318_0");
		global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_319_0");
		if (global.plot >= 154)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_322_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_323_0");
		}
		if (talked >= 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_327_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_328_0");
		}
	}
	if (sprite_index == spr_npc_mrelegance)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_334_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_335_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_336_0");
		global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_337_0");
		if (global.flag[251] == 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_340_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_341_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_342_0");
		}
		if (global.plot >= 154)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_346_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_347_0");
		}
		if (talked >= 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_352_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_353_0");
		}
	}
}
if (room == room_forest_area1)
{
	if (sprite_index == spr_diamond_overworld)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_365_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_366_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_367_0");
		global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_368_0");
		if (talked >= 1)
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_372_0");
	}
}
if (room == room_forest_area2A)
{
	if (x <= (room_width / 2))
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_383_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_384_0");
		if (global.flag[108] == 1 && global.flag[233] == 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_388_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_389_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_390_0");
			global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_391_0");
		}
		if (global.flag[108] == 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_397_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_398_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_399_0");
			global.flag[233] = 1;
		}
		if (global.flag[108] == 1 && scr_weaponcheck_inventory(9) == 0 && global.charweapon[3] != 9)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_406_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_407_0");
		}
		if (talked >= 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_412_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_413_0");
		}
	}
	if (x >= (room_width / 2))
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_420_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_421_0");
	}
}
if (room == room_forest_area3)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_428_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_429_0");
	global.flag[236] = 1;
}
if (room == room_forest_area3A)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_436_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_437_0");
	if (talked >= 1)
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_442_0");
	if (x >= (room_width / 2))
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_448_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_449_0");
		if (talked >= 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_454_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_455_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_456_0");
		}
	}
}
if (room == room_forest_savepoint2)
{
	if (x < 800)
	{
		global.msc = 325;
		scr_text(global.msc);
	}
	if (x >= 800 && x <= 880)
	{
		global.msc = 327;
		scr_text(global.msc);
	}
	if (x >= 920)
	{
		if (global.plot < 80)
		{
			global.msc = 330;
			scr_text(global.msc);
		}
		else
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_486_0");
		}
	}
}
if (room == room_forest_area4)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_493_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_494_0");
	global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_495_0");
	if (talked >= 1)
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_498_0");
}
if (room == room_forest_starwalker)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_504_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_505_0");
	global.flag[254] = 1;
}
if (room == room_forest_savepoint_relax)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_511_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_512_0");
	global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_513_0");
	global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_514_0");
	if (talked >= 1)
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_515_0");
	if (global.plot >= 90)
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_519_0");
	if (sprite_index == spr_lancer_dark_relax)
	{
		global.fc = 2;
		global.fe = 0;
		global.typer = 31;
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_527_0");
		scr_lanface(1, 0);
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_529_0");
		scr_ralface(3, 8);
		global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_531_0");
		scr_susface(5, 0);
		global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_533_0");
		scr_ralface(7, 6);
		global.msg[8] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_535_0");
		scr_lanface(9, 1);
		global.msg[10] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_537_0");
		global.msg[11] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_538_0");
		scr_susface(12, 2);
		global.msg[13] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_540_0");
		if (talked >= 1)
		{
			global.fc = 5;
			global.fe = 3;
			global.typer = 32;
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_547_0");
			scr_susface(1, 2);
			global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_549_0");
			scr_ralface(3, "A");
			global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_551_0");
			global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_552_0");
		}
	}
	if (sprite_index == spr_susie_dark_relax)
	{
		global.fc = 2;
		global.fe = 6;
		global.typer = 31;
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_560_0");
		scr_susface(1, 1);
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_562_0");
		global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_563_0");
		global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_564_0");
		scr_lanface(5, 6);
		global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_566_0");
		global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_567_0");
		global.msg[8] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_568_0");
		scr_susface(9, 2);
		global.msg[10] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_570_0");
		if (talked >= 1)
		{
			global.fc = 1;
			global.fe = 1;
			global.typer = 30;
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_577_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_578_0");
			scr_lanface(2, 3);
			global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_580_0");
		}
	}
}
if (room == room_forest_fightsusie)
{
	global.typer = 31;
	global.fe = 8;
	global.fc = 2;
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_591_0");
	scr_lanface(1, 3);
	global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_593_0");
	if (talked >= 1)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_597_0");
		scr_lanface(1, 3);
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_599_0");
	}
}
if (room == room_cc_prison_cells)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_606_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_607_0");
	if (talked >= 1)
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_610_0");
}
if (room == room_cc_prison2)
{
	if (sprite_index == spr_npc_gouldensam)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_618_0");
		if (tempvar == 1)
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_619_0");
		if (tempvar == 2)
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_620_0");
		if (tempvar == 3)
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_621_0");
	}
	if (sprite_index == spr_npc_cage_animals)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_626_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_627_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_628_0");
		if (talked >= 1)
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_632_0");
	}
	if (sprite_index == spr_npc_cage_king)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_638_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_639_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_640_0");
		if (talked >= 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_644_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_645_0");
		}
	}
	if (sprite_index == spr_diamond_overworld)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_653_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_654_0");
		if (global.flag[40] >= 2)
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_659_0");
	}
	if (sprite_index == spr_npc_puzzlepiece_jail)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_665_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_666_0");
	}
}
if (room == room_cc_rudinn)
{
	if (x <= (room_width / 2))
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_675_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_676_0");
	}
	else if (global.flag[520] == 0)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_682_0");
		if (global.flag[243] == 3)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_685_0");
			scr_susface(1, 2);
			global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_687_0");
			scr_noface(3);
			global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_689_0");
		}
		if (global.flag[243] == 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_694_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_695_0");
			scr_susface(2, 0);
			global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_697_0");
			scr_noface(4);
			global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_699_0");
			global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_700_0");
			global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_701_0");
			scr_itemget(13);
			if (noroom == 1)
			{
				scr_ralface(7, 8);
				global.msg[8] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_706_0");
				scr_susface(9, 2);
				global.msg[10] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_708_0");
			}
			global.flag[243] = 3;
		}
	}
	else
	{
		if (global.flag[243] == 3)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_718_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_719_0");
		}
		if (global.flag[243] == 2)
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_723_0");
		if (global.flag[243] == 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_727_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_728_0");
			scr_susface(2, 1);
			global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_730_0");
			global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_731_0");
		}
		if (global.flag[243] == 0)
		{
			global.msc = 425;
			scr_text(global.msc);
		}
	}
}
if (room == room_cc_rurus1)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_746_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_747_0");
}
if (room == room_cc_hathy)
{
	if (x <= (room_width / 2))
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_754_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_755_0");
	}
	else if (global.flag[521] <= 2)
	{
		if (global.flag[244] == 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_764_0");
			if (global.flag[521] > 0)
			{
				global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_768_0");
				scr_ralface(1, 6);
				global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_770_0");
				global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_771_0");
				scr_noface(4);
				global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_773_0");
				global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_774_0");
				global.flag[43] -= global.flag[524];
				if (global.flag[43] < 0)
					global.flag[43] = 0;
				normal_kills = global.flag[521] - global.flag[524];
				global.flag[40] -= normal_kills;
				if (global.flag[40] < 0)
					global.flag[40] = 0;
			}
		}
		else
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_786_0");
		}
		global.flag[244] = 1;
	}
	else
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_792_0");
		scr_susface(1, 2);
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_794_0");
		scr_noface(3);
		global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_796_0");
		scr_susface(5, 6);
		global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_798_0");
	}
}
if (room == room_cc_rurus2)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_806_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_807_0");
}
if (room == room_cc_clover)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_812_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_813_0");
	global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_814_0");
	if (global.flag[522] == 1)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_817_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_818_0");
	}
	if (x < 160)
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_823_0");
	if (x > 400)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_827_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_828_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_829_0");
		if (talked >= 1)
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_832_0");
	}
}
if (room == room_cc_throneroom)
{
	if (y < 300)
	{
		if (sprite_index == spr_npc_gouldensam)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_844_0");
			if (tempvar == 1)
				global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_845_0");
		}
		if (sprite_index == spr_npc_cage_animals)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_849_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_850_0");
		}
		if (sprite_index == spr_npc_cage_king)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_855_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_856_0");
		}
	}
	else if (x < (room_width / 2))
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_865_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_866_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_867_0");
		if (talked >= 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_870_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_871_0");
		}
	}
	else
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_876_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_877_0");
		if (global.flag[295] == 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_880_0");
			scr_susface(1, 3);
			global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_882_0");
			scr_noface(3);
			global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_884_0");
		}
		if (global.flag[253] == 1 && global.flag[295] == 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_888_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_889_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_890_0");
			scr_susface(3, 2);
			global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_892_0");
			scr_noface(5);
			global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_894_0");
			global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_895_0");
			scr_susface(8, 5);
			global.msg[9] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_897_0");
			global.msg[10] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_898_0");
			global.flag[295] = 1;
		}
	}
}
if (room == room_cc_preroof)
{
	if (x > 180)
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_913_0");
	if (x > 320)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_917_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_918_0");
		if (talked >= 1)
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_919_0");
	}
	if (x > 460)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_923_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_924_0") + "/";
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_925_0");
	}
	if (x > 680)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_930_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_931_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_932_0");
	}
}
if (room == room_cc_kingbattle)
{
	if (sprite_index == spr_rurus_idle)
	{
		global.fc = 18;
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_944_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_945_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_946_0");
		global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_947_0");
		if (talked >= 1)
		{
			global.fc = 1;
			global.fe = 0;
			global.typer = 30;
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_955_0");
			scr_rurusface(1, 3);
			global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_957_0");
			global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_958_0");
			scr_susface(4, 0);
			global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_960_0");
			scr_rurusface(6, 1);
			global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_962_0");
			scr_susface(8, 2);
			global.msg[9] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_964_0");
		}
	}
	if (y < 160)
	{
		if (x == 398)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_972_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_973_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_974_0");
		}
		if (x == 522)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_978_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_979_0");
			if (talked >= 1)
				global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_982_0");
		}
		if (x == 740)
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_988_0");
		if (x == 820)
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_992_0");
		if (x == 940)
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_996_0");
		if (x == 1020)
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1000_0");
		if (x > 1140)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1004_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1005_0");
			if (global.flag[216] == 1)
				global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1008_0");
			if (talked >= 1)
			{
				global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1013_0");
				global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1014_0");
			}
		}
	}
	else if (x < 900)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1022_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1023_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1024_0");
	}
	else
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1028_0");
	}
}
if (room == room_hospital_rudy)
{
	global.typer = 55;
	global.fc = 15;
	global.fe = 2;
	if (global.flag[255] < 2)
		global.msc = 180;
	else
		global.msc = 181;
	scr_text(global.msc);
}
if (room == room_library)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1049_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1050_0");
	if (talked >= 1)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1054_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1055_0");
	}
}
if (room == room_graveyard)
{
	global.msc = 190;
	scr_text(global.msc);
}
if (room == room_townhall)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1068_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1069_0");
	global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1070_0");
	global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1071_0");
	if (talked >= 1)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1074_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1075_0");
	}
	if (x > 100)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1081_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1082_0");
		if (talked >= 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1086_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1087_0");
		}
	}
	if (x > 200)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1097_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1098_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1099_0");
		if (talked >= 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1103_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1104_0");
		}
	}
}
if (room == room_diner)
{
	if (sprite_index == spr_npc_cattiwaitress)
	{
		global.fc = 13;
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1118_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1119_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1120_0");
		global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1121_0");
		global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1122_0");
		global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1123_0");
		global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1124_0");
		if (talked >= 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1128_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1129_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1130_0");
		}
	}
	if (sprite_index == spr_npc_dragonfamily)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1136_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1137_0");
		if (talked >= 1)
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1139_0");
	}
	if (x >= 120 && x <= 140)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1145_0");
		if (global.flag[261] == 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1151_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1153_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1154_0");
			global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1155_0");
			global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1156_0");
			global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1157_0");
			global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1158_0");
			global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1159_0");
			global.msg[8] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1160_0");
			global.msg[9] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1161_0");
			global.msg[10] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1162_0");
			global.msg[11] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1163_0");
			global.msg[12] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1164_0");
			global.msg[13] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1165_0");
			global.flag[261] = 1;
			noroom = 0;
			scr_litemget(1);
			if (noroom == 1)
			{
				global.flag[261] = 2;
				global.msg[11] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1172_0");
				global.msg[12] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1173_0");
				global.msg[13] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1174_0");
			}
		}
	}
	if (x > 240)
	{
	}
	if (y > 140)
	{
		if (x > 180)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1198_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1199_0");
			if (talked >= 1)
				global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1202_0");
		}
		if (x > 260)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1212_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1213_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1214_0");
			if (talked >= 1)
				global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1217_0");
		}
	}
	if (sprite_index == spr_npc_most_improved_1997)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1226_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1227_0");
		if (talked >= 1)
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1231_0");
	}
	if (sprite_index == spr_npc_icewolf)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1237_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1238_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1239_0");
		if (talked >= 1)
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1243_0");
	}
}
if (room == room_town_south)
{
	if (sprite_index == spr_npc_donutcar)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1255_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1256_0");
	}
	if (sprite_index == spr_npc_snailcar)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1260_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1261_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1262_0");
	}
}
if (room == room_town_mid)
{
	if (sprite_index == spr_npc_burgerpants)
	{
		global.msc = 340;
		scr_text(global.msc);
	}
	if (sprite_index == spr_mkid_dt)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1276_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1277_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1278_0");
		global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1279_0");
		global.msg[4] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1280_0");
		global.msg[5] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1281_0");
		global.msg[6] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1282_0");
		global.msg[7] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1283_0");
		if (talked >= 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1287_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1288_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1289_0");
		}
	}
	if (sprite_index == spr_snowy_dt)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1295_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1296_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1297_0");
		global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1298_0");
	}
}
if (room == room_town_north)
{
	if (sprite_index == spr_npc_catty)
	{
		global.fc = 16;
		global.typer = 5;
		global.msc = 215;
		scr_text(global.msc);
	}
	if (sprite_index == spr_npc_cattydad)
	{
		if (talked == 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1316_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1317_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1318_0");
			global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1319_0");
		}
		else
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1323_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1324_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1325_0");
			global.msg[3] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1326_0");
		}
	}
	if (sprite_index == spr_npc_bratty)
	{
		global.fc = 17;
		global.typer = 5;
		global.msc = 220;
		scr_text(global.msc);
	}
}
if (room == room_town_church)
{
	global.msc = 345;
	scr_text(global.msc);
}
if (room == room_hospital_lobby)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1348_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1349_0");
	if (talked >= 1)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1353_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1354_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1355_0");
	}
	if (tempvar >= 1)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1361_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1362_0");
	}
}
if (room == room_beach)
{
	if (sprite_index == spr_npc_rgbun)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1371_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1372_0");
	}
	if (sprite_index == spr_npc_rgdragon)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1376_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_room_slash_Other_10_gml_1377_0");
	}
}
remanimspeed = image_speed;
myinteract = 3;
mydialoguer = instance_create(0, 0, obj_dialoguer);
talked += 1;
