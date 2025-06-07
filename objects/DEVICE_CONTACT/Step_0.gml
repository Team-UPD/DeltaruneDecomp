if (EVENT == 0)
{
	global.typer = 666;
	global.fc = 0;
	global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_5_0");
	global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_6_0");
	global.msg[2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_7_0");
	global.msg[3] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_8_0");
	EVENT = 1;
	if (global.lang == "ja")
		W = instance_create(100, 80, obj_writer);
	else
		W = instance_create(110, 80, obj_writer);
}
if (EVENT == 1 && !instance_exists(obj_writer))
{
	snd_play(AUDIO_APPEARANCE);
	SOUL = instance_create(150, 120, DEVICE_APPEARANCE);
	SOUL.momentum = 0.5;
	EVENT = 2;
	alarm[4] = 20;
}
if (EVENT == 3)
{
	HEARTMADE = 1;
	HSINER = 0;
	EVENT = 4;
	alarm[4] = 90;
	if (button2_h())
		alarm[4] = 30;
}
if (EVENT == 5)
{
	global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_33_0");
	global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_34_0");
	global.msg[2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_35_0");
	global.msg[3] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_36_0");
	W = instance_create(110, 50, obj_writer);
	EVENT = 5.1;
}
if (EVENT == 5.1 && instance_exists(obj_writer) && FADED == 0)
{
	if (global.flag[20] == 2)
	{
		mus_volume(global.currentsong[0], 0, 2);
		FADED = 1;
	}
}
if (EVENT == 7)
{
	global.currentsong[0] = snd_init("AUDIO_ANOTHERHIM.ogg");
	snd_pitch(global.currentsong[0], 0.02);
	PITCH = 0.02;
	mus_loop(global.currentsong[0]);
	EVENT = 8;
}
if (EVENT == 6.2 && !instance_exists(obj_writer))
{
	snd_free_all();
	OBMADE = 1;
	EVENT = 7;
}
if (EVENT == 5.1 && !instance_exists(obj_writer))
{
	snd_free_all();
	snd_play(AUDIO_APPEARANCE);
	HEARTMADE = 0;
	SOUL.t -= 2;
	SOUL.momentum = -0.5;
	EVENT = 5.2;
	alarm[4] = 60;
}
if (EVENT == 8)
{
	if (PITCH < 0.96)
	{
		PITCH += 0.02;
	}
	else
	{
		EVENT = 9;
		alarm[4] = 30;
	}
	snd_pitch(global.currentsong[0], PITCH);
}
if (EVENT == 10)
{
	global.typer = 667;
	global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_107_0");
	global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_111_0");
	W = instance_create(80, 50, obj_writer);
	EVENT = 16;
}
if (EVENT == 15)
{
	with (obj_writer)
		instance_destroy();
}
if (EVENT == 16 && !instance_exists(obj_writer))
{
	global.typer = 667;
	global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_125_0");
	global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_126_0");
	W = instance_create(75, 40, obj_writer);
	EVENT = 17;
	alarm[4] = 30;
}
if (EVENT == 18)
{
	EVENT = 19;
	GM = instance_create(140, 120, DEVICE_GONERMAKER);
}
if (EVENT == 19)
{
	if (!instance_exists(GM))
		EVENT = 19.1;
	alarm[4] = 24;
}
if (EVENT == 20.1)
{
	with (obj_writer)
		instance_destroy();
	global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_148_0");
	global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_149_0");
	global.msg[2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_150_0");
	W = instance_create(75, 40, obj_writer);
	EVENT = 21;
	alarm[4] = 30;
}
if (EVENT == 22)
{
	GM = instance_create(140, 120, DEVICE_GONERMAKER);
	GM.s = 1;
	GM.STEP = 2;
	EVENT = 23;
}
if (EVENT == 23)
{
	if (!instance_exists(GM))
		EVENT = 23.1;
	alarm[4] = 24;
}
if (EVENT == 24.1)
{
	with (obj_writer)
		instance_destroy();
	global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_173_0");
	global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_174_0");
	W = instance_create(75, 40, obj_writer);
	EVENT = 25;
	alarm[4] = 30;
}
if (EVENT == 26)
{
	GM = instance_create(140, 120, DEVICE_GONERMAKER);
	GM.s = 2;
	GM.STEP = 3;
	EVENT = 27;
}
if (EVENT == 27)
{
	if (!instance_exists(GM))
		EVENT = 28;
	alarm[4] = 24;
}
if (EVENT == 29)
{
	global.typer = 667;
	with (obj_writer)
		instance_destroy();
	GM = instance_create(140, 90, DEVICE_GONERMAKER);
	GM.CANCEL = 1;
	GM.FINISH = -1;
	GM.s = -1;
	GM.STEP = 3;
	global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_205_0");
	global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_206_0");
	global.msg[2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_207_0");
	W = instance_create(60, 40, obj_writer);
	EVENT = 30;
	alarm[4] = 110;
}
if (EVENT == 31)
{
	choice = instance_create(100, 120, DEVICE_CHOICE);
	EVENT = 32;
}
if (EVENT == 32)
{
	if (global.choice == 0 || global.choice == 1)
	{
		EVENT = 33;
		if (global.choice == 1)
		{
			with (GM)
				FINISH = 1;
			EVENT = 15;
			alarm[4] = 20;
		}
	}
}
if (EVENT == 33)
{
	EVENT = 34;
	alarm[4] = 26;
}
if (EVENT == 35)
{
	with (obj_writer)
		instance_destroy();
	global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_240_0");
	global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_241_0");
	global.msg[2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_242_0");
	global.msg[3] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_243_0");
	W = instance_create(60, 40, obj_writer);
	EVENT = 36;
}
if (EVENT == 36 && !instance_exists(obj_writer))
{
	GMSINE = 0;
	EVENT = 37;
	alarm[4] = 30;
	global.typer = 667;
	global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_258_0");
	global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_259_0");
	W = instance_create(80, 40, obj_writer);
}
if (EVENT == 37)
{
	GMSINE += 1;
	GM.initx += sin(GMSINE / 14) * 1;
}
if (EVENT == 38)
{
	CHOICE = instance_create(0, 0, DEVICE_CHOICE);
	EVENT = 39;
	with (CHOICE)
	{
		TYPE = 2;
		for (i = 0; i <= 6; i += 1)
		{
			NAME[0][i] = string(1 + i);
			NAMEX[0][i] = 80;
			if (global.lang == "ja")
				NAMEX[0][i] -= 16;
			NAMEY[0][i] = 100 + (i * 16);
			YMAX += 1;
		}
		NAME[0][0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_288_0");
		NAME[0][1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_289_0");
		NAME[0][2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_290_0");
		NAME[0][3] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_291_0");
		NAME[0][4] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_292_0");
		NAME[0][5] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_293_0");
		CURX = 0;
		HEARTX = NAMEX[0][0] - 20;
		HEARTY = NAMEY[0][0];
		XMAX = 0;
		YMAX = 5;
		xoff = -20;
	}
}
if (EVENT == 39)
{
	if (global.choice > -1)
	{
		global.flag[903] = global.choice;
		EVENT = 40;
		alarm[4] = 26;
	}
}
if (EVENT == 41)
{
	with (obj_writer)
		instance_destroy();
	EVENT = 42;
	alarm[4] = 30;
	global.typer = 667;
	global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_323_0");
	global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_324_0");
	W = instance_create(80, 40, obj_writer);
}
if (EVENT == 43)
{
	CHOICE = instance_create(0, 0, DEVICE_CHOICE);
	EVENT = 44;
	with (CHOICE)
	{
		TYPE = 2;
		for (i = 0; i <= 5; i += 1)
		{
			NAME[0][i] = string(1 + i);
			NAMEX[0][i] = 80;
			NAMEY[0][i] = 100 + (i * 16);
			YMAX += 1;
		}
		NAME[0][0] = "A";
		NAME[0][1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_344_0");
		NAME[0][2] = "B";
		NAME[0][3] = "C";
		NAME[0][4] = "D";
		CURX = 0;
		HEARTX = NAMEX[0][0] - 20;
		HEARTY = NAMEY[0][0];
		XMAX = 0;
		YMAX = 4;
		xoff = -20;
	}
}
if (EVENT == 44)
{
	if (global.choice > -1)
	{
		global.flag[904] = global.choice;
		EVENT = 45;
		alarm[4] = 26;
	}
}
if (EVENT == 46)
{
	with (obj_writer)
		instance_destroy();
	EVENT = 47;
	alarm[4] = 30;
	global.typer = 667;
	global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_381_0");
	global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_382_0");
	W = instance_create(80, 40, obj_writer);
}
if (EVENT == 48)
{
	CHOICE = instance_create(0, 0, DEVICE_CHOICE);
	EVENT = 49;
	with (CHOICE)
	{
		TYPE = 2;
		for (i = 0; i <= 3; i += 1)
		{
			NAME[0][i] = string(1 + i);
			NAMEX[0][i] = 80;
			if (global.lang == "ja")
				NAMEX[0][i] -= 16;
			NAMEY[0][i] = 100 + (i * 16);
			YMAX += 1;
		}
		NAME[0][0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_401_0");
		NAME[0][1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_402_0");
		NAME[0][2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_403_0");
		NAME[0][3] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_404_0");
		CURX = 0;
		HEARTX = NAMEX[0][0] - 20;
		HEARTY = NAMEY[0][0];
		XMAX = 0;
		YMAX = 3;
		xoff = -20;
	}
}
if (EVENT == 49)
{
	if (global.choice > -1)
	{
		global.flag[905] = global.choice;
		EVENT = 50.5;
		alarm[4] = 26;
	}
}
if (EVENT == 51.5)
{
	with (obj_writer)
		instance_destroy();
	EVENT = 52.5;
	alarm[4] = 30;
	global.typer = 667;
	global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_438_0");
	global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_439_0");
	JA_XOFF = 0;
	if (global.lang == "ja")
		JA_XOFF = -20;
	W = instance_create(80 + JA_XOFF, 30, obj_writer);
}
if (EVENT == 53.5)
{
	CHOICE = instance_create(0, 0, DEVICE_CHOICE);
	EVENT = 54.5;
	with (CHOICE)
	{
		TYPE = 2;
		for (i = 0; i <= 4; i += 1)
		{
			NAME[0][i] = string(1 + i);
			NAMEX[0][i] = 80;
			NAMEY[0][i] = 100 + (i * 16);
			YMAX += 1;
		}
		NAME[0][0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_459_0");
		NAME[0][1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_460_0");
		NAME[0][2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_461_0");
		NAME[0][3] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_462_0");
		NAME[0][4] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_463_0");
		CURX = 0;
		HEARTX = NAMEX[0][0] - 20;
		HEARTY = NAMEY[0][0];
		XMAX = 0;
		YMAX = 4;
		xoff = -20;
	}
}
if (EVENT == 54.5)
{
	if (global.choice > -1)
	{
		global.flag[909] = 1 - global.choice;
		EVENT = 50;
		alarm[4] = 26;
	}
}
if (EVENT == 51)
{
	with (obj_writer)
		instance_destroy();
	EVENT = 52;
	alarm[4] = 30;
	global.typer = 667;
	global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_497_0");
	global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_498_0");
	W = instance_create(50, 20, obj_writer);
}
if (EVENT == 53)
{
	CHOICE = instance_create(0, 0, DEVICE_CHOICE);
	EVENT = 54;
	with (CHOICE)
	{
		TYPE = 2;
		for (i = 0; i <= 3; i += 1)
		{
			NAME[0][i] = string(1 + i);
			NAMEX[0][i] = 80;
			NAMEY[0][i] = 100 + (i * 16);
			YMAX += 1;
		}
		NAME[0][0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_518_0");
		NAME[0][1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_519_0");
		NAME[0][2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_520_0");
		NAME[0][3] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_521_0");
		CURX = 0;
		HEARTX = NAMEX[0][0] - 20;
		HEARTY = NAMEY[0][0];
		XMAX = 0;
		YMAX = 3;
		xoff = -20;
	}
}
if (EVENT == 54)
{
	if (global.choice > -1)
	{
		global.flag[906] = global.choice;
		EVENT = 54.1;
		alarm[4] = 26;
	}
}
if (EVENT == 55.1)
{
	with (obj_writer)
		instance_destroy();
	EVENT = 56;
	alarm[4] = 30;
	global.typer = 667;
	global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_555_0");
	global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_556_0");
	W = instance_create(65, 30, obj_writer);
}
if (EVENT == 57)
{
	CHOICE = instance_create(0, 0, DEVICE_CHOICE);
	EVENT = 58;
	with (CHOICE)
	{
		TYPE = 2;
		for (i = 0; i <= 1; i += 1)
		{
			NAME[0][i] = string(1 + i);
			NAMEX[0][i] = 80;
			NAMEY[0][i] = 100 + (i * 16);
			YMAX += 1;
		}
		NAME[0][0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_575_0");
		NAME[0][1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_576_0");
		CURX = 0;
		HEARTX = NAMEX[0][0] - 20;
		HEARTY = NAMEY[0][0];
		XMAX = 0;
		YMAX = 1;
		xoff = -20;
	}
}
if (EVENT == 58)
{
	if (global.choice > -1)
	{
		global.flag[907] = global.choice;
		EVENT = 59;
		alarm[4] = 26;
	}
}
if (EVENT == 60)
{
	with (obj_writer)
		instance_destroy();
	EVENT = 61;
	alarm[4] = 30;
	global.typer = 667;
	global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_611_0");
	global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_612_0");
	W = instance_create(60, 20, obj_writer);
}
if (EVENT == 62)
{
	CHOICE = instance_create(0, 0, DEVICE_CHOICE);
	EVENT = 63;
	with (CHOICE)
	{
		TYPE = 2;
		for (i = 0; i <= 1; i += 1)
		{
			NAME[0][i] = string(1 + i);
			NAMEX[0][i] = 80;
			NAMEY[0][i] = 100 + (i * 16);
			YMAX += 1;
		}
		NAME[0][0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_631_0");
		NAME[0][1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_632_0");
		CURX = 0;
		HEARTX = NAMEX[0][0] - 20;
		HEARTY = NAMEY[0][0];
		XMAX = 0;
		YMAX = 1;
		xoff = -20;
	}
}
if (EVENT == 63)
{
	if (global.choice > -1)
	{
		global.flag[908] = global.choice;
		EVENT = 64;
		alarm[4] = 26;
	}
}
if (EVENT == 65)
{
	with (obj_writer)
		instance_destroy();
	global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_664_0");
	W = instance_create(90, 50, obj_writer);
	EVENT = 65.5;
	alarm[4] = 32;
	if (instance_exists(DEVICE_GONERMAKER))
	{
		gmx = GM.initx;
		gmy = GM.inity;
	}
}
if (EVENT == 65.5)
{
	if (instance_exists(DEVICE_GONERMAKER))
	{
		if (GM.initx > (gmx - 24))
			GM.initx -= 1;
		if (GM.inity < (gmy + 56))
			GM.inity += 2;
	}
}
if (EVENT == 66.5 && instance_exists(obj_writer) == false)
{
	JA_XOFF = 0;
	if (global.lang == "ja")
		JA_XOFF = 30;
	with (obj_writer)
		instance_destroy();
	global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_697_0");
	global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_698_0");
	W = instance_create(68 + JA_XOFF, 20, obj_writer);
	CHOICE = instance_create(0, 0, DEVICE_CHOICE);
	EVENT = 67;
	with (CHOICE)
		event_user(0);
	with (CHOICE)
	{
		STRINGMAX = 9;
		if (global.lang == "ja")
			STRINGMAX = 7;
	}
}
if (EVENT == 67)
{
	if (instance_exists(CHOICE))
	{
		global.name = CHOICE.NAMESTRING;
		FN_2 = global.name;
		if (FN_2 == "GASTER" || FN_2 == "がすたー" || FN_2 == "ガスター")
		{
			snd_free_all();
			game_restart();
		}
	}
	else
	{
		EVENT = 68;
		alarm[4] = 26;
	}
}
if (EVENT == 69)
{
	with (obj_writer)
		instance_destroy();
	FOUND = 0;
	FN = global.name;
	event_user(0);
	global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_729_0"), global.name);
	global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_730_0");
	if (FOUND == 1 || FOUND == 2)
	{
		global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_734_0"), global.name);
		global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_735_0");
		global.msg[2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_736_0");
	}
	W = instance_create(80, 50, obj_writer);
	EVENT = 70;
}
if (EVENT == 70 && instance_exists(obj_writer) == false)
{
	JA_XOFF = 0;
	if (global.lang == "ja")
		JA_XOFF = -32;
	with (obj_writer)
		instance_destroy();
	global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_755_0");
	global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_756_0");
	W = instance_create(88 + JA_XOFF, 20, obj_writer);
	CHOICE = instance_create(0, 0, DEVICE_CHOICE);
	EVENT = 71;
	with (CHOICE)
		event_user(0);
	with (CHOICE)
	{
		if (global.lang == "ja")
			STRINGMAX = 7;
	}
}
if (EVENT == 71)
{
	if (instance_exists(CHOICE))
	{
		global.truename = CHOICE.NAMESTRING;
		FN_3 = global.truename;
		if (FN_3 == "GASTER" || FN_3 == "がすたー" || FN_3 == "ガスター")
		{
			snd_free_all();
			game_restart();
		}
	}
	else
	{
		EVENT = 72;
		alarm[4] = 26;
	}
}
if (EVENT == 73)
{
	with (obj_writer)
		instance_destroy();
	FOUND = 0;
	FN = global.truename;
	event_user(0);
	global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_785_0"), global.truename);
	global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_786_0");
	global.msg[2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_787_0");
	if (FOUND == 1)
		global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_790_0");
	if (FOUND == 2)
	{
		global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_794_0");
		global.msg[2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_795_0");
	}
	if (global.name == global.truename)
	{
		global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_800_0");
		global.msg[2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_801_0");
	}
	W = instance_create(80, 50, obj_writer);
	EVENT = 74;
}
if (EVENT == 74 && !instance_exists(obj_writer))
{
	global.othername[0] = global.name;
	global.typer = 667;
	global.msg[0] = scr_84_get_subst_string(scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_816_0"), global.truename);
	global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_817_0");
	global.msg[2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_818_0");
	global.msg[3] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_819_0");
	W = instance_create(80, 50, obj_writer);
	EVENT = 75;
}
if (EVENT == 75 && !instance_exists(obj_writer))
{
	snd_free_all();
	snd_play(snd_text);
	with (DEVICE_GONERMAKER)
		instance_destroy();
	with (DEVICE_OBACK_4)
		instance_destroy();
	OBMADE = 0;
	EVENT = 76;
	scr_windowcaption(" ");
	alarm[4] = 30;
}
if (EVENT == 77)
{
	global.typer = 2;
	global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_839_0");
	global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_840_0");
	JA_XOFF = 0;
	if (global.lang == "ja")
		JA_XOFF = -10;
	W = instance_create(100 + JA_XOFF, 50, obj_writer);
	EVENT = 78;
}
if (EVENT == 78 && !instance_exists(obj_writer))
{
	global.typer = 2;
	if (global.lang == "ja")
		global.typer = 60;
	global.currentsong[0] = snd_init("w.ogg");
	loop1 = mus_loop(global.currentsong[0]);
	loop2 = mus_loop(global.currentsong[0]);
	snd_pitch(loop1, 0);
	snd_pitch(loop2, 0);
	p = 0;
	global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_854_0");
	JA_XOFF = 0;
	if (global.lang == "ja")
		JA_XOFF = -15;
	W = instance_create(145 + JA_XOFF, 50, obj_writer);
	EVENT = 98;
	WHITEFADE = 1;
	FADEUP = 0.008;
	FADEFACTOR = -0.1;
	depth = -20;
}
if (EVENT == 99)
{
	global.flag[6] = 0;
	room_goto(room_krisroom);
}
if (EVENT == 98)
{
	p += 0.008;
	snd_pitch(loop1, p);
	snd_pitch(loop2, p * 1.2);
	if (p >= 1.5)
	{
		EVENT = 99;
		snd_free_all();
	}
}
if (EVENT == 100 && !instance_exists(obj_writer))
{
	global.currentsong[0] = snd_init("w.ogg");
	mus_loop(global.currentsong[0]);
	EVENT = 101;
	global.typer = 999;
	global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_889_0");
	global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_890_0");
	global.msg[2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_891_0");
	alarm[4] = 350;
	instance_create(125, 90, obj_writer);
}
if (EVENT == 102)
	room_goto(room_krisroom);
if (EVENT == 900)
{
	global.typer = 667;
	global.msg[0] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_928_0");
	global.msg[1] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_929_0");
	global.msg[2] = scr_84_get_lang_string("DEVICE_CONTACT_slash_Step_0_gml_930_0");
	W = instance_create(80, 50, obj_writer);
	EVENT = 919;
	alarm[4] = 100;
}
if (EVENT == 920)
{
	choice = instance_create(100, 100, DEVICE_CHOICE);
	EVENT = 930;
}
if (EVENT == 930)
{
	if (global.choice == 1 || global.choice == 0)
		EVENT = 940;
	alarm[4] = 60;
}
if (HEARTMADE == 1)
{
	HSINER += 1;
	SOUL.y = SOUL.ystart + (sin(HSINER / 16) * 2);
}
if (global.flag[20] == 0)
{
	with (obj_writer)
		specfade = 1;
}
if (global.flag[20] == 1)
{
	with (obj_writer)
		specfade -= 0.025;
	if (EVENT >= 16)
	{
		with (obj_writer)
			specfade -= 0.01;
	}
}
if (OBMADE == 1)
{
	OB_DEPTH += 1;
	obacktimer += OBM;
	if (obacktimer >= 20)
	{
		DV = instance_create(0, 0, DEVICE_OBACK_4);
		DV.depth = 5 + OB_DEPTH;
		DV.OBSPEED = 0.01 * OBM;
		if (OB_DEPTH >= 60000)
			OB_DEPTH = 0;
		obacktimer = 0;
	}
}
SKIPBUFFER -= 1;
if (ALREADY == 1)
{
	if (button2_h() == 1 && SKIPBUFFER < 0 && EVENT <= 75)
	{
		with (obj_writer)
		{
			if (pos < (length - 3))
				pos += 2;
			if (alarm[0] >= 10)
				alarm[0] = 10;
			if (specfade <= 0.9)
				specfade -= 0.1;
			if (rate <= 1)
				rate = 1;
		}
		if (EVENT >= 15)
		{
			if (alarm[4] >= 6)
				alarm[4] = 6;
		}
		SKIPBUFFER = 1;
	}
}
