function scr_litemuseb(arg0, arg1)
{
	switch (arg1)
	{
		case 0:
			global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_6_0");
			break;
		case 1:
			global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_9_0");
			snd_play(snd_swallow);
			scr_writetext(0, "x", 0, 0);
			script_execute(scr_litemshift, arg0, 0);
			with (obj_event_manager)
				trigger_event((0 << 0), (9 << 0));
			break;
		case 2:
			global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_18_0");
			scr_lweaponeq(arg0, arg1);
			snd_play(snd_item);
			scr_writetext(0, "x", 0, 0);
			break;
		case 3:
			global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_26_0");
			script_execute(scr_lrecoitem, 1);
			script_execute(scr_litemshift, arg0, 0);
			break;
		case 4:
			global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_34_0");
			scr_writetext(0, "x", 0, 0);
			break;
		case 5:
			global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_42_0");
			scr_writetext(0, "x", 0, 0);
			break;
		case 6:
			global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_48_0");
			scr_lweaponeq(arg0, arg1);
			snd_play(snd_item);
			scr_writetext(0, "x", 0, 0);
			break;
		case 7:
			global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_56_0");
			scr_lweaponeq(arg0, arg1);
			snd_play(snd_item);
			scr_writetext(0, "x", 0, 0);
			break;
		case 8:
			global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_63_0");
			snd_play(snd_egg);
			scr_writetext(0, "x", 0, 0);
			break;
		case 11:
			if (global.flag[281] == 0)
			{
				global.flag[281] = 1;
				global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_95_0");
				global.msg[1] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_96_0");
				global.msg[2] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_97_0");
			}
			else if (global.flag[281] == 1)
			{
				global.flag[281] = 2;
				global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_98_0");
				global.msg[1] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_99_0");
			}
			else
			{
				global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_100_0");
			}
			scr_writetext(0, "x", 0, 0);
			break;
		case 201:
			tempsaid = 0;
			snd_play(snd_phone);
			global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_72_0");
			global.msg[1] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_73_0");
			if (room == room_krisroom || room == room_krishallway || room == room_torbathroom)
			{
				tempsaid = 1;
				global.flag[268] = 1;
				scr_torface(1, 0);
				global.msg[2] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_82_0");
				global.msg[3] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_83_0");
				global.msg[4] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_84_0");
				scr_noface(5);
				global.msg[6] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_86_0");
			}
			if (room == room_torhouse)
			{
				tempsaid = 1;
				global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_92_0");
				global.msg[1] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_93_0");
				global.msg[2] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_94_0");
			}
			if (tempsaid == 0 && global.plot >= 250)
			{
				if (global.flag[272] == 0)
				{
					global.msc = 365;
					scr_text(global.msc);
				}
				if (global.flag[272] == 1)
				{
					global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_109_0");
					scr_torface(1, 1);
					global.msg[2] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_111_0");
					global.msg[3] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_112_0");
					global.msg[4] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_113_0");
					global.msg[5] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_114_0");
					scr_noface(6);
					global.msg[7] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_116_0");
				}
				if (global.flag[272] >= 2)
				{
					global.msg[0] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_121_0");
					scr_torface(1, 1);
					global.msg[2] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_123_0");
					global.msg[3] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_124_0");
					global.msg[4] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_125_0");
					scr_noface(5);
					global.msg[6] = scr_84_get_lang_string("scr_litemuseb_slash_scr_litemuseb_gml_127_0");
				}
				global.flag[272] += 1;
			}
			scr_writetext(0, "x", 0, 0);
			break;
		case 202:
			global.msc = 375;
			scr_text(global.msc);
			global.typer = 5;
			global.fc = 0;
			instance_create(0, 0, obj_dialoguer);
			break;
	}
}
