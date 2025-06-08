if (snd_is_playing(global.currentsong[1]))
	siner++;
for (i = 0; i < 3; i++)
{
	spritetalkingbuffer[i]--;
	if (spritetalkingbuffer[i] <= 0)
		spritetalking[i] = 0;
}
if (instance_exists(obj_writer))
{
	if (obj_writer.pos < obj_writer.length && obj_writer.miniface_drawn >= 0)
	{
		if (obj_writer.miniface_drawn == 1)
			spritetalkingframe[1]++;
		if (obj_writer.miniface_drawn == 2)
			spritetalkingframe[0]++;
		if (obj_writer.miniface_drawn == 3)
			spritetalkingframe[2]++;
		for (i = 0; i < 3; i++)
		{
			if (spritetalkingframe[i] >= 2)
			{
				spritetalking[i] = 1;
				spritetalkingbuffer[i] = 8;
			}
		}
	}
	else
	{
		spritetalkingframe[0] = 0;
		spritetalkingframe[1] = 0;
		spritetalkingframe[2] = 0;
	}
}
else
{
	spritetalkingframe[0] = 0;
	spritetalkingframe[1] = 0;
	spritetalkingframe[2] = 0;
}
draw_sprite_ext(spr_shop_m_bg, siner / 3, 0, 0, 2, 2, 0, c_white, 1);
if (everyonedance == 0)
{
	draw_sprite_ext(spr_shop_m_capn_body, siner / 4, 0, 0, 2, 2, 0, c_white, 1);
	if (spritetalking[2] == 0)
		draw_sprite_ext(spr_shop_m_capn_head, siner / 4, 0, 0, 2, 2, 0, c_white, 1);
	if (spritetalking[2] == 1)
		draw_sprite_ext(spr_shop_m_capn_head_talk, siner / 4, 0, 8, 2, 2, 0, c_white, 1);
	if (spritetalking[1] == 0)
		draw_sprite_ext(spr_shop_m_sweet, siner / 6, 0, 0, 2, 2, 0, c_white, 1);
	if (spritetalking[1] == 1)
		draw_sprite_ext(spr_shop_m_sweet_talk, siner / 6, 0, 0, 2, 2, 0, c_white, 1);
	draw_sprite_ext(spr_shop_m_kk_body, siner / 6, 0, 0, 2, 2, 0, c_white, 1);
	if (spritetalking[0] == 0)
		draw_sprite_ext(spr_shop_m_kk_head, siner / 6, 0, 0, 2, 2, 0, c_white, 1);
	if (spritetalking[0] == 1)
		draw_sprite_ext(spr_shop_m_kk_head_talk, siner / 6, 0, 0, 2, 2, 0, c_white, 1);
}
else
{
	fliptimer++;
	draw_sprite_ext(spr_shop_m_capn_body, min(fliptimer, 7), capnoffset, 0, 2 * capnflip, 2, 0, c_white, 1);
	draw_sprite_ext(spr_shop_m_capn_head, min(fliptimer, 7), capnoffset, 0, 2 * capnflip, 2, 0, c_white, 1);
	draw_sprite_ext(spr_shop_m_kk_body, fliptimer / 3, kkoffset + (sin(fliptimer / 2) * 4 * capnflip), 0, 2 * capnflip, 2, 0, c_white, 1);
	draw_sprite_ext(spr_shop_m_kk_head_talk, fliptimer / 3, kkoffset - (sin(fliptimer / 2) * 4 * capnflip), 0, 2 * capnflip, 2, 0, c_white, 1);
	draw_sprite_ext(spr_shop_m_sweet_happy, fliptimer / 3, (kkoffset / 1.53) - (cos(siner / 4) * 8), (sin(siner / 2) * 8) + 8, 2 * capnflip, 2, 0, c_white, 1);
	if (fliptimer >= 8)
	{
		if (capnflip == 1)
		{
			capnflip = -1;
			capnoffset = 200;
			kkoffset = 920;
		}
		else
		{
			kkoffset = 0;
			capnflip = 1;
			capnoffset = 0;
		}
		fliptimer = 0;
	}
	if (everyonedance == 2)
	{
		for (i = 0; i < 3; i++)
		{
			shopcharx[i] = 0;
			shopchary[i] = 0;
			spritetalking[i] = 0;
			spritetalkingframe[i] = 0;
			spritetalkingbuffer[i] = 0;
		}
		siner = 0;
		startdancing = 0;
		everyonedance = 0;
	}
}
draw_set_color(c_black);
draw_rectangle(-10, 240, 700, 600, false);
if (startdancing == 1)
{
	everyonedance = 1;
	dancetimer = 0;
	fliptimer = 0;
	capnflip = 1;
	kkoffset = 0;
	startdancing = 0;
	capnoffset = 0;
}
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
		global.typer = 6;
		msgsetloc(0, "\\m3\t\t*Don't forget to&\tbuy something!&\\m1\tIf you want!&\\m2\tCan I buy&\tsomething too?", "obj_shop_ch2_music_slash_Draw_0_gml_168_0");
		if (mainmessage == 0)
			msgsetloc(0, "\\m1\t\t*Yo!&\\m3\tWhat's up?&\\m2\tHey!", "obj_shop_ch2_music_slash_Draw_0_gml_170_0");
		if (canUseJukebox == 1)
		{
			if (mainmessage == 0)
				msgsetloc(0, "\\m1\t\t*Welcome to...&\\m3\tThe Music Room!&\\m2\tWe don't sell&\tanything!", "obj_shop_ch2_music_slash_Draw_0_gml_174_0");
			else
				msgsetloc(0, "\\m1\t\t*Crash!&\\m3\tBang!&\\m2\tBoom!", "obj_shop_ch2_music_slash_Draw_0_gml_175_0");
			if (mainmessage == 2)
				msgsetloc(0, "\\m2\t\t*Good song.", "obj_shop_ch2_music_slash_Draw_0_gml_176_0");
		}
		global.typer = 78;
		instance_create(30, 270, obj_writer);
	}
	menumax = 3;
	draw_set_color(c_white);
	scr_84_set_draw_font("mainbig");
	if (canUseJukebox == 0)
	{
		draw_text(480, 260, string_hash_to_newline(stringsetloc("Buy", "obj_shop1_slash_Draw_0_gml_106_0")));
		draw_text(480, 300, string_hash_to_newline(stringsetloc("Sell", "obj_shop1_slash_Draw_0_gml_107_0")));
	}
	else
	{
		draw_text(480, 260, stringsetloc("Play Music", "obj_shop_ch2_music_slash_Draw_0_gml_194_0"));
		draw_text(480, 300, stringsetloc("Lancer", "obj_shop_ch2_music_slash_Draw_0_gml_195_0"));
	}
	draw_text(480, 340, string_hash_to_newline(stringsetloc("Talk", "obj_shop1_slash_Draw_0_gml_108_0")));
	draw_text(480, 380, string_hash_to_newline(stringsetloc("Exit", "obj_shop1_slash_Draw_0_gml_109_0")));
	draw_sprite(spr_heart, 0, 450, (135 + (menuc[0] * 20)) * 2);
	if (button1_p())
	{
		onebuffer = 2;
		mainmessage = 1;
		with (obj_writer)
			instance_destroy();
		if (canUseJukebox == 0)
		{
			if (menuc[0] == 0)
				menu = 1;
			if (menuc[0] == 1)
			{
				menu = 10;
				sidemessage = 0;
			}
		}
		else
		{
			if (menuc[0] == 0)
			{
				custommenu = instance_create(0, 0, obj_fusionmenu);
				custommenu.type = 5;
				if (menuc[0] == 0)
					snd_free_all();
				if (menuc[0] == 1)
					custommenu.subtype = 1;
				menu = 99;
			}
			if (menuc[0] == 1)
			{
				snd_play(snd_splat);
				mainmessage = 2;
			}
		}
		if (menuc[0] == 2)
		{
			if (canUseJukebox == 0)
			{
				menu = 3;
			}
			else
			{
				menu = 4;
				sell = 1;
			}
		}
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
	for (i = 0; i < itemtotal; i += 1)
	{
		draw_text(60, 260 + (i * 40), string_hash_to_newline(shopitemname[i]));
		draw_text(300, 260 + (i * 40), string_hash_to_newline(stringsetsubloc("$~1", string(buyvalue[i]), "obj_shop_ch2_music_slash_Draw_0_gml_250_0")));
	}
	draw_text(60, 260 + (itemtotal * 40), string_hash_to_newline(stringsetloc("Exit", "obj_shop1_slash_Draw_0_gml_139_0")));
	if (menu == 1)
	{
		menumax = 4;
		if (instance_exists(obj_writer) == false)
		{
			if (sidemessage == 0)
				msgsetloc(0, "\\m3\t\t*Take&\tyour&\tpick!", "obj_shop_ch2_music_slash_Draw_0_gml_262_0");
			if (sidemessage == 1)
			{
				_rr = floor(random(10));
				msgsetloc(0, "\\m1\t\t*Thanks,&\tguys!", "obj_shop_ch2_music_slash_Draw_0_gml_266_0");
				if (_rr == 0)
					msgsetloc(0, "\\m2\t\t*I can't&\tsee.", "obj_shop_ch2_music_slash_Draw_0_gml_267_0");
			}
			if (sidemessage == 2)
				msgsetloc(0, "\\m3\t\t*Don't&\tchicken&\tout!", "obj_shop_ch2_music_slash_Draw_0_gml_270_0");
			if (sidemessage == 3)
				msgsetloc(0, "\\m3\t\t*Not&\tenough&\tcash!", "obj_shop_ch2_music_slash_Draw_0_gml_271_0");
			if (sidemessage == 4)
				msgsetloc(0, "\\m3\t\t*Your&\tpockets&\tare&\tfull.", "obj_shop_ch2_music_slash_Draw_0_gml_272_0");
			if (sidemessage == 5)
				msgsetloc(0, "\\m3\t\t*Cool!&\tIt's in&\tyour&\tSTORAGE.", "obj_shop_ch2_music_slash_Draw_0_gml_273_0");
			if (murder == 1)
				global.msg[0] = stringsetloc("/*", "obj_shop1_slash_Draw_0_gml_153_0");
			global.typer = 78;
			instance_create(450, 260, obj_writer);
		}
		draw_sprite(spr_heart, 0, 30, 270 + (menuc[1] * 40));
		if (button1_p() && onebuffer < 0)
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
		draw_text(460, y1_off, string_hash_to_newline(stringsetloc("Buy it for", "obj_shop1_slash_Draw_0_gml_167_0")));
		draw_text(460, y2_off, string_hash_to_newline(stringsetsubloc("$~1 ?", string(buyvalue[menuc[1]]), "obj_shop_ch2_music_slash_Draw_0_gml_291_0")));
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
				if (afford == 1)
				{
					_pocketed = 0;
					if (itemtype[menuc[1]] == "item")
						scr_itemget(item[menuc[1]]);
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
	draw_text(80, 260, string_hash_to_newline(stringsetloc("About yourselves", "obj_shop_ch2_music_slash_Draw_0_gml_343_0")));
	draw_text(80, 300, stringsetloc("Performance", "obj_shop_ch2_music_slash_Draw_0_gml_344_0"));
	draw_text(80, 340, stringsetloc("About Queen", "obj_shop_ch2_music_slash_Draw_0_gml_345_0"));
	draw_text(80, 380, stringsetloc("Junk Work", "obj_shop_ch2_music_slash_Draw_0_gml_346_0"));
	draw_set_color(c_white);
	draw_text(80, 420, string_hash_to_newline(stringsetloc("Exit", "obj_shop1_slash_Draw_0_gml_240_0")));
	if (instance_exists(obj_writer) == false)
	{
		global.msg[0] = stringsetloc("\\m1\t\t*Let's&\ttrade&\tinfo!", "obj_shop_ch2_music_slash_Draw_0_gml_357_0");
		global.typer = 78;
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
	draw_text(80, 380, string_hash_to_newline(stringsetloc("Sell Pocket Items", "obj_shop_ch2_music_slash_Draw_0_gml_394_0")));
	draw_text(80, 420, string_hash_to_newline(stringsetloc("Return", "obj_shop_ch2_music_slash_Draw_0_gml_395_0")));
	if (instance_exists(obj_writer) == false)
	{
		if (sidemessage == 0)
			msgsetloc(0, "\\m1\t\t*We'll&\ttake&\tit for&\tyou!", "obj_shop_ch2_music_slash_Draw_0_gml_399_0");
		if (sidemessage == 1)
			msgsetloc(0, "\\m2\t\t*That's&\tall you&\thad?", "obj_shop_ch2_music_slash_Draw_0_gml_400_0");
		if (sidemessage == 2)
			msgsetloc(0, "\\m2\t\t*You&\tgot&\tnothin!", "obj_shop_ch2_music_slash_Draw_0_gml_401_0");
		global.typer = 78;
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
			if (itemcount == 48)
			{
				sidemessage = 2;
				can = 0;
			}
			scr_weaponinfo_all();
		}
		if (idealmenu == 13)
		{
			scr_armorcheck_inventory(0);
			if (itemcount == 48)
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
			msgsetloc(0, "\\m1\t\t*OK,&\thit us&\twith an&\tITEM!", "obj_shop_ch2_music_slash_Draw_0_gml_487_0");
		if (sidemessage2 == 0 && menu == 12)
			msgsetloc(0, "\\m1\t\t*OK,&\tshow us&\tyour&\tWEAPON!", "obj_shop_ch2_music_slash_Draw_0_gml_488_0");
		if (sidemessage2 == 0 && menu == 13)
			msgsetloc(0, "\\m1\t\t*OK,&\thit us&\twith an&\tARMOR!", "obj_shop_ch2_music_slash_Draw_0_gml_489_0");
		if (sidemessage2 == 1)
			msgsetloc(0, "\\m1\t\t*Sweet!&\tThis'll&\tbe great&\tscrap!", "obj_shop_ch2_music_slash_Draw_0_gml_490_0");
		if (sidemessage2 == 2)
			msgsetloc(0, "\\m1\t\t*OK,&\thold&\tonto&\tthat.", "obj_shop_ch2_music_slash_Draw_0_gml_491_0");
		if (sidemessage2 == 3)
			msgsetloc(0, "\\m1\t\t*Maybe&\tbetter&\tkeep&\tthat.", "obj_shop_ch2_music_slash_Draw_0_gml_492_0");
		if (sidemessage2 == 4)
			msgsetloc(0, "\\m3\t\t*That's&\tnothin!", "obj_shop_ch2_music_slash_Draw_0_gml_493_0");
		global.typer = 78;
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
	draw_text(460, y2_off, string_hash_to_newline(stringsetsubloc("$~1 ?", string(sellvalue), "obj_shop_ch2_music_slash_Draw_0_gml_508_0")));
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
			msgsetloc(0, "\\m3\t\t*Nice town^1, chief.&\\m1\tI think we're gonna like it&\there!&\\m2\tCool city./", "obj_shop_ch2_music_slash_Draw_0_gml_532_0");
			msgnextloc("\\m1\t\t*As thanks^1, you can listen to&\tall sorts of songs here./", "obj_shop_ch2_music_slash_Draw_0_gml_533_0");
			msgnextloc("\\m3\t\t*Don't think it'll be cheap^1,&\tthough!&\\m2\tIt's free.&\\m3\tWhat!?/%", "obj_shop_ch2_music_slash_Draw_0_gml_534_0");
		}
		if (sell == 2)
			msgsetloc(0, "\\m1\t\t*See ya!&\\m3\tSmell ya!&\\m2\tHear ya!/%", "obj_shop_ch2_music_slash_Draw_0_gml_540_0");
		if (sell == 3)
		{
			msgsetloc(0, "\\m1\t\t*I'm Sweet.&\\m3\tThe ladies call me Cap'n!&\\m2\tK_K!/", "obj_shop_ch2_music_slash_Draw_0_gml_546_0");
			msgnextloc("\\m1\t\t*We used to work the sound in&\tthis town.&\\m3\t... until Queen came around.&\\m2\t(K_K is short for Cakes.)/", "obj_shop_ch2_music_slash_Draw_0_gml_547_0");
			msgnextloc("\\m1\t\t*She made music against the law.&\\m2\tUnless you make a song she likes.&\\m3\tBut the only JUNK she enjoys.../", "obj_shop_ch2_music_slash_Draw_0_gml_548_0");
			msgnextloc("\\m1\t\t*Are reverse diss-tracks, where&\tthe vocalist puts themselves&\tdown, and praises Queen...&\\m3\tOr noise music./", "obj_shop_ch2_music_slash_Draw_0_gml_549_0");
			msgnextloc("\\m1\t\t*But even if Queenie tries to put&\ta limiter on us.../", "obj_shop_ch2_music_slash_Draw_0_gml_550_0");
			msgnextloc("\\m1\t\t*You can't STOP ! THE ! MUSIC!&\\m3\tHear that!? We'll just go&\tunderground!!&\\m2\tCrash! Boom! Bang!/", "obj_shop_ch2_music_slash_Draw_0_gml_551_0");
			msgnextloc("\\m1\t\t*That's why we made this junk&\tshop!&\\m3\tWe'll fund our musical rebellion!&\\m2\tCan we make noise music, too?/%", "obj_shop_ch2_music_slash_Draw_0_gml_552_0");
		}
		if (sell == 4)
		{
			selling = 3;
			dancetimerb = 0;
			msgsetloc(0, "\\m1\t\t*What, wanna see what we got!?&\\m3\tYo, yo, can you handle this!?&\\m2\tHold onto your antennas!!/%", "obj_shop_ch2_music_slash_Draw_0_gml_565_0");
		}
		if (sell == 5)
		{
			msgsetloc(0, "\\m1\t\t*Queen wasn't always so... harsh.&\\m3\tNo, she WAS! She just got WORSE&\tsomehow!/", "obj_shop_ch2_music_slash_Draw_0_gml_571_0");
			msgnextloc("\\m1\t\t*It wasn't 'til that DARK FOUNTAIN&\tshowed up,&\\m3\tThat she started going into&\toverdrive./", "obj_shop_ch2_music_slash_Draw_0_gml_572_0");
			msgnextloc("\\m1\t\t*\"Knight\" this^1, \"Knight\" that^1,&\t\"Fountain\" that...&\\m3\tLike, what does that Knight&\teven have going for it that I&\tdon't!? C'mon!!/", "obj_shop_ch2_music_slash_Draw_0_gml_573_0");
			msgnextloc("\\m1\t\t*But like I said. She wasn't&\tALWAYS so bad. She used to&\tgive me sweets. For being so&\tsweet!&\\m3\tH... huh!? I never got candy!!/", "obj_shop_ch2_music_slash_Draw_0_gml_574_0");
			msgnextloc("\\m1\t\t*You kept calling her a&\t\"hot mama^1,\" Cap.&\\m3\tYeah!? Is that wrong!? She&\tlooks like a mom and tends to&\toverheat!!/", "obj_shop_ch2_music_slash_Draw_0_gml_575_0");
			msgnextloc("\\m3\t\t*K_K! Help me out here!!&\\m1\tK_K! What do you think?&\\m2\tHuh? Me?/", "obj_shop_ch2_music_slash_Draw_0_gml_576_0");
			msgnextloc("\\m2\t\t*... I like candy./", "obj_shop_ch2_music_slash_Draw_0_gml_577_0");
			msgnextloc("\\m1\t\t*Yeah, you're right, K_K! We gotta&\tfocus on what's important!&\\m3\tIf the band fights, we'll get&\toutta tune!&\\m2\tAnyone have any lemon drops?/%", "obj_shop_ch2_music_slash_Draw_0_gml_578_0");
		}
		if (sell == 6)
		{
			msgsetloc(0, "\\m1\t\t*Our main gig is making scrap&\tinto machines.&\\m3\tOur clients are sometimes a&\tbit off-key though.&\\m2\tThey smell off-key too!!/", "obj_shop_ch2_music_slash_Draw_0_gml_584_0");
			msgnextloc("\\m1\t\t*Like some... little weird guy.&\\m3\tHe wanted us to sneak into&\tQueen's mansion...&\\m2\tWe're just rebels, we don't&\twanna get in trouble!/", "obj_shop_ch2_music_slash_Draw_0_gml_585_0");
			msgnextloc("\\m1\t\t*But recently we got a&\treal-high-class-client.&\\m3\tA man of TASTE! He had a way&\twith words!!&\\m2\tI couldn't even understand him!/", "obj_shop_ch2_music_slash_Draw_0_gml_586_0");
			msgnextloc("\\m1\t\t*Now, all we gotta do is follow&\tthe blueprints, right?&\\m3\tIt'll be our big time break!!&\\m2\tYeah!! Haha!! It's gonna break&\tapart!! Big time!!/%", "obj_shop_ch2_music_slash_Draw_0_gml_587_0");
		}
		global.typer = 78;
		instance_create(30, 270, obj_writer);
	}
	if (selling == 3 && !i_ex(obj_writer))
	{
		snd_pause(global.currentsong[1]);
		coolbeat = snd_init("coolbeat.ogg");
		snd_loop(coolbeat);
		dancetimerb = 0;
		startdancing = 1;
		selling = 4;
	}
	if (selling == 4)
	{
		dancetimerb++;
		if (dancetimerb == 88)
		{
			snd_free(coolbeat);
			everyonedance = 2;
		}
		if (dancetimerb == 90)
		{
			snd_resume(global.currentsong[1]);
			msgsetloc(0, "\\m3\t\t*Yo, how was that!?&\\m1\tDid you get rocked?!&\\m2\tAll our songs are only 4 seconds&\tlong!!/%", "obj_shop_ch2_music_slash_Draw_0_gml_616_0");
			global.typer = 78;
			instance_create(30, 270, obj_writer);
			selling = 1;
		}
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
		}
	}
}
if (down_p())
{
	if (menu != 11 && menu != 12 && menu != 13 && menu != 99)
	{
		menuc[menu] += 1;
		if (menuc[menu] > menumax)
			menuc[menu] = 0;
	}
}
if (up_p())
{
	if (menu != 11 && menu != 12 && menu != 13 && menu != 99)
	{
		menuc[menu] -= 1;
		if (menuc[menu] < 0)
			menuc[menu] = menumax;
	}
}
if (menu < 4 || menu >= 10)
{
	if (menu != 99)
	{
		draw_text(440, 420, "$" + string_hash_to_newline(string(global.gold)));
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
				scr_84_set_draw_font("dotumche");
				if (itemcount < 10)
					roomstring = "0" + string(itemcount);
				else
					roomstring = string(itemcount);
				if (itemcount > 0)
					draw_text(520, 430, string_hash_to_newline(stringsetsubloc("Space:~1", roomstring, "obj_shop_ch2_music_slash_Draw_0_gml_677_0")));
				if (itemcount == 0)
					draw_text(520, 430, string_hash_to_newline(stringsetloc("NO SPACE", "obj_shop1_slash_Draw_0_gml_571_0")));
			}
		}
	}
}
if (menu == 99)
{
	if (i_ex(obj_fusionmenu))
	{
		is_playing = obj_fusionmenu.songPlaying != " ";
		if (is_playing)
			previous_song = string(obj_fusionmenu.songPlaying);
	}
	else if (audio_timer == 1)
	{
		if (!is_playing)
		{
			global.currentsong[0] = snd_init(previous_song);
			global.currentsong[1] = mus_loop_ext(global.currentsong[0], 1, 1);
		}
		audio_timer = 0;
		menu = 0;
	}
	else
	{
		audio_timer++;
	}
}
onebuffer -= 1;
twobuffer -= 1;
