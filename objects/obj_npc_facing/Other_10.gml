global.msc = 0;
global.typer = 5;
if (global.darkzone == 1)
	global.typer = 6;
global.fc = 0;
global.fe = 0;
global.interact = 1;
image_speed = 0.2;
if (global.darkzone == 1)
	image_speed = 0.1;
global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_10_0");
if (room == room_alphysclass)
{
	if (utsprite == spr_noelle_ut)
	{
		global.msc = 100;
		if (talked > 0)
			global.msc = 102;
		scr_text(global.msc);
		global.fe = 0;
		global.fc = 3;
		global.typer = 12;
		if (global.plot >= 3)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_29_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_30_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_31_0");
			if (talked >= 1)
			{
				global.typer = 23;
				global.fe = 3;
				global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_37_0");
			}
		}
	}
	if (utsprite == spr_berdly_ut)
	{
		global.fc = 12;
		global.fe = 1;
		global.typer = 13;
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_48_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_49_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_50_0");
		global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_51_0");
		global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_52_0");
		global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_53_0");
		if (talked > 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_57_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_58_0");
		}
		if (global.plot >= 3)
		{
			global.fe = 3;
			global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_65_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_66_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_67_0");
			if (talked > 0)
				global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_71_0");
		}
	}
	if (utsprite == spr_snowy_ut)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_81_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_82_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_83_0");
		global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_84_0");
		if (talked > 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_88_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_89_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_90_0");
		}
		if (global.plot >= 3)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_96_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_97_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_98_0");
			global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_99_0");
			global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_100_0");
			if (talked > 0)
				global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_104_0");
		}
	}
	if (utsprite == spr_mkid_ut)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_114_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_115_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_116_0");
		if (talked > 0)
			global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_120_0");
		if (global.plot >= 3)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_126_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_127_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_128_0");
			if (talked > 0)
				global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_132_0");
		}
	}
	if (utsprite == spr_catti_ut)
	{
		global.fc = 13;
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_145_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_146_0");
		if (global.plot >= 3)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_150_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_151_0");
		}
	}
	if (utsprite == spr_jockington_ut)
	{
		global.fc = 14;
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_159_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_160_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_161_0");
		global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_162_0");
		if (talked > 0)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_166_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_167_0");
		}
		if (global.plot >= 3)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_174_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_175_0");
		}
	}
	if (utsprite == spr_alphysu)
	{
		global.fc = 11;
		global.typer = 20;
		global.fe = 3;
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_185_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_186_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_187_0");
		global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_188_0");
		if (talked > 0)
		{
			global.fe = 7;
			global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_192_0");
		}
		if (global.plot >= 3)
		{
			global.fe = 5;
			global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_198_0");
		}
	}
}
if (room == room_field2)
{
	global.fc = 5;
	global.fe = 0;
	global.typer = 32;
	global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_210_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_211_0");
	scr_ralface(2, "A");
	global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_213_0");
	scr_lanface(4, 3);
	global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_215_0");
	global.msg[6] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_216_0");
	scr_ralface(7, 3);
	global.msg[8] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_218_0");
	scr_lanface(9, 1);
	global.msg[10] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_220_0");
	global.msg[11] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_221_0");
	scr_ralface(12, 9);
	global.msg[13] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_223_0");
	if (global.flag[210] == 1)
	{
		global.fc = 2;
		global.fe = 11;
		global.typer = 31;
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_230_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_231_0");
		scr_lanface(2, 7);
		global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_233_0");
	}
	if (global.flag[210] == 2)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_239_0");
		scr_ralface(1, 8);
		global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_241_0");
		scr_lanface(3, 3);
		global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_243_0");
		global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_244_0");
		scr_ralface(6, "A");
		global.msg[7] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_246_0");
	}
	if (global.flag[210] == 0)
		global.flag[210] = 1;
}
if (room == room_field_boxpuzzle)
{
	global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_257_0");
	if (type == 0)
	{
		global.typer = 31;
		global.fc = 2;
		global.fe = 0;
		if (global.flag[212] == 1)
		{
			input_name = scr_get_input_name(4);
			global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_269_0");
			global.msg[1] = scr_84_get_subst_string(scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_270_0"), input_name);
			scr_susface(2, 9);
			global.msg[3] = scr_84_get_subst_string(scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_272_0"), input_name);
			if (talked >= 1)
			{
				global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_276_0"), input_name);
				scr_susface(1, 2);
				global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_278_0");
			}
		}
	}
	else
	{
		global.typer = 30;
		global.fc = 1;
		global.fe = 0;
		if (global.flag[212] == 1)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_295_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_296_0");
		}
	}
}
if (room == room_cc_prison_cells)
{
	global.typer = 31;
	global.fc = 2;
	global.fe = 1;
	global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_307_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_308_0");
	if (talked >= 1)
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_312_0");
	if (global.flag[231] >= 3)
	{
		shack = 0;
		moss = 0;
		if (global.chararmor1[1] == 5 || global.chararmor2[1])
			shack = 1;
		if (global.flag[106] == 1)
			moss = 1;
		with (obj_prisonevent)
			con = 15;
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_323_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_324_0");
		if (moss == 1)
		{
			global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_328_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_329_0");
			global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_330_0");
			global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_331_0");
		}
		if (shack == 1)
		{
			global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_337_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_338_0");
			global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_339_0");
			global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_340_0");
			global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_341_0");
		}
		if (moss == 1 && shack == 1)
		{
			global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_348_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_349_0");
			global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_350_0");
			global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_351_0");
			global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_352_0");
		}
	}
}
if (room == room_forest_area1)
{
	if (global.flag[232] == 0)
	{
		global.typer = 31;
		global.fc = 2;
		global.fe = 0;
		global.msc = 255;
		scr_text(global.msc);
	}
	else
	{
		global.typer = 30;
		global.fc = 1;
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_375_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_376_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_377_0");
		scr_ralface(3, 6);
		global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_379_0");
		scr_lanface(5, 2);
		global.msg[6] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_381_0");
		global.msg[7] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_382_0");
		scr_susface(8, 2);
		global.msg[9] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_384_0");
		if (x >= 1160)
		{
			global.typer = 32;
			global.fc = 5;
			global.fe = 3;
			global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_392_0");
			scr_susface(1, 2);
			global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_394_0");
		}
	}
}
if (room == room_forest_puzzle1)
{
	global.typer = 30;
	global.fc = 1;
	global.fe = 1;
	global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_406_0");
	scr_lanface(1, 3);
	global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_408_0");
	scr_susface(3, 2);
	global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_410_0");
	scr_ralface(5, 0);
	global.msg[6] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_412_0");
	scr_susface(7, 7);
	global.msg[8] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_414_0");
	if (talked >= 1)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_419_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_420_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_421_0");
		scr_lanface(3, 3);
		global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_423_0");
		scr_susface(5, 2);
		global.msg[6] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_425_0");
		scr_ralface(7, 0);
		global.msg[8] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_427_0");
		global.msg[9] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_428_0");
		scr_lanface(10, 3);
		global.msg[11] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_430_0");
		scr_ralface(12, 9);
		global.msg[13] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_432_0");
	}
	if (talked < -50)
	{
		global.fe = 2;
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_438_0");
		scr_lanface(1, 2);
		global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_440_0");
		scr_ralface(3, 9);
		global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_442_0");
		scr_susface(5, 2);
		global.msg[6] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_444_0");
	}
	if (dtsprite == spr_lancer_dt)
	{
		global.typer = 32;
		global.fc = 5;
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_452_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_453_0");
		scr_susface(2, 2);
		global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_455_0");
		scr_lanface(4, 6);
		global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_457_0");
		global.msg[6] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_458_0");
	}
}
if (room == room_forest_area3)
{
	global.typer = 31;
	global.fc = 2;
	global.fe = 6;
	global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_470_0");
	scr_susface(1, 0);
	global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_472_0");
	scr_ralface(3, 0);
	global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_474_0");
	scr_susface(5, 2);
	global.msg[6] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_476_0");
	scr_lanface(7, 3);
	global.msg[8] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_478_0");
	scr_susface(9, 6);
	global.msg[10] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_480_0");
	if (talked >= 1)
	{
		global.typer = 31;
		global.fc = 2;
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_489_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_490_0");
		scr_susface(2, 6);
		global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_492_0");
	}
	if (x >= 600)
	{
		global.typer = 32;
		global.fc = 5;
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_500_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_501_0");
		global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_502_0");
	}
}
if (room == room_forest_savepoint2)
{
	image_speed = 0;
	normalanim = 2;
	global.fc = 1;
	global.fe = 2;
	global.typer = 30;
	global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_512_0");
	scr_lanface(1, 2);
	global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_514_0");
	scr_ralface(3, 0);
	global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_516_0");
	scr_lanface(5, 3);
	global.msg[6] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_518_0");
	scr_susface(7, 2);
	global.msg[8] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_520_0");
	scr_lanface(9, 1);
	global.msg[10] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_522_0");
	scr_ralface(11, 9);
	global.msg[12] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_524_0");
	if (talked >= 1)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_527_0");
		scr_lanface(1, 2);
		global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_529_0");
		global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_530_0");
	}
	with (obj_npc_facing)
		talked += 1;
}
if (room == room_forest_maze_deadend)
{
	global.fc = 5;
	global.fe = 3;
	global.typer = 32;
	global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_541_0");
	scr_ralface(1, 8);
	global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_543_0");
	scr_lanface(3, 6);
	global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_545_0");
	scr_ralface(5, 9);
	global.msg[6] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_547_0");
	if (talked >= 1)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_550_0");
		scr_ralface(1, 8);
		global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_552_0");
	}
	if (global.flag[293] >= 2)
	{
		global.fe = 2;
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_557_0");
		scr_ralface(1, 9);
		global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_559_0");
	}
}
if (room == room_forest_maze_deadend2)
{
	global.fc = 1;
	global.fe = 0;
	global.typer = 30;
	global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_568_0");
	scr_ralface(1, 6);
	global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_570_0");
	scr_susface(3, 2);
	global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_572_0");
	global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_573_0");
	scr_ralface(6, 8);
	global.msg[7] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_575_0");
	global.msg[8] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_576_0");
	if (talked >= 1)
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_579_0");
	if (global.flag[294] >= 2)
	{
		global.fe = 9;
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_584_0");
		scr_ralface(1, 9);
		global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_586_0");
	}
}
if (room == room_cc_throneroom)
{
	if (global.plot < 243)
	{
		global.fc = 5;
		global.fe = 3;
		global.typer = 32;
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_600_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_601_0");
		scr_susface(2, 2);
		global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_603_0");
		scr_lanface(4, 1);
		global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_605_0");
		global.msg[6] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_606_0");
		scr_susface(7, 9);
		global.msg[8] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_608_0");
		global.msg[9] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_609_0");
		scr_lanface(10, 2);
		global.msg[11] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_611_0");
		global.msg[12] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_612_0");
		global.msg[13] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_613_0");
		scr_susface(14, 2);
		global.msg[15] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_615_0");
		global.msg[16] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_616_0");
		global.msg[17] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_617_0");
		scr_lanface(18, 3);
		global.msg[19] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_619_0");
		global.msg[20] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_620_0");
		global.msg[21] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_621_0");
		scr_susface(22, 3);
		global.msg[23] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_623_0");
		global.msg[24] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_624_0");
		scr_lanface(25, 3);
		global.msg[26] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_626_0");
		global.msg[27] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_627_0");
		global.plot = 243;
	}
	else
	{
		global.fc = 5;
		global.fe = 3;
		global.typer = 32;
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_636_0");
		scr_susface(1, 3);
		global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_638_0");
		scr_lanface(3, 3);
		global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_640_0");
	}
}
if (room == room_cc_kingbattle)
{
	global.typer = 31;
	global.fc = 2;
	global.fe = 11;
	if (global.plot == 242)
	{
		global.fe = 1;
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_656_0");
		scr_susface(1, 2);
		global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_658_0");
	}
	if (global.plot >= 243)
	{
		global.fe = 1;
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_665_0");
		scr_susface(1, 2);
		global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_667_0");
		global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_668_0");
	}
	if (global.plot < 242)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_674_0");
		scr_susface(1, 0);
		global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_676_0");
		global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_677_0");
		scr_ralface(4, 8);
		global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_679_0");
		global.msg[6] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_680_0");
		global.msg[7] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_681_0");
		scr_susface(8, 2);
		global.msg[9] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_683_0");
		global.plot = 242;
	}
}
if (room == room_library)
{
	if (room == room_library)
	{
		if (x < 140)
		{
			global.fc = 12;
			global.typer = 13;
			global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_700_0");
			if (global.flag[256] == 1)
				global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_702_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_703_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_704_0");
			global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_705_0");
			global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_706_0");
			global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_707_0");
			if (talked >= 1)
			{
				global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_711_0");
				global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_712_0");
				global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_713_0");
				global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_714_0");
			}
			if (global.flag[255] >= 1 && global.flag[256] == 0)
			{
				global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_719_0");
				global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_720_0");
				global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_721_0");
				global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_722_0");
				global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_723_0");
				global.msg[5] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_724_0");
				global.flag[256] = 1;
				talked = -1;
			}
		}
		if (x > 150 && x < 220)
		{
			global.fc = 14;
			global.fe = 0;
			global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_739_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_740_0");
			global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_741_0");
			scr_noface(3);
			global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_743_0");
			if (talked >= 1)
				global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_747_0");
		}
		if (x > 220)
		{
			global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_753_0");
			global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_754_0");
		}
	}
}
if (room == room_flowershop_1f)
{
	global.fc = 10;
	global.fe = 1;
	global.typer = 18;
	global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_767_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_768_0");
	global.msg[2] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_769_0");
	global.msg[3] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_770_0");
	global.msg[4] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_771_0");
	if (talked >= 1)
	{
		global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_775_0");
		global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_776_0");
	}
}
if (room == room_flowershop_2f)
{
	global.fc = 10;
	global.fe = 2;
	global.typer = 18;
	global.msg[0] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_785_0");
	global.msg[1] = scr_84_get_lang_string("obj_npc_facing_slash_Other_10_gml_786_0");
}
if (room == room_alphysalley)
{
	global.fc = 11;
	global.fe = 0;
	global.typer = 20;
	global.msc = 285;
	scr_text(global.msc);
}
if (room == room_town_south)
{
	global.typer = 17;
	global.msc = 335;
	scr_text(global.msc);
}
if (room == room_town_mid)
{
	image_speed = 0;
	image_index = 0;
	global.typer = 14;
	global.fc = 6;
	global.fe = 0;
	global.msc = 370;
	if (global.flag[273] >= 1)
		global.msc = 371;
	scr_text(global.msc);
	with (obj_town_event)
		con = 70;
}
if (room == room_town_north)
{
	if (dtsprite == spr_noelle_dt)
	{
		global.msc = 385;
		global.typer = 12;
		global.fc = 3;
		global.fe = 0;
		scr_text(global.msc);
	}
}
remanimspeed = image_speed;
myinteract = 3;
mydialoguer = instance_create(0, 0, obj_dialoguer);
talked += 1;
