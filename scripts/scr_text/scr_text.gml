function scr_text(arg0)
{
	switch (arg0)
	{
		case 0:
			break;
		case 10:
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_7_0");
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_8_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_11_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_12_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_13_0");
			break;
		case 11:
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_19_0");
			}
			else
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_23_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_24_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_25_0");
				script_execute(scr_litemshift, global.menucoord[1], 0);
				for (i = 0; i < 12; i += 1)
				{
					global.item[i] = 0;
					global.weapon[i] = 0;
					global.armor[i] = 0;
				}
			}
			break;
		case 100:
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_38_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_39_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_40_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_41_0");
			global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_42_0");
			global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_43_0");
			global.msg[6] = " ";
			break;
		case 101:
			if (global.choice == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_50_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_51_0");
				with (obj_classscene)
					con = 20;
			}
			if (global.choice == 0)
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_56_0");
			break;
		case 102:
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_61_0");
			global.msg[1] = " ";
			break;
		case 103:
			if (global.choice == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_68_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_69_0");
				with (obj_classscene)
					con = 20;
			}
			if (global.choice == 0)
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_74_0");
			break;
		case 104:
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_79_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_80_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_81_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_82_0");
			global.msg[4] = " ";
			break;
		case 105:
			global.msg[0] = " %%";
			break;
		case 110:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_91_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_92_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			if (global.flag[100] == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_97_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_98_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_99_0");
			}
			else
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_103_0");
			}
			break;
		case 111:
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_111_0");
				global.flag[100] = 1;
				scr_itemget(3);
				with (obj_readable_room1)
				{
					with (shine)
						instance_destroy();
				}
			}
			else
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_118_0");
			}
			break;
		case 120:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_124_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_125_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_128_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_129_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_130_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_131_0");
			global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_132_0");
			global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_133_0");
			global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_134_0");
			global.msg[7] = " ";
			break;
		case 121:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_139_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_140_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_145_0");
			}
			else
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_149_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_150_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_151_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_152_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_153_0");
				global.msg[5] = " ";
			}
			break;
		case 122:
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_162_0");
			}
			else
			{
				global.flag[203] = 1;
				with (obj_darkcastle_event)
					con = 30;
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_168_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_169_0");
				scr_susface(2, 0);
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_171_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_172_0");
				scr_ralface(5, 0);
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_174_0");
				scr_susface(7, 0);
				global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_176_0");
				global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_177_0");
				scr_ralface(10, 0);
				global.msg[11] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_179_0");
				global.msg[12] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_180_0");
				scr_susface(13, 1);
				global.msg[14] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_182_0");
				global.msg[15] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_183_0");
				global.msg[16] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_184_0");
				global.msg[17] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_185_0");
				global.msg[18] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_186_0");
				scr_ralface(19, 1);
				global.msg[20] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_188_0");
			}
			break;
		case 125:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_193_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_194_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_197_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_198_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_199_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_200_0");
			global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_201_0");
			global.msg[5] = " ";
			break;
		case 126:
			if (global.choice == 0)
			{
				global.fe = 7;
				global.flag[204] = 1;
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_210_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_211_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_212_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_213_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_214_0");
			}
			else
			{
				global.flag[204] = 2;
				global.fe = 8;
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_221_0");
			}
			break;
		case 130:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_226_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_227_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			input_name = scr_get_input_name(5);
			global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_text_slash_scr_text_gml_231_0"), input_name);
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_232_0");
			global.msg[2] = " ";
			break;
		case 131:
			if (global.choice == 0)
			{
				global.fe = 3;
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_241_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_242_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_243_0");
			}
			else
			{
				global.fe = 0;
				input_name = scr_get_input_name(5);
				global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("scr_text_slash_scr_text_gml_249_0"), input_name);
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_250_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_251_0");
			}
			break;
		case 132:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_257_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_258_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_261_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_262_0") + scr_get_input_name(5) + scr_84_get_lang_string("scr_text_slash_scr_text_gml_262_1");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_263_0");
			global.msg[3] = " ";
			break;
		case 133:
			if (global.choice == 0)
			{
				global.fe = 3;
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_272_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_273_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_274_0");
			}
			else
			{
				global.fe = 0;
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_279_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_280_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_281_0");
			}
			break;
		case 135:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_288_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_289_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_292_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_293_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_294_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_295_0");
			global.msg[4] = " ";
			break;
		case 136:
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_302_0");
				with (obj_tutorialbattleevent)
					con = 20;
			}
			else
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_307_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_308_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_309_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_310_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_311_0") + scr_get_input_name(6) + scr_84_get_lang_string("scr_text_slash_scr_text_gml_311_1");
				scr_noface(5);
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_313_0");
			}
			break;
		case 140:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_318_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_319_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_322_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_323_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_324_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_325_0");
			global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_326_0");
			global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_327_0");
			global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_328_0");
			global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_329_0");
			global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_330_0");
			global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_331_0");
			global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_332_0");
			global.msg[11] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_333_0");
			global.msg[12] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_334_0");
			global.msg[13] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_335_0");
			global.msg[14] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_336_0");
			global.msg[15] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_337_0");
			global.msg[16] = " ";
			break;
		case 141:
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_342_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_343_0");
			if (global.choice == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_347_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_348_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_349_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_350_0");
			}
			break;
		case 145:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_357_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_358_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			if (global.flag[101] == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_363_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_364_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_365_0");
			}
			if (global.flag[101] == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_369_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_370_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_371_0");
			}
			if (global.flag[101] >= 2)
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_376_0");
			break;
		case 146:
			if (global.choice == 0)
			{
				scr_itemget(1);
				if (noroom == 0)
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_387_0");
					global.flag[101] += 1;
				}
				else
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_392_0");
				}
			}
			else
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_398_0");
			}
			break;
		case 147:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_403_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_404_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			if (global.flag[102] == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_409_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_410_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_411_0");
			}
			if (global.flag[102] == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_415_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_416_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_417_0");
			}
			if (global.flag[102] >= 2)
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_422_0");
			break;
		case 148:
			if (global.choice == 0)
			{
				scr_itemget(1);
				if (noroom == 0)
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_433_0");
					global.flag[102] += 1;
				}
				else
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_438_0");
				}
			}
			else
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_444_0");
			}
			break;
		case 149:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_449_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_450_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			if (global.flag[103] == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_455_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_456_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_457_0");
			}
			else
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_461_0");
			}
			break;
		case 150:
			if (global.choice == 0)
			{
				scr_keyitemget(3);
				if (noroom == 0)
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_472_0");
					global.flag[103] = 1;
				}
				else
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_477_0");
				}
			}
			else
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_483_0");
			}
			break;
		case 175:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_491_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_492_0");
			global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_493_0");
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_495_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_496_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_497_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_498_0");
			global.msg[4] = " ";
			break;
		case 176:
			if (global.choice == 0)
			{
				global.fc = 0;
				global.typer = 6;
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_507_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_508_0");
				scr_lanface(2, 2);
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_510_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_511_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_512_0");
				scr_susface(6, 2);
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_514_0") + "/";
				scr_lanface(8, 7);
				global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_516_0");
				global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_517_0");
				scr_ralface(11, 1);
				global.msg[12] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_519_0");
				scr_susface(13, 2);
				global.msg[14] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_521_0");
				scr_lanface(15, 2);
				global.msg[16] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_523_0");
				global.msg[17] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_524_0");
				global.msg[18] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_525_0");
				global.msg[19] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_526_0");
				scr_ralface(20, "A");
				global.msg[21] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_528_0");
				scr_lanface(22, 2);
				global.msg[23] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_530_0");
				global.msg[24] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_531_0");
				global.flag[214] = 1;
			}
			if (global.choice == 1)
			{
				global.fc = 0;
				global.typer = 6;
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_539_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_540_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_541_0");
				scr_lanface(3, 3);
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_543_0");
				scr_ralface(5, "A");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_545_0");
				scr_susface(7, 1);
				global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_547_0");
				scr_lanface(9, 3);
				global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_549_0");
				global.msg[11] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_550_0");
				global.msg[12] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_551_0");
				global.msg[13] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_552_0");
				global.msg[14] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_553_0");
				global.msg[15] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_554_0");
				global.flag[214] = 2;
			}
			if (global.choice == 2)
			{
				global.fc = 0;
				global.typer = 6;
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_562_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_563_0");
				scr_lanface(2, 7);
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_565_0");
				scr_ralface(4, 8);
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_567_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_568_0");
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_569_0");
				scr_susface(8, 0);
				global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_571_0");
				global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_572_0");
				global.msg[11] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_573_0");
				global.msg[12] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_574_0");
				global.msg[13] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_575_0");
				scr_ralface(14, 1);
				global.msg[15] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_577_0");
				scr_susface(16, 2);
				global.msg[17] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_579_0");
				global.msg[18] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_580_0");
				global.msg[19] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_581_0");
				global.msg[20] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_582_0");
				scr_lanface(21, 1);
				global.msg[22] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_584_0");
				global.msg[23] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_585_0");
				global.msg[24] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_586_0");
				global.flag[214] = 3;
			}
			break;
		case 180:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_595_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_596_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_599_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_600_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_601_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_602_0");
			global.msg[4] = " ";
			break;
		case 181:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_607_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_608_0");
			global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_609_0");
			global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_610_0");
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_611_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_612_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_613_0");
			if (global.flag[255] < 2)
			{
				global.flag[255] = 2;
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_618_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_619_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_620_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_621_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_624_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_625_0");
				if (global.choice == 1)
				{
					global.fe = 1;
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_629_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_630_0");
					global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_631_0");
					global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_632_0");
					global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_633_0");
					global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_634_0");
				}
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_636_0");
			}
			break;
		case 182:
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_641_0");
			if (global.choice == 0)
			{
				global.fe = 0;
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_645_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_646_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_647_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_648_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_649_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_650_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_651_0");
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_652_0");
				global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_653_0");
				global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_654_0");
				global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_655_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_659_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_660_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_661_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_662_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_663_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_664_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_665_0");
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_666_0");
				global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_667_0");
				global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_668_0");
				global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_669_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_673_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_674_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_675_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_676_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_677_0");
			}
			if (global.choice == 3)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_682_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_683_0");
			}
			break;
		case 185:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_689_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_690_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_693_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_694_0");
			global.msg[2] = " ";
			break;
		case 186:
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_699_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_700_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_701_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_702_0");
			global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_703_0");
			global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_704_0");
			global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_705_0");
			global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_706_0");
			global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_707_0");
			global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_708_0");
			if (global.choice < 1)
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_709_0");
			break;
		case 190:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_713_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_714_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_717_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_718_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_719_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_720_0");
			global.msg[4] = " ";
			break;
		case 191:
			if (global.choice == 0)
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_727_0");
			if (global.choice == 1)
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_733_0");
			break;
		case 192:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_738_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_739_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_743_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_744_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_745_0");
			global.msg[3] = " ";
			if (global.flag[257] == 1)
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_749_0");
			break;
		case 193:
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_756_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_757_0");
				global.flag[257] = 1;
			}
			if (global.choice == 1)
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_763_0");
			break;
		case 195:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_769_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_770_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_774_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_775_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_776_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_777_0");
			global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_778_0");
			global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_779_0");
			global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_780_0");
			global.msg[7] = " ";
			break;
		case 196:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_786_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_787_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_794_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_795_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_796_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_797_0");
				global.msg[4] = " ";
			}
			if (global.choice == 1)
			{
				global.flag[258] = 3;
				global.flag[20] = 1;
				global.msg[0] = "%%%";
			}
			break;
		case 197:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_809_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_810_0");
			global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_811_0");
			global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_812_0");
			if (global.choice == 0)
			{
				global.flag[259] = 1;
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_817_0");
			}
			if (global.choice == 1)
			{
				global.flag[259] = 2;
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_822_0");
			}
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_825_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_826_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_827_0");
			nn = scr_84_get_lang_string("scr_text_slash_scr_text_gml_828_0");
			if (global.flag[259] == 2)
				nn = scr_84_get_lang_string("scr_text_slash_scr_text_gml_829_0");
			global.msg[4] = scr_84_get_subst_string(scr_84_get_lang_string("scr_text_slash_scr_text_gml_830_0"), nn);
			global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_831_0");
			global.msg[6] = " ";
			break;
		case 198:
			if (global.choice == 0)
			{
				global.flag[258] = 2;
				global.flag[260] = 1;
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_840_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_841_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_842_0");
			}
			if (global.choice == 1)
			{
				global.flag[258] = 2;
				global.flag[260] = 2;
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_848_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_849_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_850_0");
			}
			if (global.choice == 2)
			{
				global.flag[258] = 2;
				global.flag[260] = 3;
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_857_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_858_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_859_0");
			}
			if (global.choice == 3)
			{
				global.flag[258] = 3;
				global.flag[260] = 4;
				global.flag[20] = 1;
				global.msg[0] = "%%%";
			}
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_869_0");
			global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_870_0");
			global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_871_0");
			if (global.flag[259] == 2)
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_872_0");
			global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_873_0");
			global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_874_0");
			global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_875_0");
			break;
		case 210:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_879_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_880_0");
			global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_881_0");
			global.choicemsg[3] = " ";
			if (read == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_885_0");
				scr_asgface(1, 0);
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_887_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_888_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_889_0");
			}
			else
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_894_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_895_0");
			}
			break;
		case 211:
			global.fc = 0;
			global.typer = 5;
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_902_0");
			if (global.choice == 0)
			{
				if (global.flag[263] == 2)
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_907_0");
				if (global.flag[263] == 1)
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_912_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_913_0");
					global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_914_0");
				}
				if (global.flag[263] == 0)
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_919_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_920_0");
					global.flag[263] = 1;
					if (scr_litemcheck(8))
					{
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_924_0");
						global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_925_0");
						global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_926_0");
						for (i = 0; i < 8; i += 1)
						{
							if (global.litem[i] == 8)
								scr_litemshift(i, 0);
						}
						global.flag[263] = 2;
					}
				}
			}
			if (global.choice == 1)
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_943_0");
			if (global.choice == 2)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_947_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_948_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_949_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_950_0");
			}
			break;
		case 215:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_955_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_956_0");
			global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_957_0");
			global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_958_0");
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_961_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_962_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_963_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_964_0");
			global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_965_0");
			global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_966_0");
			global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_967_0");
			if (global.flag[265] > 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_970_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_971_0");
			}
			global.flag[265] = 1;
			break;
		case 216:
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_979_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_980_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_981_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_982_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_983_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_984_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_985_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_989_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_990_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_991_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_992_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_993_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_994_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_995_0");
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_996_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1000_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1001_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1002_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1003_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1004_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1005_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1006_0");
			}
			if (global.choice == 3)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1010_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1011_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1012_0");
			}
			break;
		case 220:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1017_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1018_0");
			global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1019_0");
			global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1020_0");
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1021_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1022_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1023_0");
			break;
		case 221:
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1029_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1030_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1031_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1032_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1033_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1034_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1039_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1040_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1041_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1042_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1043_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1044_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1045_0");
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1046_0");
				global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1047_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1052_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1053_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1054_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1055_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1056_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1057_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1058_0");
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1059_0");
			}
			if (global.choice == 3)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1063_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1064_0");
			}
			break;
		case 225:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1069_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1070_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1073_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1074_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1075_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1076_0");
			break;
		case 226:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1080_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1081_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			if (global.choice == 0)
			{
				afford = 1;
				if (global.gold >= 50)
					global.gold -= 50;
				else
					afford = 0;
				if (afford == 1)
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1091_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1092_0");
				}
				else
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1096_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1097_0");
					global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1098_0");
					global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1099_0");
					global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1100_0");
					global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1101_0");
					global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1102_0");
				}
				with (obj_npc_puzzlemaster1)
					con = 5;
			}
			else
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1110_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1111_0");
				afford = 0;
			}
			break;
		case 227:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1120_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1121_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			if (global.choice == 0)
			{
				afford = 1;
				if (global.gold >= 20)
					global.gold -= 20;
				else
					afford = 0;
				if (afford == 1)
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1131_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1132_0");
				}
				else
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1136_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1137_0");
					global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1138_0");
					global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1139_0");
					global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1140_0");
					global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1141_0");
					global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1142_0");
				}
				with (obj_npc_puzzlemaster1)
					con = 5;
			}
			else
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1150_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1151_0");
				afford = 0;
			}
			break;
		case 228:
			if (global.choice == 0)
			{
				afford = 1;
				if (global.gold >= 1)
					global.gold -= 1;
				else
					afford = 0;
				if (afford == 1)
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1167_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1168_0");
				}
				else
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1172_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1173_0");
					global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1174_0");
					global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1175_0");
					global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1176_0");
					global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1177_0");
					global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1178_0");
				}
				with (obj_npc_puzzlemaster1)
					con = 5;
			}
			else
			{
				scr_ralface(0, 6);
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1187_0");
				scr_noface(2);
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1189_0");
				scr_ralface(4, 1);
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1191_0");
				scr_noface(6);
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1193_0");
				with (obj_npc_puzzlemaster1)
					con = 5;
				afford = 0;
			}
			break;
		case 230:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1202_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1203_0");
			global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1204_0");
			global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1205_0");
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1206_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1207_0");
			break;
		case 231:
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1211_0");
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1214_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1215_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1216_0");
				scr_ralface(3, 9);
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1218_0");
				scr_noface(5);
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1220_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1224_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1225_0");
				scr_ralface(2, 1);
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1227_0");
				scr_noface(4);
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1229_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1233_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1234_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1235_0");
				scr_susface(3, 0);
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1237_0");
				scr_noface(5);
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1239_0");
				if (!scr_havechar(2))
				{
					scr_ralface(3, 1);
					global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1244_0");
				}
			}
			break;
		case 235:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1251_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1252_0");
			global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1253_0");
			global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1254_0");
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1255_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1256_0");
			break;
		case 236:
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1260_0");
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1263_0");
				scr_ralface(1, 9);
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1265_0");
				scr_noface(3);
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1267_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1272_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1273_0");
				scr_ralface(2, 1);
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1275_0");
				scr_noface(4);
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1277_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1281_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1282_0");
				scr_ralface(2, "A");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1284_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1285_0");
			}
			break;
		case 240:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1290_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1291_0");
			global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1292_0");
			global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1293_0");
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1294_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1295_0");
			break;
		case 241:
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1299_0");
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1302_0");
				scr_susface(1, 2);
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1304_0");
				scr_noface(3);
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1306_0");
				scr_susface(5, 4);
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1308_0");
				if (!scr_havechar(2))
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1312_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1313_0");
				}
				if (global.plot >= 150)
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1317_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1318_0");
				}
			}
			if (global.choice == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1325_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1326_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1327_0");
				scr_susface(3, 2);
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1329_0");
				scr_noface(5);
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1331_0");
				if (!scr_havechar(2))
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1335_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1336_0");
				}
				if (global.plot >= 150)
				{
					input_name = scr_get_input_name(4);
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1341_0");
					global.msg[1] = scr_84_get_subst_string(scr_84_get_lang_string("scr_text_slash_scr_text_gml_1342_0"), input_name);
				}
			}
			if (global.choice == 2)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1348_0");
				scr_susface(1, 0);
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1350_0");
				scr_noface(3);
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1352_0");
				if (!scr_havechar(2))
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1355_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1356_0");
				}
				if (global.plot >= 150)
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1360_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1361_0");
				}
			}
			break;
		case 245:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1373_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1374_0");
			global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1375_0");
			global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1376_0");
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1377_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1378_0");
			break;
		case 246:
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1382_0");
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1385_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1386_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1387_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1388_0");
				scr_ralface(4, 0);
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1390_0");
				scr_noface(6);
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1392_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1397_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1398_0");
				scr_ralface(2, 0);
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1400_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1401_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1402_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1403_0");
				scr_noface(7);
				global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1405_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1409_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1410_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1411_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1412_0");
			}
			break;
		case 250:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1417_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1418_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1421_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1422_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1423_0");
			if (global.flag[216] == 1)
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1426_0");
			break;
		case 251:
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1433_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1434_0");
				afford = 1;
				if (global.gold >= 1)
					global.gold -= 1;
				else
					afford = 0;
				if (afford == 1)
					global.flag[216] = 1;
				if (afford == 0)
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1440_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1441_0");
				}
			}
			if (global.choice == 1)
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1446_0");
			break;
		case 255:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1451_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1452_0");
			global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1453_0");
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1455_0");
			scr_susface(1, 6);
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1457_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1458_0");
			scr_ralface(4, 1);
			global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1460_0");
			scr_susface(6, 7);
			global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1462_0");
			scr_lanface(8, 3);
			global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1464_0");
			scr_ralface(10, 6);
			global.msg[11] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1466_0");
			scr_lanface(12, 2);
			global.msg[13] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1468_0");
			scr_ralface(14, 8);
			global.msg[15] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1470_0");
			scr_lanface(16, 1);
			global.msg[17] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1472_0");
			scr_ralface(18, 8);
			global.msg[19] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1474_0");
			global.msg[20] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1475_0");
			break;
		case 256:
			global.flag[232] = 1;
			if (global.choice == 0)
			{
				scr_ralface(0, 6);
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1488_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1489_0");
				scr_lanface(3, 3);
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1491_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1492_0");
				scr_ralface(6, 1);
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1494_0");
				global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1495_0");
				scr_susface(9, 7);
				global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1497_0");
				scr_lanface(11, 3);
				global.msg[12] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1499_0");
				scr_susface(13, 6);
				global.msg[14] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1501_0");
			}
			if (global.choice == 1)
			{
				scr_noface(0);
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1507_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1508_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1509_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1510_0");
				scr_susface(5, 2);
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1512_0");
				scr_lanface(7, 3);
				global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1514_0");
			}
			if (global.choice == 2)
			{
				scr_susface(0, 2);
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1521_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1522_0");
				scr_lanface(3, 3);
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1524_0");
				scr_susface(5, 2);
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1526_0");
				scr_lanface(7, 3);
				global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1528_0");
				scr_susface(9, 2);
				global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1530_0");
				scr_lanface(11, 3);
				global.msg[12] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1532_0");
			}
			break;
		case 270:
			addflag = 0;
			if (global.flag[267] == -10)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1550_0");
				addflag = 1;
			}
			if (global.flag[267] == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1559_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1560_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1561_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1562_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1563_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1564_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1565_0");
				addflag = 1;
			}
			if (global.flag[267] == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1572_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1573_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1574_0");
			}
			if (addflag == 1)
				global.flag[267] += 1;
			break;
		case 285:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1586_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1587_0");
			global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1588_0");
			global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1589_0");
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1590_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1591_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1592_0");
			break;
		case 286:
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1596_0");
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1599_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1600_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1601_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1602_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1603_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1604_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1605_0");
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1606_0");
				global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1607_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1611_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1612_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1613_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1614_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1615_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1616_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1617_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1624_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1625_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1626_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1627_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1628_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1629_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1630_0");
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1631_0");
				global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1632_0");
				global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1633_0");
				global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1634_0");
				global.msg[11] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1635_0");
				global.msg[12] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1636_0");
				global.msg[13] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1637_0");
				global.msg[14] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1638_0");
				global.msg[15] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1639_0");
				global.msg[16] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1640_0");
				global.msg[17] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1641_0");
				global.msg[18] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1642_0");
				global.msg[19] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1643_0");
				global.msg[20] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1644_0");
				global.msg[21] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1645_0");
			}
			if (global.choice == 3)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1650_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1651_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1652_0");
			}
			break;
		case 290:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1658_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1659_0");
			global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1660_0");
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1662_0");
			global.msg[1] = " ";
			break;
		case 291:
			if (global.choice == 0)
			{
				with (obj_suitspuzz)
					event_user(2);
			}
			if (global.choice == 1)
			{
				with (obj_suitspuzz)
					event_user(3);
			}
			if (global.choice == 2)
			{
				with (obj_suitspuzz)
					event_user(4);
			}
			global.msg[0] = " %%";
			break;
		case 295:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1683_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1684_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1687_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1688_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1689_0");
			global.msg[3] = " ";
			if (global.flag[106] == 1)
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1693_0");
			break;
		case 296:
			if (global.choice == 0)
			{
				global.hp[1] = global.maxhp[1];
				snd_play(snd_swallow);
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1702_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1703_0");
				global.flag[106] = 1;
				with (obj_event_manager)
					trigger_event((0 << 0), (9 << 0));
			}
			if (global.choice == 1)
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1708_0");
			break;
		case 300:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1713_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1714_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1717_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1718_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1719_0");
			global.msg[3] = " ";
			if (global.flag[105] == 1)
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1723_0");
			break;
		case 301:
			if (global.choice == 0)
			{
				scr_armorget(5);
				if (noroom == 1)
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1733_0");
				}
				else
				{
					with (obj_npc_sign)
						image_index = 1;
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1738_0");
					global.flag[105] = 1;
				}
			}
			if (global.choice == 1)
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1744_0");
			break;
		case 305:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1749_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1750_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1753_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1754_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1755_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1756_0");
			global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1757_0");
			global.msg[5] = " ";
			break;
		case 306:
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1762_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1763_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1764_0");
			break;
		case 310:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1768_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1769_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1772_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1773_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1774_0");
			global.msg[3] = " ";
			global.msg[4] = " ";
			break;
		case 311:
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1780_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1781_0");
			break;
		case 315:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1785_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1786_0");
			global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1787_0");
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1789_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1790_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1791_0");
			break;
		case 316:
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1795_0");
			if (global.choice == 0)
			{
				which = 0;
				if (scr_keyitemcheck(4) && scr_keyitemcheck(6) && scr_keyitemcheck(7))
					which = 3;
				if (scr_keyitemcheck(3) && which == 0)
				{
					which = 1;
					scr_itemget(6);
					if (noroom == 1)
						which = 2;
				}
				if (which == 0)
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1812_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1813_0");
					global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1814_0");
					global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1815_0");
				}
				if (which == 1)
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1820_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1821_0");
					with (obj_npc_hammerguy)
						con = 30;
				}
				if (which == 2)
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1827_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1828_0");
				}
				if (which == 3)
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1833_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1834_0");
					with (obj_npc_hammerguy)
						con = 50;
				}
			}
			if (global.choice == 1)
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1841_0");
			if (global.choice == 2)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1845_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1846_0");
				with (obj_npc_hammerguy)
					con = 10;
			}
			break;
		case 325:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1853_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1854_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1857_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1858_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1859_0");
			global.msg[3] = " ";
			if (scr_itemcheck(13))
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1863_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1864_0");
			}
			break;
		case 326:
			if (global.choice == 0)
			{
				if (global.gold >= 40)
				{
					scr_itemget(13);
					if (noroom == 0)
					{
						global.gold -= 40;
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1877_0");
					}
					else
					{
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1881_0");
					}
				}
				else
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1886_0");
				}
			}
			else
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1891_0");
			}
			break;
		case 327:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1900_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1901_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1904_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1905_0");
			global.msg[2] = " ";
			break;
		case 328:
			if (global.choice == 0)
			{
				if (global.gold >= 40)
				{
					scr_itemget(12);
					if (noroom == 0)
					{
						global.gold -= 40;
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1918_0");
					}
					else
					{
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1922_0");
					}
				}
				else
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1927_0");
				}
			}
			else
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1932_0");
			}
			break;
		case 330:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1938_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1939_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.fc = 5;
			global.typer = 32;
			global.fe = 2;
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1945_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1946_0");
			scr_susface(2, 2);
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1948_0");
			scr_lanface(4, 3);
			global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1950_0");
			global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1951_0");
			global.msg[7] = " ";
			break;
		case 331:
			if (global.choice == 0)
			{
				if (global.gold >= 40)
				{
					scr_itemget(9);
					if (noroom == 0)
					{
						global.gold -= 40;
						global.fc = 1;
						global.fe = 1;
						global.typer = 30;
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1968_0");
						scr_noface(1);
						global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1970_0");
						scr_susface(3, 2);
						global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1972_0");
						scr_lanface(5, 1);
						global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1974_0");
						with (obj_lancerbakesale_event)
							con = 10;
					}
					else
					{
						global.gold -= 40;
						global.fc = 0;
						global.fe = 0;
						global.typer = 6;
						global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1984_0");
						global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1985_0");
						scr_lanface(2, 7);
						global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1987_0");
						scr_susface(4, 2);
						global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1989_0");
						scr_lanface(6, 3);
						global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1991_0");
						scr_susface(8, 2);
						global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1993_0");
						scr_lanface(10, 2);
						global.msg[11] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_1995_0");
						with (obj_lancerbakesale_event)
							con = 10;
					}
				}
				else
				{
					global.typer = 32;
					global.fe = 6;
					global.fc = 5;
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2006_0");
					scr_susface(1, 0);
					global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2008_0");
					scr_lanface(3, 6);
					global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2010_0");
				}
			}
			else
			{
				global.typer = 32;
				global.fc = 5;
				global.fe = 2;
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2018_0");
				scr_susface(1, 2);
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2020_0");
				scr_ralface(3, 6);
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2022_0");
			}
			break;
		case 335:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2027_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2028_0");
			global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2029_0");
			global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2030_0");
			global.fe = 2;
			global.fc = 9;
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2033_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2034_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2035_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2036_0");
			global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2037_0");
			global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2038_0");
			global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2039_0");
			global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2040_0");
			if (global.flag[270] >= 1)
			{
				global.fe = 1;
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2044_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2045_0");
			}
			global.flag[270] = 1;
			break;
		case 336:
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2053_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2054_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2055_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2056_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2057_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2061_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2062_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2063_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2064_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2068_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2069_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2070_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2071_0");
			}
			if (global.choice == 3)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2075_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2076_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2077_0");
			}
			break;
		case 340:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2082_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2083_0");
			global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2084_0");
			global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2085_0");
			global.fe = 0;
			global.fc = 19;
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2088_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2089_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2090_0");
			if (global.flag[271] > 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2093_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2094_0");
			}
			global.flag[271] = 2;
			break;
		case 341:
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2102_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2103_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2104_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2105_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2106_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2107_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2108_0");
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2109_0");
				global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2110_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2114_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2115_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2116_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2117_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2118_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2119_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2120_0");
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2121_0");
				global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2122_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2127_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2128_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2129_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2130_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2131_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2132_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2133_0");
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2134_0");
				global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2135_0");
			}
			if (global.choice == 3)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2140_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2141_0");
			}
			break;
		case 345:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2146_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2147_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2150_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2151_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2152_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2153_0");
			break;
		case 346:
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2159_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2160_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2161_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2162_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2163_0");
			}
			else
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2167_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2168_0");
			}
			break;
		case 350:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2173_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2174_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2177_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2178_0");
			break;
		case 351:
			if (global.choice == 0)
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2184_0");
			else
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2188_0");
			break;
		case 355:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2193_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2194_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2197_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2198_0");
			global.msg[2] = " ";
			if (global.plot >= 50)
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2202_0");
			break;
		case 356:
			if (global.choice == 0)
			{
				global.msg[0] = "%%";
				with (obj_town_event)
					con = 60;
			}
			else
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2218_0");
			}
			break;
		case 360:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2223_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2224_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2227_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2228_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2229_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2230_0");
			break;
		case 361:
			if (global.choice == 0)
			{
				with (obj_npc_room)
					tempvar = 1;
				snd_play(snd_pianonoise);
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2238_0");
			}
			else
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2242_0");
			}
			break;
		case 365:
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2247_0");
			scr_torface(1, 8);
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2249_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2250_0");
			global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2251_0");
			global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2252_0");
			global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2253_0");
			global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2254_0");
			global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2255_0");
			global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2256_0");
			global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2257_0");
			global.msg[11] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2258_0");
			global.msg[12] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2259_0");
			global.msg[13] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2260_0");
			global.msg[14] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2261_0");
			global.msg[15] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2262_0");
			global.msg[16] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2263_0");
			global.msg[17] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2264_0");
			scr_noface(18);
			global.msg[19] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2266_0");
			break;
		case 370:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2270_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2271_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2274_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2275_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2276_0");
			break;
		case 371:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2280_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2281_0");
			global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2282_0");
			global.choicemsg[3] = " ";
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2286_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2287_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2288_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2289_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2290_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2294_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2295_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2296_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2297_0");
			}
			if (global.flag[273] >= 1)
			{
				global.fe = 5;
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2303_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2304_0");
			}
			if (global.flag[273] < 1)
				global.flag[273] = 1;
			break;
		case 372:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2310_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2311_0");
			global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2312_0");
			global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2313_0");
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2317_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2318_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2319_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2320_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2324_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2325_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2326_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2332_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2333_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2334_0");
			}
			break;
		case 373:
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2341_0");
				if (global.flag[274] == 2)
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2344_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2345_0");
				}
				if (global.flag[274] == 1)
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2350_0");
				if (global.flag[274] == 0)
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2355_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2356_0");
					global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2357_0");
					global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2358_0");
					global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2359_0");
					global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2360_0");
					global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2361_0");
					scr_noface(7);
					global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2363_0");
					global.flag[274] = 1;
					scr_phoneadd(202);
				}
			}
			if (global.choice == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2371_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2372_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2373_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2374_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2375_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2376_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2380_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2381_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2382_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2383_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2384_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2385_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2386_0");
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2387_0");
				global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2388_0");
			}
			if (global.choice == 3)
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2392_0");
			break;
		case 375:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2397_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2398_0");
			global.choicemsg[2] = "3";
			global.choicemsg[3] = "4";
			snd_play(snd_phone);
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2402_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2403_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2404_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2405_0");
			global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2406_0");
			if (global.flag[274] == 2)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2409_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2410_0");
			}
			break;
		case 376:
			if (global.flag[274] == 1)
				global.flag[274] = 2;
			scr_phonename();
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2417_0");
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2418_0");
				global.flag[275] = 1;
			}
			if (global.choice == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2419_0");
				global.flag[275] = 2;
			}
			if (global.choice == 2)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2420_0");
				global.flag[275] = 3;
			}
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2421_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2422_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2423_0");
			global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2424_0");
			if (global.choice == 3)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2427_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2428_0");
			}
			break;
		case 380:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2434_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2435_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2438_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2439_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2440_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2441_0");
			global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2442_0");
			global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2443_0");
			break;
		case 381:
			if (global.choice == 0)
			{
				if (global.flag[33] < 40)
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2451_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2452_0");
					global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2453_0");
				}
				if (global.flag[33] >= 40)
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2458_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2459_0");
					global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2460_0");
				}
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2463_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2464_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2465_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2466_0");
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2467_0");
				global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2468_0");
				global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2469_0");
				global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2470_0");
			}
			if (global.choice == 1)
			{
				if (global.flag[33] < 40)
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2478_0");
				if (global.flag[33] >= 40)
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2483_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2485_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2486_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2487_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2488_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2489_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2490_0");
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2491_0");
			}
			break;
		case 385:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2498_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2499_0");
			global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2500_0");
			global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2501_0");
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2502_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2503_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2504_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2505_0");
			global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2506_0");
			global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2507_0");
			global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2508_0");
			global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2509_0");
			global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2510_0");
			global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2511_0");
			global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2512_0");
			global.msg[11] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2513_0");
			global.msg[12] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2514_0");
			if (global.flag[276] >= 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2517_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2518_0");
			}
			if (global.flag[276] == 0)
				global.flag[276] = 1;
			break;
		case 386:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2524_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2525_0");
			global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2526_0");
			global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2527_0");
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2530_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2531_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2532_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2533_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2534_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2535_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2536_0");
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2537_0");
				global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2538_0");
				if (global.flag[276] >= 2)
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2542_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2543_0");
					global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2544_0");
				}
				if (global.flag[276] < 2)
					global.flag[276] = 2;
			}
			if (global.choice == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2552_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2553_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2554_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2555_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2559_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2560_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2561_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2562_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2563_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2564_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2565_0");
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2566_0");
			}
			if (global.choice == 3)
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2570_0");
			break;
		case 387:
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2583_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2584_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2585_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2586_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2587_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2588_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2589_0");
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2590_0");
				global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2591_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2595_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2596_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2597_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2598_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2599_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2600_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2601_0");
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2602_0");
				global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2603_0");
				global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2604_0");
				global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2605_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2609_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2610_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2611_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2612_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2613_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2614_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2615_0");
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2616_0");
				global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2617_0");
				global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2618_0");
			}
			if (global.choice == 3)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2622_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2623_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2624_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2625_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2626_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2627_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2628_0");
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2629_0");
			}
			break;
		case 400:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2635_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2636_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2639_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2640_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2641_0");
			break;
		case 401:
			if (global.choice == 0)
			{
				with (obj_krisroom)
					con = 50;
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2648_0");
			}
			if (global.choice == 1)
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2652_0");
			break;
		case 402:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2657_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2658_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2661_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2662_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2663_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2664_0");
			break;
		case 403:
			if (global.choice == 0)
			{
				global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2670_0");
				global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2671_0");
				global.choicemsg[2] = " ";
				global.choicemsg[3] = " ";
				with (obj_krisroom)
					con = 100;
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2676_0");
			}
			if (global.choice == 1)
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2680_0");
			break;
		case 405:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2685_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2686_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2689_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2690_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2691_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2692_0");
			scr_ralface(4, 0);
			global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2694_0");
			scr_susface(6, 2);
			global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2696_0");
			scr_noface(8);
			global.msg[9] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2698_0");
			global.msg[10] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2699_0");
			global.msg[11] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2700_0");
			global.msg[12] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2701_0");
			global.msg[13] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2702_0");
			global.msg[14] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2703_0");
			scr_ralface(15, 8);
			global.msg[16] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2705_0");
			scr_noface(17);
			global.msg[18] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2707_0");
			scr_susface(19, 2);
			global.msg[20] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2709_0");
			scr_noface(21);
			global.msg[22] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2711_0");
			global.msg[23] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2712_0");
			global.msg[24] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2713_0");
			global.msg[25] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2714_0");
			if (global.flag[241] == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2718_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2719_0");
			}
			break;
		case 406:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2724_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2725_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			if (global.flag[241] == 0)
				global.flag[241] = 1;
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2731_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2732_0");
				with (obj_event_room)
					con = 20;
			}
			if (global.choice == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2737_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2738_0");
				with (obj_event_room)
					con = 20;
			}
			break;
		case 410:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2744_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2745_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2748_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2749_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2750_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2751_0");
			global.msg[4] = " ";
			break;
		case 411:
			if (global.flag[241] < 5)
				global.flag[241] = 5;
			scr_keyitemremove(4);
			scr_keyitemremove(5);
			scr_keyitemremove(6);
			scr_keyitemremove(7);
			if (global.choice == 0)
			{
				scr_noface(0);
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2765_0");
				with (obj_event_room)
					con = 5;
			}
			if (global.choice == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2770_0");
				with (obj_event_room)
					con = 5;
			}
			break;
		case 415:
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2776_0");
			break;
		case 420:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2780_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2781_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2784_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2785_0");
			break;
		case 425:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2789_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2790_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2793_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2794_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2795_0");
			break;
		case 426:
			if (global.choice == 0)
			{
				scr_ralface(0, 6);
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2806_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2807_0");
				scr_noface(3);
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2809_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2810_0");
				global.flag[43] = global.flag[43] - global.flag[523];
				if (global.flag[43] < 0)
					global.flag[43] = 0;
				normal_kills = global.flag[520] - global.flag[523];
				global.flag[40] = global.flag[40] - normal_kills;
				if (global.flag[40] < 0)
					global.flag[40] = 0;
				global.flag[243] = 1;
			}
			else
			{
				scr_susface(0, 1);
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2822_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2823_0");
				scr_noface(3);
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2825_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2826_0");
				scr_itemget(13);
				if (noroom == 1)
				{
					scr_ralface(5, 6);
					global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2831_0");
					scr_susface(7, 2);
					global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2833_0");
				}
				global.flag[243] = 2;
			}
			break;
		case 430:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2840_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2841_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2844_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2845_0");
			break;
		case 431:
			if (global.choice == 0)
			{
				snd_play(snd_splat);
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2852_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2853_0");
			}
			else
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2857_0");
			}
			break;
		case 435:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2862_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2863_0");
			global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2864_0");
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2866_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2867_0");
			break;
		case 436:
			global.msg[0] = "%%";
			if (global.choice == 0)
			{
				if (global.flag[239] != 0)
				{
					with (obj_elevatorcontroller)
					{
						if (global.flag[239] == 1)
						{
							dir = -1;
							newcno = 0;
							con = 100;
						}
						else
						{
							dir = 1;
							newcno = 0;
							con = 100;
						}
					}
				}
				else
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2892_0");
				}
			}
			if (global.choice == 1)
			{
				if (global.flag[239] != 1)
				{
					with (obj_elevatorcontroller)
					{
						dir = 1;
						newcno = 1;
						con = 100;
					}
				}
				else
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2908_0");
				}
			}
			if (global.choice == 2)
			{
				if (global.flag[239] != 3)
				{
					with (obj_elevatorcontroller)
					{
						dir = -1;
						newcno = 3;
						con = 100;
					}
				}
				else
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2924_0");
				}
			}
			break;
		case 440:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2933_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2934_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2937_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2938_0");
			break;
		case 441:
			global.msg[0] = "%%";
			if (global.choice == 0)
			{
				with (obj_elevatorcontroller)
				{
					if (global.flag[239] == 1)
					{
						dir = 1;
						newcno = 2;
						con = 100;
					}
					else
					{
						dir = -1;
						newcno = 1;
						con = 100;
					}
				}
			}
			break;
		case 445:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2965_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2966_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.typer = 30;
			global.fc = 1;
			global.fe = 0;
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2972_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2973_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2974_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2975_0");
			global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2976_0");
			global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2977_0");
			global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2978_0");
			global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2979_0");
			break;
		case 446:
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2985_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2986_0");
			}
			else
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2990_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2991_0");
			}
			break;
		case 450:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2997_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_2998_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3001_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3002_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3003_0");
			global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3004_0");
			scr_lanface(4, 1);
			global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3006_0");
			scr_susface(6, 1);
			global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3009_0");
			global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3010_0");
			break;
		case 451:
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3014_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3015_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3016_0");
			break;
		case 455:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3021_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3022_0");
			global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3023_0");
			if (scr_litemcheck(4))
				global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3024_0");
			global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3025_0");
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3026_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3027_0");
			break;
		case 456:
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3033_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3034_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3035_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3036_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3037_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3038_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3039_0");
			}
			if (global.choice == 1)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3043_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3044_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3045_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3046_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3047_0");
				global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3048_0");
				global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3049_0");
				global.msg[7] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3050_0");
				global.msg[8] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3051_0");
			}
			if (global.choice == 2)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3055_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3056_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3057_0");
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3058_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3059_0");
				if (scr_litemcheck(4))
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3063_0");
					global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3064_0");
					global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3065_0");
					global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3066_0");
					global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3067_0");
					global.msg[5] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3068_0");
					global.msg[6] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3069_0");
					scr_litemremove(4);
					global.flag[262] = 3;
				}
			}
			if (global.choice == 3)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3077_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3078_0");
			}
			break;
		case 460:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3083_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3084_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3087_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3088_0");
			if (global.plot >= 75)
			{
				global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3091_0");
				global.choicemsg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3092_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3093_0");
			}
			if (global.plot >= 154)
			{
				global.choicemsg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3097_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3098_0");
			}
			break;
		case 461:
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3103_0");
			if (global.choice == 0)
			{
				with (obj_shortcut_door)
					door_destination = 61;
			}
			if (global.choice == 1)
			{
				with (obj_shortcut_door)
					door_destination = 73;
			}
			if (global.choice == 2)
			{
				with (obj_shortcut_door)
					door_destination = 82;
			}
			if (global.choice == 3)
			{
				with (obj_shortcut_door)
					door_destination = 97;
			}
			with (obj_shortcut_door)
			{
				if (door_destination == door_location)
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3124_0");
				}
				else
				{
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3128_0");
					con = 50;
				}
			}
			break;
		case 465:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3137_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3138_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3141_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3142_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3143_0");
			break;
		case 466:
			if (global.choice == 0)
			{
				scr_itemremove(6);
				scr_itemget(7);
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3151_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3152_0");
				global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3153_0");
				global.writersnd[0] = snd_item;
				global.msg[3] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3155_0");
				global.msg[4] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3156_0");
				global.flag[253] = 1;
			}
			if (global.choice == 1)
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3161_0");
			break;
		case 470:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3166_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3167_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			if (scr_itemcheck(7))
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3173_0");
			}
			else
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3177_0");
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3178_0");
			}
			break;
		case 471:
			if (global.choice == 0)
			{
				scr_itemget(7);
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3186_0");
				global.writersnd[0] = snd_item;
				global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3188_0");
				if (noroom == 1)
					global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3191_0");
			}
			if (global.choice == 1)
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3196_0");
			break;
		case 600:
			global.choicemsg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3201_0");
			global.choicemsg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3202_0");
			global.choicemsg[2] = " ";
			global.choicemsg[3] = " ";
			global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3205_0");
			global.msg[1] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3206_0");
			global.msg[2] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3207_0");
			break;
		case 601:
			global.flag[910] = 2;
			if (global.choice == 0)
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3214_0");
				snd_play(snd_egg);
				scr_keyitemget(2);
			}
			else
			{
				global.msg[0] = scr_84_get_lang_string("scr_text_slash_scr_text_gml_3220_0");
			}
			break;
		default:
			break;
	}
}
