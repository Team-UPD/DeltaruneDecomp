if (scr_debug())
{
}
draw_sprite_ext(spr_shop_spamton_bg, 0, 0, 0, 2, 2, 0, c_white, 1);
if (greybg == 1)
{
}
else
{
	glitchtimer++;
	glitchtimer2++;
	if (glitchtimer == 1)
	{
		for (i = 0; i < 4; i++)
		{
			randoml[i] = (sin((siner / 10) + i) * 5) + 10;
			randomw[i] = (sin((siner / 11) + i) * 5) + 10;
			randomx[i] = (sin((siner / 12) + i) * 10) + 15;
		}
	}
	if (glitchtimer == 3)
		glitchtimer = 0;
	if (glitchtimer2 == 1)
	{
		for (i = 0; i < 4; i++)
		{
			randoml2[i] = random(300);
			randomt2[i] = random(200);
		}
	}
	if (glitchtimer2 == 12)
		glitchtimer2 = 0;
	draw_set_color(c_black);
	draw_rectangle(520, 0, 540, 240, false);
	for (j = 0; j < 3; j++)
	{
		draw_sprite_part_ext(spr_shop_spamton_bg, 0, randoml2[j], randomt2[j], 8, 16, j * 16, 0, 2, 2, c_white, 1);
		for (i = 0; i < 4; i++)
			draw_sprite_part_ext(spr_shop_spamton_bg, 0, 240 + randoml[i], 40 * j, 2 + randomw[i], 40, 480 + randomx[i] + (sin((siner / 10) + j) * 3), j * 80, 2, 2, c_white, 1);
	}
}
draw_sprite_ext(spr_shop_soamton_phone, phoneindex, 556, 114, 2, 2, 0, c_white, 1);
trackpos = audio_sound_get_track_position(global.currentsong[1]);
if (phoneringing == 0)
{
	if ((trackpos >= 25.305 && trackpos <= 25.345000000000002) || (trackpos >= 30.892999999999997 && trackpos <= 30.933) || (trackpos >= 36.426 && trackpos <= 36.466))
		phoneringing = 1;
}
if (phoneringing == 1)
{
	phoneindex += 0.25;
	if (phoneindex > 10)
	{
		phoneindex = 0;
		phoneringing = 0;
	}
}
if (global.fe == 0)
	draw_sprite_ext(spr_shop_spamton0, 0, 200 + spamtonx, 0, 2, 2, 0, c_white, spamtonalpha);
if (global.fe == 1)
	draw_sprite_ext(spr_shop_spamton2, siner / 8, 200 + spamtonx, 0, 2, 2, 0, c_white, spamtonalpha);
if (global.fe == 2)
	draw_sprite_ext(spr_shop_spamton1, 0, 200 + spamtonx + vibratex, vibratey, 2, 2, 0, c_white, spamtonalpha);
if (global.fe == 3)
{
	mouthsiner++;
	draw_sprite_ext(spr_shop_spamton1, 4, 200 + spamtonx, 0, 2, 2, 0, c_white, spamtonalpha);
	draw_sprite_ext(spr_shop_spamton1, 1, 200 + spamtonx, 6 + (sin(mouthsiner / 1.5) * 18), 2, 2, 0, c_white, spamtonalpha);
	draw_sprite_ext(spr_shop_spamton1, 2, 200 + spamtonx, 2 + (sin(mouthsiner / 1.5) * 4), 2, 2, 0, c_white, spamtonalpha);
}
if (global.fe == 4)
{
	mouthsiner++;
	draw_sprite_ext(spr_shop_spamton1, 4, 200 + spamtonx, 0, 2, 2, 0, c_white, spamtonalpha);
	draw_sprite_ext(spr_shop_spamton1, 1, 200 + spamtonx, 6 + (sin(mouthsiner) * 18), 2, 2, 0, c_white, spamtonalpha);
	draw_sprite_ext(spr_shop_spamton1, 2 + abs(sin(mouthsiner / 4) * 2), 200 + spamtonx, 2 + (sin(mouthsiner) * 4), 2, 2, 0, c_white, spamtonalpha);
}
if (global.fe == 5)
{
	mouthsiner++;
	draw_sprite_ext(spr_shop_spamton1, 4, 200 + spamtonx, 0, 2, 2, 0, c_white, spamtonalpha);
	draw_sprite_ext(spr_shop_spamton1, 1, 200 + spamtonx, 6 + (sin(mouthsiner) * 18), 2, 2, 0, c_white, spamtonalpha);
	if (sin(mouthsiner / 2) < 0)
		draw_sprite_ext(spr_shop_spamton1, 2 + abs(sin(mouthsiner / 4) * 2), 200 + spamtonx + 200, 2 + (sin(mouthsiner) * 4), -2, 2, 0, c_white, spamtonalpha);
	else
		draw_sprite_ext(spr_shop_spamton1, 2 + abs(sin(mouthsiner / 4) * 2), 200 + spamtonx, 2 + (sin(mouthsiner) * 4), 2, 2, 0, c_white, spamtonalpha);
}
if (global.fe == 6)
{
	mouthsiner++;
	draw_sprite_ext(spr_shop_spamton1, 4, 200 + spamtonx, 0, 2, 2, 0, c_white, spamtonalpha);
	draw_sprite_ext(spr_shop_spamton1, 1, 200 + spamtonx, 6 + (sin(mouthsiner) * 18), 2, 2, 0, c_white, spamtonalpha);
	if (sin(mouthsiner / 8) < 0.8)
		draw_sprite_ext(spr_shop_spamton1, 2 + abs(sin(mouthsiner / 4) * 2), 200 + spamtonx, 2 + (sin(mouthsiner) * 4), 2.4, 2, 0, c_white, spamtonalpha);
	else
		draw_sprite_ext(spr_shop_spamton4, 1, 200 + spamtonx + vibratex, 2 + (sin(mouthsiner) * 4) + (vibratey * 2), 2.4, 2, 0, c_white, spamtonalpha);
}
if (global.fe == 7)
	draw_sprite_ext(spr_shop_spamton3, 0, 200 + spamtonx + vibratex, vibratey, 2, 2, 0, c_white, spamtonalpha);
if (global.fe == 8)
{
	draw_sprite_part_ext(spr_shop_spamton4, 1, siner % 50, -siner % 30, 58, 60, spamtonx + 260, 12, 2, 2, merge_color(c_white, c_black, abs(cos(siner / 62)) * 0.8), spamtonalpha);
	draw_sprite_ext(spr_shop_spamton4, 0, 200 + spamtonx, 0, 2, 2, 0, c_white, spamtonalpha);
}
if (global.fe == 9)
	draw_sprite_ext(spr_shop_spamton1, 0, 200 + spamtonx, 0, 2, 2, 0, make_color_hsv((siner * 8) % 255, 60 + (sin(siner / 10) * 15), 255), spamtonalpha);
if (global.fe == 0)
{
	if (pause_music)
	{
		pause_music = false;
		snd_resume(global.currentsong[1]);
	}
}
if (global.fe == 8)
{
}
vibrationtimer++;
if (vibrationtimer == 2)
{
	vibrationtimer = 0;
	vibratex = random(6);
	vibratey = random(6);
}
siner++;
numbertimer++;
if (numbertimer == 10)
{
	randomnumber = round(random(99999));
	randomscale = 1 + random(0.5);
	numbertimer = 0;
}
if (greybg == 1)
{
	draw_sprite_part_ext(spr_shop_spamton_bg, 1, 0, 0, 320, greybgtimer, 0, 0, 2, 2, c_white, 1);
	if (greybgtimer < 120)
		greybgtimer += 1;
	if (greybgtimer == 120)
	{
		menu = 4;
		sell = 2;
		with (obj_writer)
			instance_destroy();
		snd_stop(global.currentsong[1]);
		global.currentsong[1] = mus_play(global.currentsong[0]);
		snd_pitch(global.currentsong[1], 0.7);
		greybgtimer = 121;
	}
	if (greybgtimer > 999)
	{
		draw_set_color(c_black);
		draw_rectangle(-100, -100, 999, 999, false);
	}
}
draw_set_color(c_navy);
draw_set_color(c_black);
draw_rectangle(-1, 240, 650, 900, false);
scr_shopmenu(0);
if (menu <= 3 || menu >= 10)
{
	scr_darkbox_black(0, 240, 415, 480);
	scr_darkbox_black(400, 240, 640, 480);
}
if (menu == 4)
	scr_darkbox_black(0, 240, 640, 480);
if (menu == 0)
{
	sell = 0;
	selling = 0;
	sidemessage = 0;
	menuc[1] = 0;
	menuc[2] = 0;
	menuc[3] = 0;
	menuc[4] = 0;
	if (instance_exists(obj_writer) == false)
	{
		scr_speaker("spamton");
		msgsetloc(0, "* HURRY UP AND BUY!", "obj_shop_ch2_spamton_slash_Draw_0_gml_272_0");
		if (mainmessage == 0)
			msgsetloc(0, "* HEY EVERY       !&* IT'S ME^1, SPAMTON G.& &SPAMTON!", "obj_shop_ch2_spamton_slash_Draw_0_gml_274_0");
		instance_create(30, 270, obj_writer);
	}
	menumax = 3;
	draw_set_color(c_white);
	scr_84_set_draw_font("mainbig");
	draw_text(480, 260, stringsetloc("BUY", "obj_shop_ch2_spamton_slash_Draw_0_gml_282_0"));
	draw_text(480, 300, stringsetloc("BUYMORE!!!", "obj_shop_ch2_spamton_slash_Draw_0_gml_283_0"));
	draw_text(480, 340, stringsetloc("TALKING", "obj_shop_ch2_spamton_slash_Draw_0_gml_284_0"));
	draw_text(480, 380, stringsetloc("ESCAPE", "obj_shop_ch2_spamton_slash_Draw_0_gml_285_0"));
	draw_sprite(spr_heart, 0, 450, (135 + (menuc[0] * 20)) * 2);
	if (button1_p())
	{
		onebuffer = 2;
		mainmessage = 1;
		with (obj_writer)
			instance_destroy();
		if (menuc[0] == 0)
			menu = 1;
		if (menuc[0] == 1)
			menu = 1;
		if (menuc[0] == 2)
			menu = 3;
		if (menuc[0] == 3)
		{
			sell = 2;
			menu = 4;
		}
	}
}
if (menu == 1 || menu == 2)
{
	draw_set_color(c_white);
	scr_84_set_draw_font("mainbig");
	if (menu == 1)
		moneytimer++;
	if (moneytimer >= 15)
	{
		buyvalue[0] = floor(random(49030));
		buyvalue[1] = 50 + floor(random(100));
		buyvalue[2] = 50 + floor(random(100));
		buyvalue[3] = 50 + floor(random(100));
		moneytimercount++;
		if (moneytimercount == 10)
		{
			buyvalue[0] = floor(random(60));
			moneytimercount = 0;
		}
		runawayscale = -0.1 + random(0.2);
		moneytimer = 0;
	}
	for (i = 0; i < itemtotal; i += 1)
	{
		draw_set_color(c_white);
		if (soldout[i] < 1)
		{
			draw_text(60, 260 + (i * 40), string_hash_to_newline(shopitemname[i]));
			draw_text_transformed(240, 260 + (i * 40), string_hash_to_newline(stringsetsubloc("~1 KROMER", string(buyvalue[i]), "obj_shop_ch2_spamton_slash_Draw_0_gml_337_0")), 0.5, 1, 0);
		}
		else
		{
			draw_set_color(c_gray);
			draw_text(60, 260 + (i * 40), stringsetloc("--SOLD OUT--", "obj_shop_ch2_spamton_slash_Draw_0_gml_339_0"));
		}
	}
	draw_text_transformed(60, 260 + (itemtotal * 40), stringsetloc("RUN AWAY", "obj_shop_ch2_spamton_slash_Draw_0_gml_342_0"), 2 + runawayscale, 1.4 + runawayscale, 0);
	if (menu == 1)
	{
		menumax = 4;
		if (instance_exists(obj_writer) == false)
		{
			if (sidemessage == 0)
				msgsetloc(0, "\\E0DEALS SO&GOOD I'LL&[$!$$]&MYSELF!", "obj_shop_ch2_spamton_slash_Draw_0_gml_352_0");
			if (sidemessage == 1)
			{
				_rr = floor(random(10));
				msgsetloc(0, "\\E2DELICIOUS&KROMER", "obj_shop_ch2_spamton_slash_Draw_0_gml_356_0");
			}
			if (sidemessage == 2)
				msgsetloc(0, "\\E2WHAT!?&YOU WERE&SO CLOSE!!", "obj_shop_ch2_spamton_slash_Draw_0_gml_359_0");
			if (sidemessage == 3)
				msgsetloc(0, "\\E2MONEY NO", "obj_shop_ch2_spamton_slash_Draw_0_gml_360_0");
			if (sidemessage == 4)
				msgsetloc(0, "\\E2YOU HAVE&TOO MUCH& &MONEY", "obj_shop_ch2_spamton_slash_Draw_0_gml_361_0");
			if (sidemessage == 5)
				msgsetloc(0, "\\E2[Storing up&for the&winter!]", "obj_shop_ch2_spamton_slash_Draw_0_gml_362_0");
			if (murder == 1)
				global.msg[0] = stringsetloc("/*", "obj_shop1_slash_Draw_0_gml_153_0");
			instance_create(450, 260, obj_writer);
		}
		draw_sprite(spr_heart, 0, 30, 270 + (menuc[1] * 40));
		if (button1_p() && onebuffer < 0 && soldout[menuc[1]] != 1)
		{
			menu = 2;
			onebuffer = 2;
			with (obj_writer)
				instance_destroy();
			if (menuc[1] == menumax)
				menu = 0;
		}
		if (button2_p() && twobuffer < 0 && onebuffer < 2)
		{
			menu = 0;
			twobuffer = 2;
			minimenuy = 220;
			with (obj_writer)
				instance_destroy();
		}
		menuc[2] = 0;
	}
	if (menu == 2)
	{
		menumax = 1;
		draw_set_color(c_white);
		scr_84_set_draw_font("mainbig");
		var y1_off = langopt(260, 290);
		var y2_off = langopt(290, 260);
		draw_text(460, y1_off, string_hash_to_newline(stringsetloc("TRANSMIT", "obj_shop_ch2_spamton_slash_Draw_0_gml_379_0")));
		draw_text(460, y2_off, string_hash_to_newline(stringsetsubloc("~1 KROMER ?", string(buyvalue[menuc[1]]), "obj_shop_ch2_spamton_slash_Draw_0_gml_380_0")));
		draw_text(480, 340, string_hash_to_newline(stringsetloc("Yes", "obj_shop1_slash_Draw_0_gml_169_0")));
		draw_text(480, 370, string_hash_to_newline(stringsetloc("No", "obj_shop1_slash_Draw_0_gml_170_0")));
		draw_sprite(spr_heart, 0, 450, 350 + (menuc[2] * 30));
		if (button2_p() && twobuffer < 0)
		{
			menu = 1;
			sidemessage = 2;
			twobuffer = 2;
			onebuffer = 2;
		}
		if (button1_p() && onebuffer < 0 && twobuffer < 0)
		{
			if (menuc[2] == 0)
			{
				afford = 0;
				if (global.gold >= buyvalue[menuc[1]])
					afford = 1;
				if (soldout[menuc[1]] == 1)
					afford = 0;
				if (afford == 1)
				{
					_pocketed = 0;
					if (itemtype[menuc[1]] == "item")
						scr_itemget(item[menuc[1]]);
					if (itemtype[menuc[1]] == "keyitem")
					{
						if (global.flag[309] < 3)
						{
							global.flag[309] = 3;
							scr_keyitemget(item[menuc[1]]);
							soldout[0] = 1;
						}
					}
					if (itemtype[menuc[1]] == "weapon")
						scr_weaponget(item[menuc[1]]);
					if (itemtype[menuc[1]] == "armor")
						scr_armorget(item[menuc[1]]);
					if (noroom == 0)
					{
						global.gold -= buyvalue[menuc[1]];
						snd_play(snd_locker);
						if (_pocketed == 1)
							sidemessage = 5;
						else
							sidemessage = 1;
					}
					if (noroom == 1)
						sidemessage = 4;
				}
				else
				{
					sidemessage = 3;
				}
			}
			if (menuc[2] == 1)
				sidemessage = 2;
			menu = 1;
		}
	}
	if (menuc[1] != 4)
	{
		if (minimenuy <= 20)
			minimenuy = 20;
		if (minimenuy > 20)
			minimenuy -= 5;
		if (minimenuy > 50)
			minimenuy -= 5;
		if (minimenuy > 100)
			minimenuy -= 8;
		if (minimenuy > 150)
			minimenuy -= 10;
	}
	else if (minimenuy < 200)
	{
		minimenuy += 40;
	}
	if (minimenuy >= 200)
		minimenuy = 200;
}
if (menu == 3)
{
	menumax = 4;
	draw_set_color(c_white);
	scr_84_set_draw_font("mainbig");
	if (!scr_keyitemcheck(10))
	{
		draw_text(80, 260, stringsetloc("OUR DEAL", "obj_shop_ch2_spamton_slash_Draw_0_gml_445_0"));
	}
	else
	{
		draw_set_color(c_yellow);
		draw_text(80, 260, stringsetloc("GIVE DISK", "obj_shop_ch2_spamton_slash_Draw_0_gml_449_0"));
	}
	draw_set_color(c_white);
	draw_text(80, 300, stringsetloc("ABOUT YOU", "obj_shop_ch2_spamton_slash_Draw_0_gml_452_0"));
	if (global.flag[329] == 0)
	{
		draw_text(80, 340, stringsetloc("KNIGHT", "obj_shop_ch2_spamton_slash_Draw_0_gml_455_0"));
	}
	else
	{
		draw_set_color(c_yellow);
		draw_text(80, 340, stringsetloc("FRIENDS", "obj_shop_ch2_spamton_slash_Draw_0_gml_459_0"));
	}
	draw_set_color(c_white);
	draw_text(80, 380, stringsetloc("FEAR", "obj_shop_ch2_spamton_slash_Draw_0_gml_462_0"));
	draw_text(80, 420, stringsetloc("EXIT AND BUY MORE!!!", "obj_shop_ch2_spamton_slash_Draw_0_gml_464_0"));
	if (instance_exists(obj_writer) == false)
	{
		global.msg[0] = stringsetloc("\\E0LET'S MAKE&A DEAL.", "obj_shop_ch2_spamton_slash_Draw_0_gml_469_0");
		instance_create(440, 260, obj_writer);
	}
	draw_sprite(spr_heart, 0, 50, 270 + (menuc[3] * 40));
	if (button1_p() && onebuffer < 0)
	{
		onebuffer = 2;
		with (obj_writer)
			instance_destroy();
		if (menuc[3] < menumax)
		{
			sell = menuc[3] + 3;
			menu = 4;
		}
		else
		{
			menu = 0;
		}
	}
	else if (button2_p() && twobuffer < 0 && onebuffer < 0)
	{
		twobuffer = 2;
		menu = 0;
		with (obj_writer)
			instance_destroy();
	}
}
if (menu == 10)
{
	menuc[11] = 0;
	menuc[12] = 0;
	menuc[13] = 0;
	menumax = 4;
	draw_set_color(c_white);
	scr_84_set_draw_font("mainbig");
	draw_text(80, 260, string_hash_to_newline(stringsetloc("Sell Items", "obj_shop1_slash_Draw_0_gml_278_0")));
	draw_text(80, 300, string_hash_to_newline(stringsetloc("Sell Weapons", "obj_shop1_slash_Draw_0_gml_279_0")));
	draw_text(80, 340, string_hash_to_newline(stringsetloc("Sell Armor", "obj_shop1_slash_Draw_0_gml_280_0")));
	draw_text(80, 380, string_hash_to_newline(stringsetloc("Sell Pocket Items", "obj_shop_ch2_spamton_slash_Draw_0_gml_506_0")));
	draw_text(80, 420, string_hash_to_newline(stringsetloc("Return", "obj_shop_ch2_spamton_slash_Draw_0_gml_507_0")));
	if (instance_exists(obj_writer) == false)
	{
		if (sidemessage == 0)
			msgsetloc(0, " ", "obj_shop_ch2_spamton_slash_Draw_0_gml_511_0");
		if (sidemessage == 1)
			msgsetloc(0, " ", "obj_shop_ch2_spamton_slash_Draw_0_gml_512_0");
		if (sidemessage == 2)
			msgsetloc(0, " ", "obj_shop_ch2_spamton_slash_Draw_0_gml_513_0");
		instance_create(460, 260, obj_writer);
	}
	draw_sprite(spr_heart, 0, 50, 270 + (menuc[10] * 40));
	if (button1_p() && onebuffer < 0)
	{
		pagemax = 0;
		sidemessage2 = 0;
		onebuffer = 2;
		with (obj_writer)
			instance_destroy();
		can = 1;
		idealmenu = menuc[10] + 11;
		if (idealmenu == 11)
		{
			scr_itemcheck(0);
			if (itemcount == 12)
			{
				sidemessage = 2;
				can = 0;
			}
			nothingcount = itemcount;
			scr_iteminfo_all();
			selltype = "item";
			selltotal = 12;
			for (i = 0; i < selltotal; i++)
			{
				itemsellvalue[i] = global.itemvalue[i];
				itemsellname[i] = global.itemnameb[i];
			}
		}
		if (idealmenu == 12)
		{
			scr_weaponcheck_inventory(0);
			if (itemcount == 12)
			{
				sidemessage = 2;
				can = 0;
			}
			scr_weaponinfo_all();
		}
		if (idealmenu == 13)
		{
			scr_armorcheck_inventory(0);
			if (itemcount == 12)
			{
				sidemessage = 2;
				can = 0;
			}
			scr_armorinfo_all();
		}
		if (idealmenu == 14)
		{
			scr_itemcheck_pocket(0);
			if (itemcount == global.flag[64])
			{
				sidemessage = 2;
				can = 0;
			}
			selltype = "pocket";
			nothingcount = 0;
			selltotal = global.flag[64];
			for (i = 0; i < global.flag[64]; i++)
			{
				scr_iteminfo(global.pocketitem[i]);
				itemsellvalue[i] = value;
				itemsellname[i] = itemnameb;
			}
			idealmenu = 11;
		}
		if (menuc[10] < menumax)
		{
			if (can == 1)
				menu = idealmenu;
			sidemessage1 = 0;
		}
		else
		{
			menu = 0;
		}
		submenu = 0;
		submenuc[1] = 0;
	}
	if (button2_p() && twobuffer < 0 && onebuffer < 0)
	{
		twobuffer = 2;
		menu = 0;
		with (obj_writer)
			instance_destroy();
	}
}
if (menu == 11 || menu == 12 || menu == 13)
{
	if (instance_exists(obj_writer) == false)
	{
		if (sidemessage2 == 0 && menu == 11)
			msgsetloc(0, " ", "obj_shop_ch2_spamton_slash_Draw_0_gml_598_0");
		if (sidemessage2 == 0 && menu == 12)
			msgsetloc(0, " ", "obj_shop_ch2_spamton_slash_Draw_0_gml_599_0");
		if (sidemessage2 == 0 && menu == 13)
			msgsetloc(0, " ", "obj_shop_ch2_spamton_slash_Draw_0_gml_600_0");
		if (sidemessage2 == 1)
			msgsetloc(0, " ", "obj_shop_ch2_spamton_slash_Draw_0_gml_601_0");
		if (sidemessage2 == 2)
			msgsetloc(0, " ", "obj_shop_ch2_spamton_slash_Draw_0_gml_602_0");
		if (sidemessage2 == 3)
			msgsetloc(0, " ", "obj_shop_ch2_spamton_slash_Draw_0_gml_603_0");
		if (sidemessage2 == 4)
			msgsetloc(0, " ", "obj_shop_ch2_spamton_slash_Draw_0_gml_604_0");
		instance_create(450, 260, obj_writer);
	}
}
scr_shopmenu(4);
if (menu == 15 || menu == 16 || menu == 17)
{
	menumax = 1;
	draw_set_color(c_white);
	scr_84_set_draw_font("mainbig");
	var y1_off = langopt(260, 290);
	var y2_off = langopt(290, 260);
	draw_text(460, y1_off, string_hash_to_newline(stringsetloc("Sell it for", "obj_shop1_slash_Draw_0_gml_365_0")));
	draw_text(460, y2_off, string_hash_to_newline(stringsetsubloc("$~1 ?", string(sellvalue), "obj_shop_ch2_spamton_slash_Draw_0_gml_619_0")));
	draw_text(480, 340, string_hash_to_newline(stringsetloc("Yes", "obj_shop1_slash_Draw_0_gml_367_0")));
	draw_text(480, 370, string_hash_to_newline(stringsetloc("No", "obj_shop1_slash_Draw_0_gml_368_0")));
	draw_sprite(spr_heart, 0, 450, 350 + (menuc[menu] * 30));
}
scr_shopmenu(5);
if (menu == 4)
{
	if (sell == 0)
		menu = 0;
	if (instance_exists(obj_writer) == false && selling == 0)
	{
		selling = 1;
		if (sell == 1)
		{
		}
		if (sell == 2)
		{
			scr_speaker("spamton");
			msgsetloc(0, "\\E2* DON'T FORGET TO&[Like and Subscribe]&FOR MORE&[Hyperlink Blocked]!/%", "obj_shop_ch2_spamton_slash_Draw_0_gml_647_0");
			if (global.flag[309] == 3 || global.flag[309] == 4)
				msgsetloc(0, "\\E2* MANSION... BASEMENT!&* FIND IT!!/%", "obj_shop_ch2_spamton_slash_Draw_0_gml_648_0");
			if (scr_keyitemcheck(10))
				msgsetloc(0, "\\E2* YOU'RE LEAVING!?&* WHAT ABOUT MY DISK!?!?/%", "obj_shop_ch2_spamton_slash_Draw_0_gml_649_0");
			if (global.flag[309] >= 7)
				msgsetloc(0, " /%", "obj_shop_ch2_spamton_slash_Draw_0_gml_650_0");
		}
		if (sell == 3)
		{
			var condition = 0;
			if (global.flag[434] == 1 && scr_keyitemcheck(12))
				condition = 1;
			if (scr_keyitemcheck(10))
				condition = 2;
			if (condition == 1)
			{
				scr_speaker("spamton");
				msgsetloc(0, "\\E9* KEYGEN/%", "obj_shop_ch2_spamton_slash_Draw_0_gml_689_0");
				sell = 10;
				snd_pause(global.currentsong[1]);
				keygenmusic = snd_init("KEYGEN.ogg");
				mus_loop(keygenmusic);
			}
			if (condition == 0)
			{
				global.flag[434] = 1;
				talked_deal++;
				if (talked_deal == 1)
				{
					scr_speaker("spamton");
					msgsetloc(0, "\\E0* KRIS!!^1! YOU [Little Sponge]^1! I KNEW YOU'D COME HERE [[On A Saturday Night]]!/", "obj_shop_ch2_spamton_slash_Draw_0_gml_662_0");
					msgnextloc("\\E3* AFTER ALL^1, YOU WANNA BE A [Big Shot]! EAHAHAHAHAA!!/", "obj_shop_ch2_spamton_slash_Draw_0_gml_663_0");
					msgnextloc("\\E0* BUT HOW? HOW CAN YOU BE?/", "obj_shop_ch2_spamton_slash_Draw_0_gml_664_0");
					msgnextloc("\\E2* LISTEN. IN THE [Deep Abyss] OF QUEEN'S [Mansion]/", "obj_shop_ch2_spamton_slash_Draw_0_gml_665_0");
					msgnextloc("\\E3* [[A Great Deal]] IS WAITING For [[A LimiTed Time Only!]]&* A HEAVEN-PIERCING [[Workout-Ready Body]]/", "obj_shop_ch2_spamton_slash_Draw_0_gml_666_0");
					msgnextloc("\\E4* [[Designed BY The Classics You've Come To Expect^1! (C)1997]]/", "obj_shop_ch2_spamton_slash_Draw_0_gml_667_0");
					msgnextloc("\\E0* KRIS THAT [Little Nipper] IS OUR [One-way Ticket] TO MAKE YOU [Big]. MAKE ME [Big]./", "obj_shop_ch2_spamton_slash_Draw_0_gml_668_0");
					msgnextloc("\\E2* BEFORE YOU KNOW IT WE WILL BE TAKING [ A Ride around Town on Our Specil Cungadero]/", "obj_shop_ch2_spamton_slash_Draw_0_gml_669_0");
					msgnextloc("\\E3* VACATIONING IN [Burning acid] WHILE YOU SOAK IN THE [Hyperlink Blocked]./", "obj_shop_ch2_spamton_slash_Draw_0_gml_670_0");
					msgnextloc("\\E0* BUT KRIS DON'T [Breathe] YET!! THE WAY IS LOCKED BY [High Quality Encryption]!!!/", "obj_shop_ch2_spamton_slash_Draw_0_gml_671_0");
					msgnextloc("\\E1* YOU WILL NEVER GET INSIDE./", "obj_shop_ch2_spamton_slash_Draw_0_gml_672_0");
					msgnextloc("\\E5* WAIT KRIS LOOK!! HEAR THOSE [Balloons]??? YOU ARE [1000th Customer]!!./", "obj_shop_ch2_spamton_slash_Draw_0_gml_673_0");
					msgnextloc("\\E2* AS A [Commemorative Ring] I WILL LET YOU BUY [KeyGen] FROM ME AT [The Low Low Price Of]/", "obj_shop_ch2_spamton_slash_Draw_0_gml_674_0");
					msgnextloc("\\E4* WHAT DO YOU THINK!?!? IT'S SUCH A STEAL^1, I'M [$!X$]ING MYSELF!!!/", "obj_shop_ch2_spamton_slash_Draw_0_gml_675_0");
					msgnextloc("\\E5* TAKE THIS DEAL AND YOU WILL [[Die]]!!&* IT'S THAT GOOD!!!/", "obj_shop_ch2_spamton_slash_Draw_0_gml_676_0");
					msgnextloc("\\E0* [BUY] THE KEYGEN FROM ME^1, UNLOCK THE BASEMENT, AND GET THAT EmptyDisk!!!/%", "obj_shop_ch2_spamton_slash_Draw_0_gml_677_0");
				}
				else
				{
					scr_speaker("spamton");
					msgsetloc(0, "\\E2* KRIS!! BUY [KeyGen] FROM ME AND GO TO QUEEN'S MANSION'S [Luxurious Basement Apartment]!!/", "obj_shop_ch2_spamton_slash_Draw_0_gml_681_0");
					msgnextloc("\\E7* WHAT!? GO MYSELF!? KRIS!!!!! NO!!!!!&* THE MEN INSIDE WOULD&* THE MEN INSIDE WOULD/%", "obj_shop_ch2_spamton_slash_Draw_0_gml_682_0");
				}
			}
			if (condition == 2)
			{
				sell = 15;
				selling = 3;
				scr_speaker("spamton");
				msgsetloc(0, "\\E4* KRIS!!^1! YOU DID IT!^1! YOU [[Funky]] LITTLE [[Worm]]^1! YOU BROUGHT ME THE DISK!!/", "obj_shop_ch2_spamton_slash_Draw_0_gml_699_0");
				msgnextloc("\\E5* HOCHI MAMA!!!! I CAN FEEL THAT [Smooth Taste] ALREADY!!/", "obj_shop_ch2_spamton_slash_Draw_0_gml_700_0");
				msgnextloc("\\E7* ..^1. NOW KRIS. DON'T BE GREEDY. HAND OVER. THE DISK./", "obj_shop_ch2_spamton_slash_Draw_0_gml_701_0");
				msgnextloc("* THEN WE WILL TRANSFER./", "obj_shop_ch2_spamton_slash_Draw_0_gml_702_0");
				msgnextloc("\\E7* MY [[Hyperlink Blocked]]./", "obj_shop_ch2_spamton_slash_Draw_0_gml_703_0");
				msgnextloc("\\E7* THEN. KRIS. AFTER. THIS IS VERY, VERY IMPORTANT./", "obj_shop_ch2_spamton_slash_Draw_0_gml_704_0");
				msgnextloc("* GO BACK. AND PUT. THE DISK. BACK. WHERE YOU GOT IT./", "obj_shop_ch2_spamton_slash_Draw_0_gml_705_0");
				msgnextloc("\\E3* DO THAT...&* AND YOU HAVE MY [Specil Guaranttee] I WILL [[Pass My Savings Onto You!]]/", "obj_shop_ch2_spamton_slash_Draw_0_gml_706_0");
				msgnextloc("\\E4* EVERY [Big], EVERY [Shot], EVERY [Hyperlink Blocked], ALL YOURS, KRIS./", "obj_shop_ch2_spamton_slash_Draw_0_gml_707_0");
				msgnextloc("* SO WHAT DO YOU SAY? BIG SHOT.../", "obj_shop_ch2_spamton_slash_Draw_0_gml_708_0");
				msgnextloc("\\E0* [[Warning^1! If you consent to the terms and agreements^1,]]&* [[OUR STORE is PERMANENTLY Closing Down!!]]/%", "obj_shop_ch2_spamton_slash_Draw_0_gml_709_0");
				ynchoice = 0;
				ynchoicebuffer = 4;
			}
		}
		if (sell == 4)
		{
			scr_speaker("spamton");
			msgsetloc(0, "\\E2* I USED TO BE NOTHING BUT THE E_MAIL GUY^1, NOW I'M THE [[It Burns^1! Ow^1! Stop^1! Help Me^1! It Burns!]] GUY!/", "obj_shop_ch2_spamton_slash_Draw_0_gml_719_0");
			msgnextloc("\\E6* [[Amazed at thi5 amazing transformation? You too can]] HAVE A [[Communion]] WITH [[Unintelligble Laughter]]/", "obj_shop_ch2_spamton_slash_Draw_0_gml_720_0");
			msgnextloc("\\E3* SOON I'LL EVEN SURPASS THAT DAMNED [[Clown Around Town!]]/", "obj_shop_ch2_spamton_slash_Draw_0_gml_721_0");
			msgnextloc("\\E4* BUT UNLIKE HIM I'M GONNA [[Shoot For the Sky!]] AND  GET ON THE PATH TO .../", "obj_shop_ch2_spamton_slash_Draw_0_gml_722_0");
			msgnextloc("\\E7* [[The Big One]]/", "obj_shop_ch2_spamton_slash_Draw_0_gml_723_0");
			msgnextloc("\\E6* I'LL GET SO.&* I'LL GET SO.&* I'LL GET SO.&* I'LL GET SO.&* I'LL GET SO.&* I'LL GET SO./", "obj_shop_ch2_spamton_slash_Draw_0_gml_724_0");
			msgnextloc("\\E6* [[Hyperlink blocked.]]/%", "obj_shop_ch2_spamton_slash_Draw_0_gml_725_0");
		}
		if (sell == 5)
		{
			if (global.flag[329] == 0)
			{
				global.flag[329] = 1;
				scr_speaker("spamton");
				msgsetloc(0, "\\E7* SPEAKING OF [[Communion]]/", "obj_shop_ch2_spamton_slash_Draw_0_gml_734_0");
				msgnextloc("\\E2* KRIS^1, DID YOU KNOW THAT THE KNIGHT.../", "obj_shop_ch2_spamton_slash_Draw_0_gml_735_0");
				msgnextloc("\\E6* No^1, I'm sorry^1! I'm sorry^1! I didn't mean to --/", "obj_shop_ch2_spamton_slash_Draw_0_gml_737_0");
				msgnextloc("\\E7* TOO MANY EXCESS VACATION DAYS?? TAKE A GOD DAMN VACATION STRAIGHT TO HELL/%", "obj_shop_ch2_spamton_slash_Draw_0_gml_738_0");
			}
			else
			{
				scr_speaker("spamton");
				msgsetloc(0, "\\E1* ME? ..^1. FRIENDS?/", "obj_shop_ch2_spamton_slash_Draw_0_gml_742_0");
				msgnextloc("\\E2* EAHAEHAEHAEHAEH!!!&* KRIS^1! YOU AND ME. ARE ALREADY [Friend Request Accepted]/", "obj_shop_ch2_spamton_slash_Draw_0_gml_743_0");
				msgnextloc("\\E3* WE DON'T NEED ANYONE ELSE!!^1! WE DON'T NEED [[Easels]] or [[CRTs]]!/", "obj_shop_ch2_spamton_slash_Draw_0_gml_744_0");
				msgnextloc("\\E4* WE DON'T NEED ANY [[Man^1, Woman^1, or Child]] [[At Half Price]]!!/", "obj_shop_ch2_spamton_slash_Draw_0_gml_745_0");
				msgnextloc("\\E5* WE DON'T NEED [[MIKE]]!!!/", "obj_shop_ch2_spamton_slash_Draw_0_gml_746_0");
				msgnextloc("\\E8* ..^4.&* ..^1. Mike.../", "obj_shop_ch2_spamton_slash_Draw_0_gml_747_0");
				msgnextloc("\\E7* KRIS!!^1! DON'T BELIEVE [[Anything You See On TV!]]&* THE MAN'S A CRIMINAL^1, I TELL YOU!^1! A CRIMINAL!!/%", "obj_shop_ch2_spamton_slash_Draw_0_gml_748_0");
			}
		}
		if (sell == 6)
		{
			talked_fear++;
			if (talked_fear == 1)
			{
				scr_speaker("spamton");
				msgsetloc(0, "\\E2* WHAT ARE YOU AFRAID OF??? ACCORDING TO [[Encyclopedia of]] [[Being Afraid]]/", "obj_shop_ch2_spamton_slash_Draw_0_gml_758_0");
				msgnextloc("\\E3* THERE'S NOTHING TO FEAR EXCEPT/", "obj_shop_ch2_spamton_slash_Draw_0_gml_759_0");
				msgnextloc("\\E8* .../", "obj_shop_ch2_spamton_slash_Draw_0_gml_761_0");
				msgnextloc("* ..^1. can anyone hear me? Help..^1./", "obj_shop_ch2_spamton_slash_Draw_0_gml_762_0");
				msgnextloc("\\E3* HUH??? WHAT?? NO^1, I DIDN'T HEAR ANYTHING JUST NOW!!!/", "obj_shop_ch2_spamton_slash_Draw_0_gml_763_0");
				msgnextloc("\\E7* ..^1. BUT IT SOUNDED LIKE THEY WERE TALKING TO YOU./%", "obj_shop_ch2_spamton_slash_Draw_0_gml_764_0");
			}
			else
			{
				scr_speaker("spamton");
				msgsetloc(0, "\\E0* .../%", "obj_shop_ch2_spamton_slash_Draw_0_gml_768_0");
			}
		}
		instance_create(30, 270, obj_writer);
	}
	if (sell == 10 && !i_ex(obj_writer))
	{
		snd_free(keygenmusic);
		snd_resume(global.currentsong[1]);
		global.fe = 0;
		sell = 11;
	}
	if (selling == 1 && instance_exists(obj_writer) == false)
	{
		if (sell == 2)
		{
			selling = 2;
			event_user(1);
		}
		else
		{
			if (sell == 1 || sell == 7)
				menu = 0;
			else
				menu = 3;
			sell = 0;
			selling = 0;
			global.fe = 0;
		}
	}
	if (selling == 3 && !i_ex(obj_writer))
	{
		scr_84_set_draw_font("main");
		draw_set_color(c_white);
		var stringscale = 5.2;
		if (global.lang == "ja")
			stringscale = 12;
		draw_text_transformed(140, 260, stringsetloc("TRANSFER", "obj_shop_ch2_spamton_slash_Draw_0_gml_800_0"), stringscale, 12.2, 0);
		draw_text(560, 400, stringsetloc("DO NOT", "obj_shop_ch2_spamton_slash_Draw_0_gml_801_0"));
		if (right_p())
			ynchoice = 1;
		if (left_p())
			ynchoice = 0;
		draw_sprite(spr_heart, 0, 120 + (ynchoice * 400), 400);
		ynchoicebuffer--;
		if (ynchoicebuffer < 0 && button1_p())
		{
			if (ynchoice == 0)
			{
				selling = 4;
				scr_speaker("spamton");
				msgsetloc(0, "\\E3* FINALLY!!^1! I KNEW YOU WOULD [[Request Accepted]]/", "obj_shop_ch2_spamton_slash_Draw_0_gml_813_0");
				msgnextloc("\\E5* KRIS!!^1! HERE I GO!!^1! BEGIN THE [[Transfer]]/%", "obj_shop_ch2_spamton_slash_Draw_0_gml_814_0");
				instance_create(30, 270, obj_writer);
			}
			else
			{
				scr_speaker("spamton");
				msgsetloc(0, "\\E7* TURNING DOWN A BELOVED [[Stranger]]..^1. THAT'S NOT VERY [[Big Shot]] OF YOU^1, KRIS./%", "obj_shop_ch2_spamton_slash_Draw_0_gml_820_0");
				instance_create(30, 270, obj_writer);
				selling = 1;
			}
		}
	}
	if (selling == 4 && !i_ex(obj_writer))
	{
		selling = 0;
		sell = 0;
		menu = 999;
		greybg = 1;
		global.flag[309] = 7;
		scr_keyitemremove(10);
		scr_keyitemremove(12);
		scr_keyitemget(11);
		snd_stop(global.currentsong[1]);
	}
}
if (down_p())
{
	if (menu != 11 && menu != 12 && menu != 13 && greybg != 1)
	{
		menuc[menu] += 1;
		if (menuc[menu] > menumax)
			menuc[menu] = 0;
	}
}
if (up_p())
{
	if (menu != 11 && menu != 12 && menu != 13 && greybg != 1)
	{
		menuc[menu] -= 1;
		if (menuc[menu] < 0)
			menuc[menu] = menumax;
	}
}
if (menu < 4 || menu >= 10)
{
	draw_text(440, 420, string_hash_to_newline(string(global.gold) + stringsetloc(" KROMER", "obj_shop_ch2_spamton_slash_Draw_0_gml_872_0")));
	if (menu == 1 || menu == 2)
	{
		if (menuc[1] < 4)
		{
			if (itemtype[menuc[1]] == "item")
				scr_itemcheck_inventory_and_pocket(0);
			if (itemtype[menuc[1]] == "armor")
				scr_armorcheck_inventory(0);
			if (itemtype[menuc[1]] == "weapon")
				scr_weaponcheck_inventory(0);
		}
	}
}
onebuffer -= 1;
twobuffer -= 1;
song_timer++;
if (song_timer == song_max_time)
{
	with (obj_event_manager)
		trigger_event((0 << 0), (27 << 0));
}
