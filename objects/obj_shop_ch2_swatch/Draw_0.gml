siner++;
guysiner += 3;
if (guysiner >= 860)
	guysiner -= 860;
shinetimer++;
if (floor(random(15)) == 0)
{
	if (menu != 1)
		anim = instance_create(random_range(100, 540), random(200) + 20, obj_animation);
	else
		anim = instance_create(random_range(100, 390), random(200) + 20, obj_animation);
	anim.sprite_index = spr_shine;
	anim.image_xscale = 3;
	anim.image_yscale = 3;
	anim.image_speed = 0.2;
	anim.depth = depth - 1;
	shinetimer = 0;
}
draw_sprite_ext(spr_shop_cafe_curtains, 1, 0, 0, 2, 2, 0, c_white, 1);
draw_sprite_ext(spr_shop_cafe_guys, 0, -guysiner, -10 + (sin(siner / 60) * 10), 2, 2, 0, c_white, 1);
draw_sprite_ext(spr_shop_cafe_guys, 0, -guysiner + 860, -10 + (sin(siner / 60) * 10), 2, 2, 0, c_white, 1);
draw_sprite_ext(spr_shop_cafe_curtains, 0, 0, 0, 2, 2, 0, c_white, 1);
if (global.fe == 0)
{
	talksiner++;
	if (talksiner >= 16)
		talksiner = 0;
	draw_sprite_ext(spr_shop_cafe_swatch, talksiner / 9, shx, 0, 2, 2, 0, c_white, 1);
}
else
{
	talksiner = 0;
	draw_sprite_ext(spr_shop_cafe_swatch, global.fe - 1, shx, 0, 2, 2, 0, c_white, 1);
}
draw_set_color(c_black);
draw_rectangle(-10, 240, 900, 500, false);
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
		msgsetloc(0, "\\E0* Don't be blue.&* We're here for you.", "obj_shop_ch2_swatch_slash_Draw_0_gml_79_0");
		if (mainmessage == 0)
			msgsetloc(0, "\\E0* Welcome to Color&Cafe.&* Let us warm your day.", "obj_shop_ch2_swatch_slash_Draw_0_gml_81_0");
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
	for (i = 0; i < itemtotal; i += 1)
	{
		draw_text(60, 260 + (i * 40), string_hash_to_newline(shopitemname[i]));
		draw_text(300, 260 + (i * 40), string_hash_to_newline(stringsetsubloc("$~1", string(buyvalue[i]), "obj_shop_ch2_swatch_slash_Draw_0_gml_120_0")));
	}
	draw_text(60, 260 + (itemtotal * 40), string_hash_to_newline(stringsetloc("Exit", "obj_shop1_slash_Draw_0_gml_139_0")));
	if (menu == 1)
	{
		menumax = 4;
		if (instance_exists(obj_writer) == false)
		{
			if (sidemessage == 0)
				msgsetloc(0, "\\E0Our menu&is&specially&prepared.", "obj_shop_ch2_swatch_slash_Draw_0_gml_132_0");
			if (sidemessage == 1)
			{
				_rr = floor(random(10));
				msgsetloc(0, "\\E0Queen&thanks you&for your&patronage.", "obj_shop_ch2_swatch_slash_Draw_0_gml_136_0");
			}
			if (sidemessage == 2)
				msgsetloc(0, "\\E0Take your&time.&We'll be&waiting.", "obj_shop_ch2_swatch_slash_Draw_0_gml_139_0");
			if (sidemessage == 3)
				msgsetloc(0, "\\E0You can't&afford it.&... maybe&next time?", "obj_shop_ch2_swatch_slash_Draw_0_gml_140_0");
			if (sidemessage == 4)
				msgsetloc(0, "\\E0Seems your&bags are&full. Shall&we assist?", "obj_shop_ch2_swatch_slash_Draw_0_gml_141_0");
			if (sidemessage == 5)
				msgsetloc(0, "\\E2Thanks, it'll&be in your&STORAGE.", "obj_shop_ch2_swatch_slash_Draw_0_gml_142_0");
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
		draw_text(460, y2_off, string_hash_to_newline(stringsetsubloc("$~1 ?", string(buyvalue[menuc[1]]), "obj_shop_ch2_swatch_slash_Draw_0_gml_160_0")));
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
	draw_text(80, 300, stringsetloc("Mission Statement", "obj_shop_ch2_swatch_slash_Draw_0_gml_213_0"));
	draw_text(80, 340, stringsetloc("Rouxls Kaard", "obj_shop_ch2_swatch_slash_Draw_0_gml_214_0"));
	if (global.flag[309] >= 5 && global.flag[309] < 9)
	{
		draw_set_color(c_yellow);
		draw_text(80, 380, stringsetloc("Basement", "obj_shop_ch2_swatch_slash_Draw_0_gml_222_0"));
	}
	else if (global.flag[309] == 9)
	{
		draw_set_color(c_yellow);
		draw_text(80, 380, stringsetloc("Basement Robot", "obj_shop_ch2_swatch_slash_Draw_0_gml_227_0"));
	}
	else
	{
		draw_text(80, 380, stringsetloc("Outfit", "obj_shop_ch2_swatch_slash_Draw_0_gml_217_0"));
	}
	draw_set_color(c_white);
	draw_text(80, 420, string_hash_to_newline(stringsetloc("Exit", "obj_shop1_slash_Draw_0_gml_240_0")));
	if (instance_exists(obj_writer) == false)
	{
		global.msg[0] = stringsetloc("Chatting&would be&our&pleasure.", "obj_shop_ch2_swatch_slash_Draw_0_gml_236_0");
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
	draw_text(80, 380, string_hash_to_newline(stringsetloc("Sell Pocket Items", "obj_shop_ch2_swatch_slash_Draw_0_gml_273_0")));
	draw_text(80, 420, string_hash_to_newline(stringsetloc("Return", "obj_shop_ch2_swatch_slash_Draw_0_gml_274_0")));
	if (instance_exists(obj_writer) == false)
	{
		if (sidemessage == 0)
			msgsetloc(0, "Queen...&Makes us&buy trash&for her.", "obj_shop_ch2_swatch_slash_Draw_0_gml_278_0");
		if (sidemessage == 1)
			msgsetloc(0, "That's all.&Need any&help with&your bags?", "obj_shop_ch2_swatch_slash_Draw_0_gml_279_0");
		if (sidemessage == 2)
			msgsetloc(0, "It seems&you don't&have&anything.", "obj_shop_ch2_swatch_slash_Draw_0_gml_280_0");
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
			msgsetloc(0, "An ITEM&to delight&our Queen?", "obj_shop_ch2_swatch_slash_Draw_0_gml_366_0");
		if (sidemessage2 == 0 && menu == 12)
			msgsetloc(0, "A WEAPON&to protect&our Queen?", "obj_shop_ch2_swatch_slash_Draw_0_gml_367_0");
		if (sidemessage2 == 0 && menu == 13)
			msgsetloc(0, "ARMOR&to adorn&our Queen?", "obj_shop_ch2_swatch_slash_Draw_0_gml_368_0");
		if (sidemessage2 == 1)
			msgsetloc(0, "I'm sure&she's going&to enjoy&this.", "obj_shop_ch2_swatch_slash_Draw_0_gml_369_0");
		if (sidemessage2 == 2)
			msgsetloc(0, "Changed&your mind?&We'll&wait.", "obj_shop_ch2_swatch_slash_Draw_0_gml_370_0");
		if (sidemessage2 == 3)
			msgsetloc(0, "There are&some things&we cannot&buy.", "obj_shop_ch2_swatch_slash_Draw_0_gml_371_0");
		if (sidemessage2 == 4)
			msgsetloc(0, "Black is&the color&of&sorrow.", "obj_shop_ch2_swatch_slash_Draw_0_gml_372_0");
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
	draw_text(460, y2_off, string_hash_to_newline(stringsetsubloc("$~1 ?", string(sellvalue), "obj_shop_ch2_swatch_slash_Draw_0_gml_387_0")));
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
			msgsetloc(0, "\\E0* Please come again.&* We'll be waiting for you&with rose-tinted glasses.../%", "obj_shop_ch2_swatch_slash_Draw_0_gml_415_0");
		if (sell == 3)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* Ah^1, forgive me for not introducing myself sooner^1, young masters./", "obj_shop_ch2_swatch_slash_Draw_0_gml_421_0");
			msgnextloc("* I am Swatch^1, Our Lady Grace's head butler./", "obj_shop_ch2_swatch_slash_Draw_0_gml_422_0");
			msgnextloc("* When we are not attending to her needs^1, I and the Queen's other staff^1,/", "obj_shop_ch2_swatch_slash_Draw_0_gml_423_0");
			msgnextloc("* Use this room as our humble yet colorful gift-shop-slash-cafe./", "obj_shop_ch2_swatch_slash_Draw_0_gml_424_0");
			msgnextloc("* Please^1, shop to your heart's content. We are eager to serve your any wish./%", "obj_shop_ch2_swatch_slash_Draw_0_gml_425_0");
		}
		if (sell == 4)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* Does a woman of Our Lady Grace's caliber not deserve -/", "obj_shop_ch2_swatch_slash_Draw_0_gml_431_0");
			msgnextloc("* A coven of powerful men and women to dote upon her every movement?/", "obj_shop_ch2_swatch_slash_Draw_0_gml_432_0");
			msgnextloc("* To have rap anthems written to her kindness --/", "obj_shop_ch2_swatch_slash_Draw_0_gml_433_0");
			msgnextloc("* Which are then bitcrushed beyond recognition to make them more 'computer'?/", "obj_shop_ch2_swatch_slash_Draw_0_gml_434_0");
			msgnextloc("* To have melons^1, smashed^1, with karate chops^1, repeatedly^1, for no apparent reason?/", "obj_shop_ch2_swatch_slash_Draw_0_gml_435_0");
			msgnextloc("* To have barrels^1, thrown^1, from the rafters --/", "obj_shop_ch2_swatch_slash_Draw_0_gml_436_0");
			msgnextloc("* And make us smash them all with karate chops before the timer runs out?/", "obj_shop_ch2_swatch_slash_Draw_0_gml_437_0");
			msgnextloc("* But the barrels^1, are full of melons^1, and we have to smash those too?/", "obj_shop_ch2_swatch_slash_Draw_0_gml_438_0");
			msgnextloc("* Yes. The answer is..^1. yes./%", "obj_shop_ch2_swatch_slash_Draw_0_gml_439_0");
		}
		if (sell == 5)
		{
			if (global.plot < 150)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* Rouxls? I am afraid I am not familiar with a guest of that moniker.../", "obj_shop_ch2_swatch_slash_Draw_0_gml_447_0");
				msgnextloc("* Ah^1, wait. Are you perchance referring to that unbearable -/", "obj_shop_ch2_swatch_slash_Draw_0_gml_448_0");
				msgnextloc("* Err^1, UNIQUE Man who barged in here and demanded to be made \"Butler Supremeth?\"/", "obj_shop_ch2_swatch_slash_Draw_0_gml_449_0");
				msgnextloc("* I am afraid that person..^1. is now banned from this establishment./", "obj_shop_ch2_swatch_slash_Draw_0_gml_450_0");
				msgnextloc("* And may have suffered injuries as a result of his^1, err..^1. rather swift ejection./", "obj_shop_ch2_swatch_slash_Draw_0_gml_451_0");
				msgnextloc("* Please do not mention him again./", "obj_shop_ch2_swatch_slash_Draw_0_gml_452_0");
				msgnextloc("* We are still cleaning up the worms he left on the floor./%", "obj_shop_ch2_swatch_slash_Draw_0_gml_453_0");
			}
			else
			{
				scr_speaker("no_name");
				msgsetloc(0, "* Oh^1, you defeated that simpleton? Wonderful^1, wonderful./", "obj_shop_ch2_swatch_slash_Draw_0_gml_457_0");
				msgnextloc("* After he stole our flower display for one of his \"boo-kettes^1,\"/", "obj_shop_ch2_swatch_slash_Draw_0_gml_458_0");
				msgnextloc("* Tasque Manager told me she saw him in the hallway^1,/", "obj_shop_ch2_swatch_slash_Draw_0_gml_459_0");
				msgnextloc("* Where^1, opening with \"Ah^1, thou muste be 50`% Likelye to be Queene\"^1,/", "obj_shop_ch2_swatch_slash_Draw_0_gml_460_0");
				msgnextloc("* He thrust the vase upon her^1, and asked to be her \"minion for life.\"/", "obj_shop_ch2_swatch_slash_Draw_0_gml_461_0");
				msgnextloc("* ..^1. he was promptly electrocuted to the ground./", "obj_shop_ch2_swatch_slash_Draw_0_gml_462_0");
				msgnextloc("* Well. Enough of the unpleasantries. Would you like a toasted marshmallow?/%", "obj_shop_ch2_swatch_slash_Draw_0_gml_463_0");
			}
		}
		if (sell == 6)
		{
			if (global.flag[309] >= 5 && global.flag[309] < 9)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* What? Basement? There's no basement here./", "obj_shop_ch2_swatch_slash_Draw_0_gml_480_0");
				msgnextloc("* You need to relax. Have a drink^1, and talk softly.../", "obj_shop_ch2_swatch_slash_Draw_0_gml_481_0");
				msgnextloc("* You're bothering the other customers./%", "obj_shop_ch2_swatch_slash_Draw_0_gml_482_0");
			}
			else if (global.flag[309] == 9)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* ..^1. So that's what happened./", "obj_shop_ch2_swatch_slash_Draw_0_gml_487_0");
				msgnextloc("* .../", "obj_shop_ch2_swatch_slash_Draw_0_gml_488_0");
				msgnextloc("* That robot was the embodiment of a Lightner's dream./", "obj_shop_ch2_swatch_slash_Draw_0_gml_489_0");
				msgnextloc("* A dream I helped create..^1. once./", "obj_shop_ch2_swatch_slash_Draw_0_gml_490_0");
				msgnextloc("* Splashing color from the motion of their hand./", "obj_shop_ch2_swatch_slash_Draw_0_gml_491_0");
				msgnextloc("* The Lightner filled it with their own hope^1, giving it an incredible power./", "obj_shop_ch2_swatch_slash_Draw_0_gml_492_0");
				msgnextloc("* ..^1. but^1, in the end^1, nothing ever came of it./", "obj_shop_ch2_swatch_slash_Draw_0_gml_493_0");
				msgnextloc("* And it was left in the basement with the rest of the corrupted data./", "obj_shop_ch2_swatch_slash_Draw_0_gml_494_0");
				msgnextloc("* ..^1. But that crooked salesman^1! Somehow^1, he learned about the robot^1,/", "obj_shop_ch2_swatch_slash_Draw_0_gml_495_0");
				msgnextloc("* And thought he could use its power to fulfill his own twisted dreams./", "obj_shop_ch2_swatch_slash_Draw_0_gml_496_0");
				msgnextloc("* What a pity. To think he was once a valued customer.../%", "obj_shop_ch2_swatch_slash_Draw_0_gml_497_0");
			}
			else
			{
				scr_speaker("no_name");
				msgsetloc(0, "* Ah^1, my outfit. Yes^1, the monochrome look is quite suitable^1, isn't it?/", "obj_shop_ch2_swatch_slash_Draw_0_gml_472_0");
				msgnextloc("* Black suit^1, colored glasses. Many people have failed to imitate this look./", "obj_shop_ch2_swatch_slash_Draw_0_gml_473_0");
				msgnextloc("* Some even going so far as to attempt to impersonate me.../", "obj_shop_ch2_swatch_slash_Draw_0_gml_474_0");
				msgnextloc("* In order to get the..^1. Oh^1, nevermind. Macaron?/%", "obj_shop_ch2_swatch_slash_Draw_0_gml_475_0");
			}
		}
		instance_create(30, 270, obj_writer);
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
				draw_text(520, 430, string_hash_to_newline(stringsetsubloc("Space:~1", roomstring, "obj_shop_ch2_swatch_slash_Draw_0_gml_557_0")));
			if (itemcount == 0)
				draw_text(520, 430, string_hash_to_newline(stringsetloc("NO SPACE", "obj_shop1_slash_Draw_0_gml_571_0")));
		}
	}
}
onebuffer -= 1;
twobuffer -= 1;
