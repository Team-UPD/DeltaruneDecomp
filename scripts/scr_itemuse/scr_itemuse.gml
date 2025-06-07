function scr_itemuse(arg0)
{
	w = arg0;
	usable = 0;
	if (global.charselect < 3)
		_gc = global.char[global.charselect];
	suspos = -1;
	ralpos = -1;
	for (i = 0; i < 3; i += 1)
	{
		if (global.char[i] == 2)
			suspos = i;
		if (global.char[i] == 3)
			ralpos = i;
	}
	switch (arg0)
	{
		case 0:
			itemnameb = " ";
			itemdescb = "---";
			break;
		case 1:
			scr_healitem(global.charselect, 40);
			usable = 1;
			if (_gc == 2)
				scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_28_0"));
			if (_gc == 3)
			{
				if (suspos >= 0)
					scr_itemcomment(suspos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_33_0"));
				scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_35_0"));
			}
			break;
		case 2:
			reviveamt = ceil(global.maxhp[global.char[global.charselect]] / 2);
			scr_healitem(global.charselect, reviveamt);
			usable = 1;
			if (_gc == 2)
			{
				scr_itemcomment(suspos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_47_0"));
				if (scr_havechar(3))
					scr_itemcomment(ralpos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_48_0"));
			}
			if (_gc == 3)
			{
				if (suspos >= 0)
					scr_itemcomment(suspos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_53_0"));
				scr_itemcomment(ralpos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_54_0"));
			}
			break;
		case 4:
			global.interact = 6;
			with (obj_darkcontroller)
				charcon = 0;
			global.menuno = -1;
			charcon = 0;
			global.fc = 0;
			global.fe = 0;
			global.typer = 6;
			global.msg[0] = scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_71_0");
			instance_create(0, 0, obj_dialoguer);
			break;
		case 5:
			scr_healitem(global.charselect, 20);
			usable = 1;
			break;
		case 6:
			scr_healitem_all(160);
			if (suspos >= 0)
				scr_itemcomment(suspos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_83_0"));
			if (ralpos >= 0)
				scr_itemcomment(ralpos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_84_0"));
			usable = 1;
			break;
		case 7:
			scr_healitem_all(80);
			if (suspos >= 0)
				scr_itemcomment(suspos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_90_0"));
			if (ralpos >= 0)
				scr_itemcomment(ralpos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_91_0"));
			usable = 1;
			break;
		case 8:
			scr_healitem(global.charselect, 70);
			usable = 1;
			if (global.char[global.charselect] == 2)
				scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_101_0"));
			if (global.char[global.charselect] == 3)
				scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_105_0"));
			break;
		case 9:
			scr_healitem(global.charselect, 4);
			usable = 1;
			if (global.char[global.charselect] == 2)
				scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_115_0"));
			if (global.char[global.charselect] == 3)
				scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_119_0"));
			break;
		case 10:
			scr_healitem(global.charselect, 4);
			usable = 1;
			if (global.char[global.charselect] == 2)
				scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_129_0"));
			if (global.char[global.charselect] == 3)
				scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_133_0"));
			break;
		case 11:
			scr_healitem_all(30);
			if (suspos >= 0)
				scr_itemcomment(suspos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_139_0"));
			if (ralpos >= 0)
				scr_itemcomment(ralpos, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_140_0"));
			usable = 1;
			break;
		case 12:
			usable = 1;
			if (global.char[global.charselect] == 1)
				scr_healitem(global.charselect, 20);
			if (global.char[global.charselect] == 2)
			{
				scr_healitem(global.charselect, 80);
				scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_154_0"));
			}
			if (global.char[global.charselect] == 3)
			{
				scr_healitem(global.charselect, 50);
				scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_159_0"));
			}
			break;
		case 13:
			usable = 1;
			if (global.char[global.charselect] == 1)
				scr_healitem(global.charselect, 80);
			if (global.char[global.charselect] == 2)
			{
				scr_healitem(global.charselect, 20);
				scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_173_0"));
			}
			if (global.char[global.charselect] == 3)
			{
				scr_healitem(global.charselect, 50);
				scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_178_0"));
			}
			break;
		case 14:
			usable = 1;
			scr_healitem(global.charselect, 500);
			if (global.char[global.charselect] == 2)
				scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_188_0"));
			if (global.char[global.charselect] == 3)
				scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_192_0"));
			break;
		case 15:
			scr_healitem(global.charselect, 50);
			usable = 1;
			if (global.char[global.charselect] == 2)
				scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_202_0"));
			if (global.char[global.charselect] == 3)
				scr_itemcomment(global.charselect, scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_206_0"));
			break;
		case 300:
			break;
		case 301:
			with (obj_darkcontroller)
				charcon = 0;
			global.menuno = -1;
			charcon = 0;
			global.fc = 0;
			global.fe = 0;
			global.typer = 6;
			snd_play(snd_phone);
			global.msg[0] = scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_222_0");
			instance_create(0, 0, obj_dialoguer);
			instance_create(0, 0, obj_darkphone_event);
			global.interact = 1;
			break;
		case 302:
			global.interact = 6;
			with (obj_darkcontroller)
				charcon = 0;
			global.menuno = -1;
			charcon = 0;
			snd_play(snd_egg);
			global.fc = 0;
			global.fe = 0;
			global.typer = 6;
			global.msg[0] = scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_237_0");
			instance_create(0, 0, obj_dialoguer);
			break;
		case 313:
			global.interact = 6;
			with (obj_darkcontroller)
				charcon = 0;
			global.menuno = -1;
			charcon = 0;
			global.fc = 0;
			global.fe = 0;
			global.typer = 6;
			if (global.flag[280] == 0)
			{
				global.flag[280] = 1;
				global.msg[0] = scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_238_0");
				global.msg[1] = scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_239_0");
				global.msg[2] = scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_240_0");
				global.msg[3] = scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_241_0");
			}
			else if (global.flag[280] == 1)
			{
				global.flag[280] = 2;
				global.msg[0] = scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_242_0");
				global.msg[1] = scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_243_0");
			}
			else
			{
				global.msg[0] = scr_84_get_lang_string("scr_itemuse_slash_scr_itemuse_gml_244_0");
			}
			instance_create(0, 0, obj_dialoguer);
			break;
	}
}
