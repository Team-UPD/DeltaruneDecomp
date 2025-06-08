draw_sprite_ext(bg_seam_shop_ch2, 0, 0, 0, 2, 2, 0, c_white, 1);
draw_sprite_ext(bg_seam_shop_ch2, 2, 0, 0, 2, 2, 0, c_white, abs(sin(siner / 30)));
siner += 1;
if (menu == 1 || menu == 2)
{
	if (shopcharx > -20)
		shopcharx -= 4;
	if (shopcharx > -40)
		shopcharx -= 4;
	if (shopcharx > -80)
		shopcharx -= 4;
	if (shopcharx <= -80)
		shopcharx = -80;
}
else
{
	if (shopcharx < -50)
		shopcharx += 4;
	if (shopcharx < -30)
		shopcharx += 4;
	if (shopcharx < 0)
		shopcharx += 4;
	if (shopcharx > 0)
		shopcharx = 0;
}
talkanim = 0;
if (instance_exists(obj_writer))
{
	if (obj_writer.pos < obj_writer.length)
	{
		if (talkbuffer < 0)
			talkfacer = 0;
		talkbuffer = 16;
		talkanim = 1;
		idletimer = 0;
		idlefacer = 0;
		talkfacer += 0.2;
	}
}
shopkeepsprite = spr_seam_talk;
if (global.fe == 1)
	shopkeepsprite = spr_seam_oh;
if (global.fe == 2)
	shopkeepsprite = spr_seam_laugh;
if (global.fe == 3)
	shopkeepsprite = spr_seam_impatient;
qualify = 0;
if (global.fe != 0 && talkbuffer < 0)
	talkbuffer = 0;
if (talkbuffer >= 0)
{
	if (talkbuffer < 16)
	{
		if (((talkfacer + 1) % 3) != 0)
			talkfacer += 0.2;
	}
	draw_sprite_ext(shopkeepsprite, talkfacer, shopcharx + 160, 34, 2, 2, 0, c_white, 1);
	qualify = 1;
}
if (qualify == 0)
{
	idletimer += 1;
	if (idletimer >= 60)
		idlefacer += 0.2;
	if (idlefacer >= 5)
	{
		idletimer = 0;
		idlefacer = 0;
	}
	draw_sprite_ext(spr_seam_idle, idlefacer, shopcharx + 160, 34, 2, 2, 0, c_white, 1);
}
talkbuffer -= 1;
draw_set_color(c_black);
draw_rectangle(0, 240, 640, 480, false);
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
		global.msg[0] = stringsetloc("\\E0* Take your time..^1.&* Ain't like it's&better spent.", "obj_shop1_slash_Draw_0_gml_98_0");
		if (mainmessage == 0)
			global.msg[0] = stringsetloc("\\E0* Hee hee..^1.&* Welcome, travellers.", "obj_shop1_slash_Draw_0_gml_99_0");
		instance_create(30, 270, obj_writer);
	}
	menumax = 3;
	draw_set_color(c_white);
	scr_84_set_draw_font("mainbig");
	draw_text(480, 260, string_hash_to_newline(stringsetloc("Buy", "obj_shop1_slash_Draw_0_gml_106_0")));
	draw_text(480, 300, string_hash_to_newline(stringsetloc("Sell", "obj_shop1_slash_Draw_0_gml_107_0")));
	draw_text(480, 340, string_hash_to_newline(stringsetloc("Talk", "obj_shop1_slash_Draw_0_gml_108_0")));
	draw_text(480, 380, string_hash_to_newline(stringsetloc("Exit", "obj_shop1_slash_Draw_0_gml_109_0")));
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
		{
			menu = 10;
			sidemessage = 0;
		}
		if (menuc[0] == 2)
		{
			if (global.chapter == 1)
				menu = 3;
			if (global.chapter >= 2)
				menu = 4;
			sell = 10;
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
		draw_text(300, 260 + (i * 40), string_hash_to_newline(stringsetsubloc("$~1", string(buyvalue[i]), "obj_shop1_slash_Draw_0_gml_143_0")));
	}
	draw_text(60, 260 + (itemtotal * 40), string_hash_to_newline(stringsetloc("Exit", "obj_shop1_slash_Draw_0_gml_139_0")));
	if (menu == 1)
	{
		menumax = 4;
		if (instance_exists(obj_writer) == false)
		{
			if (sidemessage == 0)
				global.msg[0] = stringsetloc("\\E0What do&you like&to buy?", "obj_shop1_slash_Draw_0_gml_148_0");
			if (sidemessage == 1)
				global.msg[0] = stringsetloc("\\E2Thanks for&that.", "obj_shop1_slash_Draw_0_gml_149_0");
			if (sidemessage == 2)
				global.msg[0] = stringsetloc("\\E0What,&not good&enough?", "obj_shop1_slash_Draw_0_gml_150_0");
			if (sidemessage == 3)
				global.msg[0] = stringsetloc("\\E3Not&enough&money.", "obj_shop1_slash_Draw_0_gml_151_0");
			if (sidemessage == 4)
				global.msg[0] = stringsetloc("\\E3You're&carrying&too much.", "obj_shop1_slash_Draw_0_gml_152_0");
			if (sidemessage == 5)
				msgsetloc(0, "\\E2Thanks, it'll&be in your&STORAGE.", "obj_shop1_slash_Draw_0_gml_159_0");
			if (murder == 1)
				global.msg[0] = stringsetloc("/*", "obj_shop1_slash_Draw_0_gml_153_0");
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
		draw_text(460, y2_off, string_hash_to_newline(stringsetsubloc("$~1 ?", string(buyvalue[menuc[1]]), "obj_shop1_slash_Draw_0_gml_177_0")));
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
	draw_text(80, 260, string_hash_to_newline(stringsetloc("About yourself", "obj_shop1_slash_Draw_0_gml_217_0")));
	draw_text(80, 300, string_hash_to_newline(stringsetloc("Lightners", "obj_shop1_slash_Draw_0_gml_218_0")));
	if (global.flag[241] < 6)
	{
		draw_text(80, 340, string_hash_to_newline(stringsetloc("Kingdom", "obj_shop1_slash_Draw_0_gml_220_0")));
	}
	else
	{
		draw_set_color(c_yellow);
		draw_text(80, 340, string_hash_to_newline(stringsetloc("About JEVIL", "obj_shop1_slash_Draw_0_gml_224_0")));
	}
	if (global.flag[241] == 0)
	{
		draw_text(80, 380, string_hash_to_newline(stringsetloc("We're legendary", "obj_shop1_slash_Draw_0_gml_227_0")));
	}
	else
	{
		_legendstring = stringsetloc("Strange Prisoner", "obj_shop1_slash_Draw_0_gml_241_0");
		draw_set_color(c_yellow);
		if (global.flag[115] >= 1)
			draw_set_color(c_white);
		if (global.flag[241] >= 6)
		{
			draw_set_color(c_yellow);
			_legendstring = stringsetloc("We Won", "obj_shop1_slash_Draw_0_gml_244_0");
		}
		draw_text(80, 380, string_hash_to_newline(_legendstring));
	}
	draw_set_color(c_white);
	draw_text(80, 420, string_hash_to_newline(stringsetloc("Exit", "obj_shop1_slash_Draw_0_gml_240_0")));
	if (instance_exists(obj_writer) == false)
	{
		global.msg[0] = stringsetloc("\\E0Don't have&anything&better&to do.", "obj_shop1_slash_Draw_0_gml_255_0");
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
	draw_text(80, 380, string_hash_to_newline(stringsetloc("Sell Pocket Items", "obj_shop1_slash_Draw_0_gml_292_0")));
	draw_text(80, 420, string_hash_to_newline(stringsetloc("Return", "obj_shop1_slash_Draw_0_gml_293_0")));
	if (instance_exists(obj_writer) == false)
	{
		if (sidemessage == 0)
			global.msg[0] = stringsetloc("\\E0What kind&of junk&you got?", "obj_shop1_slash_Draw_0_gml_285_0");
		if (sidemessage == 1)
			global.msg[0] = stringsetloc("\\E0That's it&for that.", "obj_shop1_slash_Draw_0_gml_286_0");
		if (sidemessage == 2)
			global.msg[0] = stringsetloc("\\E3You don't&have&anything!", "obj_shop1_slash_Draw_0_gml_287_0");
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
if (menu == 11 || menu == 12 || menu == 13 || menu == 14)
{
	if (instance_exists(obj_writer) == false)
	{
		if (sidemessage2 == 0 && (menu == 11 || menu == 14))
			global.msg[0] = stringsetloc("\\E0Alright,&give me&an ITEM.", "obj_shop1_slash_Draw_0_gml_347_0");
		if (sidemessage2 == 0 && menu == 12)
			global.msg[0] = stringsetloc("\\E0What WEAPON&will you&give me?", "obj_shop1_slash_Draw_0_gml_348_0");
		if (sidemessage2 == 0 && menu == 13)
			global.msg[0] = stringsetloc("\\E0What ARMOR&will you&give me?", "obj_shop1_slash_Draw_0_gml_349_0");
		if (sidemessage2 == 1)
			global.msg[0] = stringsetloc("\\E2Thanks for&that.", "obj_shop1_slash_Draw_0_gml_350_0");
		if (sidemessage2 == 2)
			global.msg[0] = stringsetloc("\\E0No?", "obj_shop1_slash_Draw_0_gml_351_0");
		if (sidemessage2 == 3)
			global.msg[0] = stringsetloc("\\E3Y'think I&WANT that?", "obj_shop1_slash_Draw_0_gml_352_0");
		if (sidemessage2 == 4)
			global.msg[0] = stringsetloc("\\E0That's&nothing.", "obj_shop1_slash_Draw_0_gml_353_0");
		instance_create(450, 260, obj_writer);
	}
}
scr_shopmenu(4);
if (menu == 15 || menu == 16 || menu == 17 || menu == 18)
{
	menumax = 1;
	draw_set_color(c_white);
	scr_84_set_draw_font("mainbig");
	var y1_off = langopt(260, 290);
	var y2_off = langopt(290, 260);
	draw_text(460, y1_off, string_hash_to_newline(stringsetloc("Sell it for", "obj_shop1_slash_Draw_0_gml_365_0")));
	draw_text(460, y2_off, string_hash_to_newline(stringsetsubloc("$~1 ?", string(sellvalue), "obj_shop1_slash_Draw_0_gml_407_0")));
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
		if (sell == 1)
		{
		}
		if (sell == 2)
			global.msg[0] = stringsetloc("\\E0* See you again..^1.&* Or not^1.&* Ha ha ha ha.../%", "obj_shop1_slash_Draw_0_gml_395_0");
		if (sell == 3)
		{
			global.msg[0] = stringsetloc("\\E0* The name's Seam.&* Pronounced \"Shawm.\"/", "obj_shop1_slash_Draw_0_gml_399_0");
			global.msg[1] = stringsetloc("\\E0* And this is my little Seap^1.&* Ha ha ha ha.../", "obj_shop1_slash_Draw_0_gml_400_0");
			global.msg[2] = stringsetloc("\\E0* Over the years, I've collected odds and ends./", "obj_shop1_slash_Draw_0_gml_401_0");
			global.msg[3] = stringsetloc("* 'Course, I've no attachment to any of it^1.&* It's just a hobby of mine./", "obj_shop1_slash_Draw_0_gml_402_0");
			global.msg[4] = stringsetloc("* Around here, you learn to find ways to pass the time...&* ... or go mad like everyone else./%", "obj_shop1_slash_Draw_0_gml_403_0");
		}
		if (sell == 4)
		{
			global.msg[0] = stringsetloc("\\E1* Long ago, the Darkners lived in harmony with the Lightners./", "obj_shop1_slash_Draw_0_gml_411_0");
			global.msg[1] = stringsetloc("\\E0* They were like Gods to us.&* Our protectors.&* Our creators.&* Those who gave us purpose.../", "obj_shop1_slash_Draw_0_gml_412_0");
			global.msg[2] = stringsetloc("\\E3* Then, one day we were all locked away in this prison..^1.&* And the Lightners never returned./", "obj_shop1_slash_Draw_0_gml_413_0");
			global.msg[3] = stringsetloc("\\E1* Embittered^1, the King took up arms^1, and aims to take revenge upon the Lightners that left us behind./", "obj_shop1_slash_Draw_0_gml_414_0");
			global.msg[4] = stringsetloc("\\E0* 'Course^1, even among his troops^1, some still distantly hope the Lightners will return.../%", "obj_shop1_slash_Draw_0_gml_415_0");
		}
		if (sell == 5)
		{
			global.msg[0] = stringsetloc("\\E0* Historically^1, this land was ruled by the Four Kings^1, from \\cYCARD CASTLE\\cW to the East./", "obj_shop1_slash_Draw_0_gml_421_0");
			global.msg[1] = stringsetloc("\\E1* But, recently, a \\cRstrange knight\\cW appeared..^1.&* And three of the kings were locked away./", "obj_shop1_slash_Draw_0_gml_422_0");
			global.msg[2] = stringsetloc("\\E0* The remaining king put him and his strange son into power./", "obj_shop1_slash_Draw_0_gml_423_0");
			global.msg[3] = stringsetloc("\\E1* This land hasn't seen THIS much chaos since.../", "obj_shop1_slash_Draw_0_gml_424_0");
			global.msg[4] = stringsetloc("\\E2* Ha ha ha..^1.&* Well, you don't need to know about THAT./%", "obj_shop1_slash_Draw_0_gml_425_0");
			if (global.flag[241] >= 6)
			{
				global.msg[0] = stringsetloc("\\E0* He..^1. was a funny little man^1. Once^1, the court jester^1. I^1, the court magician./", "obj_shop1_slash_Draw_0_gml_429_0");
				global.msg[1] = stringsetloc("\\E1* A friend...^1? Could I consider him a friend...^1? Perhaps^1, perhaps not./", "obj_shop1_slash_Draw_0_gml_430_0");
				global.msg[2] = stringsetloc("\\E2* But he was the only one who matched me in the games we used to play./", "obj_shop1_slash_Draw_0_gml_431_0");
				global.msg[3] = stringsetloc("\\E3* One day^1, he met a strange someone..^1. and since then^1, he began to change./", "obj_shop1_slash_Draw_0_gml_432_0");
				global.msg[4] = stringsetloc("\\E1* He started saying bizarre things that didn't completely make sense -/", "obj_shop1_slash_Draw_0_gml_433_0");
				global.msg[5] = stringsetloc("\\E3* But didn't completely not make sense^1, either./", "obj_shop1_slash_Draw_0_gml_434_0");
				global.msg[6] = stringsetloc("* Soon^1, he began to see the world as a game^1, and everyone as its participants./", "obj_shop1_slash_Draw_0_gml_435_0");
				global.msg[7] = stringsetloc("* As the court mage^1, and his only companion^1, I was forced to lock him away.../", "obj_shop1_slash_Draw_0_gml_436_0");
				global.msg[8] = stringsetloc("\\E2* Or^1, rather^1, lock US all away^1, in his own words./", "obj_shop1_slash_Draw_0_gml_437_0");
				global.msg[9] = stringsetloc("\\E1* Since that time^1, the strange words he's said have stuck inside my cotton.../", "obj_shop1_slash_Draw_0_gml_438_0");
				global.msg[10] = stringsetloc("\\E3* And my view of this world has become darker^1, yet darker./", "obj_shop1_slash_Draw_0_gml_439_0");
				global.msg[11] = stringsetloc("\\E2* Reflecting on these old memories^1, I think^1, perhaps ^1- I miss playing games with him./", "obj_shop1_slash_Draw_0_gml_440_0");
				global.msg[12] = stringsetloc("\\E3* And I wonder^1, if I hadn't been asked to lock him up.../", "obj_shop1_slash_Draw_0_gml_441_0");
				global.msg[13] = stringsetloc("\\E2* Would I have found a little more purpose in my life...?/%", "obj_shop1_slash_Draw_0_gml_442_0");
			}
		}
		if (sell == 6)
		{
			global.msg[0] = stringsetloc("\\E2* Ha ha ha ..^1.&* So you are the \"heroes\" who are going to seal our Fountain?/", "obj_shop1_slash_Draw_0_gml_448_0");
			global.msg[1] = stringsetloc("\\E0* Ha, good luck^1.&* It makes no difference to me./", "obj_shop1_slash_Draw_0_gml_449_0");
			global.msg[2] = stringsetloc("\\E3* Neither Light nor Dark hold a future for a Darkner in my condition./%", "obj_shop1_slash_Draw_0_gml_450_0");
			if (global.flag[241] >= 1 && global.flag[115] == 1)
			{
				global.msg[0] = stringsetloc("\\E1* Trouble opening the door...?/", "obj_shop1_slash_Draw_0_gml_459_0");
				global.msg[1] = stringsetloc("\\E0* Ha ha ha^1, well^1, whether you can or not^1, it doesn't matter to me./", "obj_shop1_slash_Draw_0_gml_460_0");
				global.msg[2] = stringsetloc("\\E2* But here's a hint ^1- \\cYwalk where the stars don't shine\\cW./%", "obj_shop1_slash_Draw_0_gml_461_0");
			}
			if (global.flag[241] >= 1 && global.flag[115] == 0)
			{
				global.msg[0] = stringsetloc("\\E3* Eh...^1? What are you talking about...^1? A prisoner with an odd manner...?/", "obj_shop1_slash_Draw_0_gml_472_0");
				global.msg[1] = stringsetloc("\\E1* ... No^1, you couldn't possibly be talking about HIM...?/", "obj_shop1_slash_Draw_0_gml_473_0");
				global.msg[2] = stringsetloc("\\E3* ... I see^1.&* After all the trouble I went through to lock him up^1, you want to release him?/", "obj_shop1_slash_Draw_0_gml_474_0");
				global.msg[3] = stringsetloc("\\E0* .../", "obj_shop1_slash_Draw_0_gml_475_0");
				global.msg[4] = stringsetloc("\\E1* Hmm^1, now that you mention it^1, it could be troublesome if he was left alone.../", "obj_shop1_slash_Draw_0_gml_476_0");
				global.msg[5] = stringsetloc("\\E0* Yes^1, perhaps it's better if you Heroes dealt with him now...?/", "obj_shop1_slash_Draw_0_gml_477_0");
				global.msg[6] = stringsetloc("\\E2* After all^1, it's not as if whatever happens^1, will matter in the end./", "obj_shop1_slash_Draw_0_gml_478_0");
				global.msg[7] = stringsetloc("* Perhaps a little chaos might be fun./", "obj_shop1_slash_Draw_0_gml_479_0");
				global.msg[8] = stringsetloc("\\E0* So then, take this./", "obj_shop1_slash_Draw_0_gml_480_0");
				global.writersnd[0] = snd_item;
				global.msg[9] = stringsetloc("\\S0* (\\cYBROKEN KEY A\\cW was added to your \\cYKEY ITEMS\\cW.)/", "obj_shop1_slash_Draw_0_gml_482_0");
				global.msg[10] = stringsetloc("* If you're so driven^1, find the other \\cYtwo\\cW pieces^1, and get someone to \\cYfix\\cW them./", "obj_shop1_slash_Draw_0_gml_483_0");
				global.msg[11] = stringsetloc("* I'll even give you a hint - \\cYWalk where the stars don't shine\\cW./", "obj_shop1_slash_Draw_0_gml_484_0");
				global.msg[12] = stringsetloc("* Anyhow^1, if you succeed^1, come back here and tell me^1! Good luck!!/", "obj_shop1_slash_Draw_0_gml_485_0");
				global.msg[13] = stringsetloc("* If you can call THIS luck..^1. No^1, it's more like a curse...!/%", "obj_shop1_slash_Draw_0_gml_486_0");
				scr_keyitemget(4);
				global.flag[115] = 1;
			}
			if (global.flag[115] == 1 && global.flag[241] >= 5)
			{
				global.msg[0] = stringsetloc("\\E1* You already opened the door...?/", "obj_shop1_slash_Draw_0_gml_493_0");
				global.msg[1] = stringsetloc("\\E2* Ha ha ha..^1. I almost wish I could watch^1! Tell me what happens!/", "obj_shop1_slash_Draw_0_gml_494_0");
				global.msg[2] = stringsetloc("\\E2* Ha ha ha..^1. though^1, I suppose if you don't come back^1, I'll understand^1, too!/%", "obj_shop1_slash_Draw_0_gml_495_0");
			}
			if (global.flag[115] == 1 && global.flag[241] >= 6)
			{
				global.msg[0] = stringsetloc("\\E1* You defeated him!^1? You REALLY defeated him!?/", "obj_shop1_slash_Draw_0_gml_500_0");
				global.msg[1] = stringsetloc("\\E0* I see..^1. perhaps you three may truly be \"Heroes\" after all.../", "obj_shop1_slash_Draw_0_gml_501_0");
				global.msg[2] = stringsetloc("\\E1* But JEVIL was just a taste of what you'll face from now on./", "obj_shop1_slash_Draw_0_gml_502_0");
				global.msg[3] = stringsetloc("\\E0* One day soon.../", "obj_shop1_slash_Draw_0_gml_503_0");
				global.msg[4] = stringsetloc("\\E1* You too^1, will begin to realize the futility of your actions./", "obj_shop1_slash_Draw_0_gml_504_0");
				global.msg[5] = stringsetloc("\\E2* Ha ha ha.../", "obj_shop1_slash_Draw_0_gml_505_0");
				global.msg[6] = stringsetloc("\\E0* At that time^1, feel free to come back here^1.&* I'll make you tea.../", "obj_shop1_slash_Draw_0_gml_506_0");
				global.msg[7] = stringsetloc("\\E2* And we can toast..^1. to the end of the world!/%", "obj_shop1_slash_Draw_0_gml_507_0");
			}
		}
		if (sell == 10)
		{
			scr_keyitemcheck(13);
			var show_jevil = false;
			if (global.plot < 200)
			{
				if (global.flag[312] == 0)
				{
					global.flag[312] = 1;
					if (global.flag[241] < 6)
					{
						scr_speaker("seam");
						msgsetloc(0, "\\E1* Hmm..^1. So we are now in the Castle Town./", "obj_shop1_slash_Draw_0_gml_567_0");
						msgnextloc("\\E0* Well^1, now. It makes no difference to me./", "obj_shop1_slash_Draw_0_gml_568_0");
						msgnextloc("\\E2* As long as I stay in my shop^1, these walls won't change./", "obj_shop1_slash_Draw_0_gml_569_0");
						msgnextloc("\\E0* ..^1. But./", "obj_shop1_slash_Draw_0_gml_570_0");
						msgnextloc("\\E2* In a way^1, I suppose it's just a little bit amusing to see you again./", "obj_shop1_slash_Draw_0_gml_571_0_b");
						msgnextloc("\\E0* I'm sure you three will have an interesting journey./", "obj_shop1_slash_Draw_0_gml_572_0");
						msgnextloc("\\E1* Me? I'll just be here offering the same old junk./", "obj_shop1_slash_Draw_0_gml_573_0");
						msgnextloc("\\E0* As you find stronger treasure^1, I'm sure you'll have little reason to return here./", "obj_shop1_slash_Draw_0_gml_574_0");
						msgnextloc("\\E2* But if you have some time^1, I'll offer you a biscuit and a hint!/%", "obj_shop1_slash_Draw_0_gml_575_0");
					}
					else if (global.flag[241] >= 6 || global.flag[460] == 1)
					{
						show_jevil = true;
						msgsetloc(0, "\\E1* So we are here now^1, in a new world./", "obj_shop1_slash_Draw_0_gml_582_0");
						msgnextloc("\\E2* And right off the heels of defeating that clown..^1. Incredible./", "obj_shop1_slash_Draw_0_gml_583_0");
					}
				}
				else if (global.flag[241] >= 6 || global.flag[460] == 1)
				{
					if (global.flag[954] == 0)
					{
						show_jevil = true;
						msgsetloc(0, "\\E1* Ah^1, yes^1, that's right^1. It didn't occur to me until just now^1, but.../", "obj_shop1_slash_Draw_0_gml_601_0_b");
						msgnextloc("\\E2* You three defeated that clown last time^1, didn't you^1?/", "obj_shop1_slash_Draw_0_gml_602_0_b");
					}
					else
					{
						scr_speaker("seam");
						msgsetloc(0, "* If you can defeat more strong adversaries^1, you may find more Shadow Crystals./", "obj_shop1_slash_Draw_0_gml_674_0");
						msgnextloc("\\E2* Try your best^1! It may be tough^1, but I'm sure it will be worth it!/%", "obj_shop1_slash_Draw_0_gml_675_0");
					}
				}
				else
				{
					talk_counter++;
					if (global.plot < 15)
					{
						scr_speaker("seam");
						msgsetloc(0, "\\E0* The little prince has something to show you in his castle./", "obj_shop1_slash_Draw_0_gml_640_0");
						msgnextloc("\\E3* Well now^1, are you going to turn down a royal invitation?/%", "obj_shop1_slash_Draw_0_gml_641_0");
					}
					else
					{
						scr_speaker("seam");
						msgsetloc(0, "\\E0* If I were you^1, I would head home to the LIGHT WORLD./", "obj_shop1_slash_Draw_0_gml_645_0");
						msgnextloc("\\E1* Of course^1, I'm not you. So^1, I'm staying right here./", "obj_shop1_slash_Draw_0_gml_646_0");
						msgnextloc("\\E1* By the by^1, I can't offer any advice when you're not here.../", "obj_shop1_slash_Draw_0_gml_647_0");
						msgnextloc("\\E2* So I'm not sure my hints will be much use after all^1! Ha ha!/%", "obj_shop1_slash_Draw_0_gml_648_0");
					}
				}
				if (show_jevil)
				{
					global.flag[954] = 1;
					scr_keyitemremove(13);
					took_crystal = true;
					msgnextloc("\\E1* ..^1. Oh? What's that? It seems like he gave something to you./", "obj_shop1_slash_Draw_0_gml_584_0");
					msgnextloc("\\E0* That's right..^1. You must not have noticed it./", "obj_shop1_slash_Draw_0_gml_585_0");
					msgnextloc("\\E3* That Crystal..^1. It's nearly invisible^1, but you've been holding it this whole time./", "obj_shop1_slash_Draw_0_gml_586_0");
					msgnextloc("\\E0* Here^1, I'll take it off your hands and appraise it./", "obj_shop1_slash_Draw_0_gml_587_0");
					msgnextloc("\\E3* .../", "obj_shop1_slash_Draw_0_gml_588_0");
					msgnextloc("\\E1* Incredible^1! To think he had a Shadow Crystal.../", "obj_shop1_slash_Draw_0_gml_589_0");
					msgnextloc("\\E0* Shadow Crystals^1, so called because you can only see their shadow./", "obj_shop1_slash_Draw_0_gml_590_0");
					msgnextloc("\\E0* .../", "obj_shop1_slash_Draw_0_gml_591_0");
					msgnextloc("\\E3* Call it a premonition^1, but I get the feeling you may find more of these.../", "obj_shop1_slash_Draw_0_gml_592_0");
					msgnextloc("\\E2* ..^1. If you continue to defeat strong adversaries like \\cYhim\\c0^1, that is./", "obj_shop1_slash_Draw_0_gml_593_0");
					msgnextloc("\\E0* If you can gather more Shadow Crystals^1, bring them here!/", "obj_shop1_slash_Draw_0_gml_594_0");
					msgnextloc("\\E2* I'm sure I can stitch together something incredible for you.../%", "obj_shop1_slash_Draw_0_gml_595_0");
				}
			}
			else
			{
				var normal_post_plot = false;
				if (global.flag[309] < 9)
				{
					if (global.flag[954] == 1 && global.flag[961] == 0)
					{
						scr_speaker("seam");
						msgsetloc(0, "\\E1* ..^1. It seems that you didn't get another Shadow Crystal./", "obj_shop1_slash_Draw_0_gml_681_0");
						msgnextloc("\\E0* Hm. I understand. It's no small feat to fight an opponent that has one./", "obj_shop1_slash_Draw_0_gml_682_0");
						msgnextloc("\\E3* .../", "obj_shop1_slash_Draw_0_gml_683_0");
						msgnextloc("\\E1* Well then^1, forget it all./", "obj_shop1_slash_Draw_0_gml_684_0");
						msgnextloc("\\E0* You're a Lightner. Don't take your life^1, well^1, lightly!/%", "obj_shop1_slash_Draw_0_gml_685_0");
						global.flag[961] = 1;
					}
					else if (global.flag[312] == 0)
					{
						global.flag[312] = 1;
						scr_speaker("seam");
						msgsetloc(0, "\\E1* Hmm..^1. So we are now in the Castle Town./", "obj_shop1_slash_Draw_0_gml_567_0");
						msgnextloc("\\E0* Well^1, now. It makes no difference to me./", "obj_shop1_slash_Draw_0_gml_568_0");
						msgnextloc("\\E2* As long as I stay in my shop^1, these walls won't change./", "obj_shop1_slash_Draw_0_gml_569_0");
						msgnextloc("\\E0* ..^1. But./", "obj_shop1_slash_Draw_0_gml_570_0");
						msgnextloc("\\E2* In a way^1, I suppose it's just a little bit amusing to see you again./", "obj_shop1_slash_Draw_0_gml_571_0_b");
						msgnextloc("\\E0* I'm sure you three will have an interesting journey./", "obj_shop1_slash_Draw_0_gml_572_0");
						msgnextloc("\\E1* Me? I'll just be here offering the same old junk./", "obj_shop1_slash_Draw_0_gml_573_0");
						msgnextloc("\\E0* As you find stronger treasure^1, I'm sure you'll have little reason to return here./", "obj_shop1_slash_Draw_0_gml_574_0");
						msgnextloc("\\E2* But if you have some time^1, I'll offer you a biscuit and a hint!/%", "obj_shop1_slash_Draw_0_gml_575_0");
					}
					else
					{
						normal_post_plot = true;
					}
				}
				else if (global.flag[954] == 1)
				{
					if (global.flag[353] == 0)
					{
						global.flag[353] = 1;
						msgsetloc(0, "\\E2* Well^1, what have we here^1! You managed to find another Shadow Crystal.../", "obj_shop1_slash_Draw_0_gml_601_0");
						msgnextloc("\\E1* Oh^1, is that so^1? That salesman had found the crystal in the old machine...?/", "obj_shop1_slash_Draw_0_gml_602_0");
						msgnextloc("\\E0* I wonder..^1. if perhaps^1, long ago^1, that old machine was very important to someone./", "obj_shop1_slash_Draw_0_gml_603_0");
						msgnextloc("\\E3* A certain Lightner^1, perhaps..^1. or maybe it's just a hunch^1. Haha!/", "obj_shop1_slash_Draw_0_gml_604_0");
						msgnextloc("\\E0* At any rate^1, it's truly unfortunate a Darkner decided to steal that power.../", "obj_shop1_slash_Draw_0_gml_605_0");
						msgnextloc("\\E0* Or^1, is it fortunate? Because of that^1, you found a new Crystal./", "obj_shop1_slash_Draw_0_gml_606_0");
						msgnextloc("\\E2* Here^1, let me hold onto that for you. Ha ha ha!/%", "obj_shop1_slash_Draw_0_gml_607_0");
						scr_keyitemremove(13);
						took_crystal = true;
					}
					else if (global.flag[353] == 1)
					{
						global.flag[353] = 2;
						scr_speaker("seam");
						msgsetloc(0, "* You have collected 2 Shadow Crystals./", "obj_shop1_slash_Draw_0_gml_706_0");
						msgnextloc("\\E1* But don't let down your guard. I feel your next opponent may be..^1. hm./", "obj_shop1_slash_Draw_0_gml_707_0");
						msgnextloc("\\E3* In reality^1, it may be impossible to win./", "obj_shop1_slash_Draw_0_gml_708_0");
						msgnextloc("\\E0* ..^1. Unless you use the power of the Shadow Mantle./", "obj_shop1_slash_Draw_0_gml_709_0");
						msgnextloc("\\E0* Here^1, it may look like an old scrap of cloth^1, but.../", "obj_shop1_slash_Draw_0_gml_710_0");
						msgnextloc("\\E1* ..^1. eh?/", "obj_shop1_slash_Draw_0_gml_711_0");
						msgnextloc("\\E3* I can't find it. Did someone..^1. take it...?/", "obj_shop1_slash_Draw_0_gml_712_0");
						msgnextloc("\\E2* Hahaha^1! Well now^1, there goes your one chance of victory!/%", "obj_shop1_slash_Draw_0_gml_713_0");
					}
					else
					{
						scr_speaker("seam");
						msgsetloc(0, "* You have collected 2 Shadow Crystals./", "obj_shop1_slash_Draw_0_gml_717_0");
						msgnextloc("\\E3* Unfortunately^1, without the Shadow Mantle^1, at 2 you may remain./", "obj_shop1_slash_Draw_0_gml_718_0");
						msgnextloc("\\E0* Fate is approaching..^1. and it is not on your side./%", "obj_shop1_slash_Draw_0_gml_719_0");
					}
				}
				else
				{
					var have_jevil = global.flag[460] == 1 || global.flag[241] >= 6;
					var sentence_end = have_jevil ? "/" : "/%";
					if (haveit == 1)
					{
						scr_speaker("seam");
						msgsetloc(0, "\\E1* ..^1. What is that? It appears you have a Shadow Crystal./", "obj_shop1_slash_Draw_0_gml_619_0");
						msgnextloc("\\E3* .../", "obj_shop1_slash_Draw_0_gml_620_0");
						msgnextloc("\\E0* Unfortunately^1, I believe that you are missing one from your previous adventures./", "obj_shop1_slash_Draw_0_gml_621_0");
						msgnextloc("\\E0* .../", "obj_shop1_slash_Draw_0_gml_622_0");
						msgnextloc("\\E3* But^1, are you sure? Are you sure you didn't defeat that clown...?/", "obj_shop1_slash_Draw_0_gml_623_0");
						msgnextloc("\\E0* Perhaps..^1. You just haven't remembered that you had yet./", "obj_shop1_slash_Draw_0_gml_624_0");
						msgnextloc("\\E2* That's right^1, as long as you ever defeated that enemy in the past.../", "obj_shop1_slash_Draw_0_gml_625_0");
						msgnextsubloc("\\E2* Then perhaps^1, even now^1, that Crystal might turn up somewhere close..^1. Perhaps!~1", sentence_end, "obj_shop1_slash_Draw_0_gml_638_0");
					}
					if (have_jevil)
					{
						global.flag[954] = 1;
						global.flag[353] = 1;
						var first_line = stringsetloc("\\E2* Aha^1! Another Shadow Crystal^1! You found it.../", "obj_shop1_slash_Draw_0_gml_639_0");
						if (global.flag[312] > 0)
							msgset(0, first_line);
						else
							msgnext(first_line);
						msgnextloc("\\E0* You can't see it^1, so perhaps you didn't notice.../", "obj_shop1_slash_Draw_0_gml_640_0_b");
						msgnextloc("\\E0* Didn't you defeat him? Didn't you defeat Jevil?/", "obj_shop1_slash_Draw_0_gml_641_0_b");
						msgnextloc("\\E2* Here^1, I'll take that Crystal. Now^1, you have collected 2 of them^1! Huzzah!/%", "obj_shop1_slash_Draw_0_gml_642_0");
					}
					else if (global.flag[312] == 1 && !haveit)
					{
						normal_post_plot = true;
					}
					if (global.flag[312] == 0)
						global.flag[312] = 1;
					if (haveit == 1)
					{
						scr_keyitemremove(13);
						took_crystal = true;
					}
				}
				if (normal_post_plot)
				{
					talk_counter++;
					if (talk_counter == 1)
					{
						scr_speaker("seam");
						msgsetloc(0, "* There are many fresh faces in town^1, I see./", "obj_shop1_slash_Draw_0_gml_654_0");
						msgnextloc("\\E2* It warms this old fluff to see such hope./", "obj_shop1_slash_Draw_0_gml_655_0");
						msgnextloc("\\E3* I was even surprised to see the Queen again./", "obj_shop1_slash_Draw_0_gml_656_0");
						msgnextloc("\\E0* Same as ever..^1. Well^1, aren't we all./%", "obj_shop1_slash_Draw_0_gml_657_0");
					}
					else
					{
						scr_speaker("seam");
						if (scr_get_total_recruits(2) >= 9)
						{
							msgsetloc(0, "* Those young men have made an interesting shop./", "obj_shop1_slash_Draw_0_gml_661_0");
							msgnextloc("\\E3* They're leaving the bagel business^1, so I have the rest of their remaining stock./", "obj_shop1_slash_Draw_0_gml_662_0");
						}
						else
						{
							msgsetloc(0, "* Those three young musical men are thinking about setting up a shop here./", "obj_shop1_slash_Draw_0_gml_674_0_b");
							msgnextloc("\\E2* I'm sure you'd appreciate having an option other than me^1, ha ha./", "obj_shop1_slash_Draw_0_gml_675_0_b");
						}
						msgnextloc("\\E3* ..^1. By the by^1, it's growing late^1, isn't it?/", "obj_shop1_slash_Draw_0_gml_663_0");
						msgnextloc("\\E0* You should hurry home once you finish your business here./", "obj_shop1_slash_Draw_0_gml_664_0");
						msgnextloc("\\E3* You don't want to get caught when the sun goes down.../%", "obj_shop1_slash_Draw_0_gml_665_0");
					}
				}
			}
		}
		instance_create(30, 270, obj_writer);
		selling = 1;
	}
	if (selling == 1 && instance_exists(obj_writer) == false)
	{
		if (took_crystal)
		{
			took_crystal = false;
			snd_play(snd_item);
		}
		if (sell == 2)
		{
			selling = 2;
			event_user(1);
		}
		else
		{
			if (sell == 1 || sell == 7 || sell == 10)
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
	if (menu != 11 && menu != 12 && menu != 13)
	{
		menuc[menu] += 1;
		if (menuc[menu] > menumax)
			menuc[menu] = 0;
	}
}
if (up_p())
{
	if (menu != 11 && menu != 12 && menu != 13)
	{
		menuc[menu] -= 1;
		if (menuc[menu] < 0)
			menuc[menu] = menumax;
	}
}
if (menu < 4 || menu >= 10)
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
				draw_text(520, 430, string_hash_to_newline(stringsetsubloc("Space:~1", roomstring, "obj_shop1_slash_Draw_0_gml_784_0")));
			if (itemcount == 0)
				draw_text(520, 430, string_hash_to_newline(stringsetloc("NO SPACE", "obj_shop1_slash_Draw_0_gml_571_0")));
		}
	}
}
onebuffer -= 1;
twobuffer -= 1;
