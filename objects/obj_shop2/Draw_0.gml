siner += 1;
draw_sprite_ext(spr_shop_rurusbg, 0, 0, 0, 2, 2, 0, c_white, 1);
draw_sprite_ext(spr_shop_rurussparkle, 0, 148 + (sin(siner / 6) * 4), 52 + (cos(siner / 6) * 4), 2, (sin(siner / 8) * 3) - 1, 0, c_white, (sin(siner / 8) * 2) - 1);
draw_sprite_ext(spr_shop_rurussparkle, 0, 48 + (sin(siner / 6) * 4), 42 + (cos(siner / 6) * 4), 2, (cos(siner / 8) * 3) - 1, 0, c_white, (cos(siner / 8) * 2) - 1);
draw_sprite_ext(spr_shop_rurusface, global.fe, 72, 62, 2, 2, 0, c_white, 1);
draw_sprite_ext(spr_shop_rurushand, siner / 3.73, 200, 56, 2, 2, 0, c_white, 1);
draw_sprite_ext(spr_shop_rurusfoot, siner / 3.73, 340, 150, 2, 2, 0, c_white, 1);
draw_sprite_ext(spr_shop_rurussteam, siner / 20, 422, 168 + (sin(siner / 8) * 2), 2, 2, 0, c_white, 1);
for (i = 0; i < worm_max; i += 1)
{
	worm_image[i] += 0.2;
	if (worm_image[i] >= 3)
		worm_siner[i] += worm_image[i] / 3;
	if (worm_image[i] >= 6)
		worm_image[i] -= 6;
	complexwormx = (sin(worm_siner[i] / 50) * 20) + (sin(worm_siner[i] / 3) * 2);
	complexwormy = cos(worm_siner[i] / 8);
	draw_sprite_ext(spr_shop_rurusworm, worm_image[i], 530 + complexwormx, 204 + complexwormy + worm_y[i], 2, 2, 0, c_white, 1);
}
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
		global.msg[0] = stringsetloc("\\E0* Anything else?", "obj_shop2_slash_Draw_0_gml_70_0");
		if (mainmessage == 0)
		{
			global.msg[0] = stringsetloc("\\E0* Welcome to my&shop^1, you&ungrateful worms.", "obj_shop2_slash_Draw_0_gml_73_0");
			if (friendly == 1)
				global.msg[0] = stringsetloc("\\E0* Welcome^1, welcome^1,&my Heroick Comrades!", "obj_shop2_slash_Draw_0_gml_74_0");
		}
		instance_create(30, 270, obj_writer);
	}
	menumax = 3;
	draw_set_color(c_white);
	scr_84_set_draw_font("mainbig");
	draw_text(480, 260, string_hash_to_newline(stringsetloc("Buy", "obj_shop2_slash_Draw_0_gml_82_0")));
	draw_text(480, 300, string_hash_to_newline(stringsetloc("Sell", "obj_shop2_slash_Draw_0_gml_83_0")));
	draw_text(480, 340, string_hash_to_newline(stringsetloc("Talk", "obj_shop2_slash_Draw_0_gml_84_0")));
	draw_text(480, 380, string_hash_to_newline(stringsetloc("Exit", "obj_shop2_slash_Draw_0_gml_85_0")));
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
		draw_text(300, 260 + (i * 40), string_hash_to_newline(stringsetsubloc("$~1", string(buyvalue[i]), "obj_shop2_slash_Draw_0_gml_113_0")));
	}
	draw_text(60, 260 + (itemtotal * 40), string_hash_to_newline(stringsetloc("Exit", "obj_shop2_slash_Draw_0_gml_115_0")));
	if (menu == 1)
	{
		menumax = 4;
		if (instance_exists(obj_writer) == false)
		{
			if (sidemessage == 0)
				global.msg[0] = stringsetloc("\\E0What&shalt&thou buy?", "obj_shop2_slash_Draw_0_gml_124_0");
			if (sidemessage == 1)
			{
				global.msg[0] = stringsetloc("\\E2Thanks,&worm.", "obj_shop2_slash_Draw_0_gml_125_0");
				if (friendly == 1)
					global.msg[0] = stringsetloc("\\E2Thanks,&hero!", "obj_shop2_slash_Draw_0_gml_126_0");
			}
			if (sidemessage == 2)
				global.msg[0] = stringsetloc("\\E3Perhaps&another&ware?", "obj_shop2_slash_Draw_0_gml_127_0");
			if (sidemessage == 3)
				global.msg[0] = stringsetloc("\\E6Your&funds are&lacking.", "obj_shop2_slash_Draw_0_gml_128_0");
			if (sidemessage == 4)
				global.msg[0] = stringsetloc("\\E3Thou doth&carry&too much!", "obj_shop2_slash_Draw_0_gml_129_0");
			if (murder == 1)
				global.msg[0] = stringsetloc("/*", "obj_shop2_slash_Draw_0_gml_130_0");
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
		draw_text(460, y1_off, string_hash_to_newline(stringsetloc("Buyeth for", "obj_shop2_slash_Draw_0_gml_144_0")));
		draw_text(460, y2_off, string_hash_to_newline(stringsetsubloc("$~1 ?", string(buyvalue[menuc[1]]), "obj_shop2_slash_Draw_0_gml_147_0_b")));
		draw_text(480, 340, string_hash_to_newline(stringsetloc("Yes", "obj_shop2_slash_Draw_0_gml_146_0")));
		draw_text(480, 370, string_hash_to_newline(stringsetloc("No", "obj_shop2_slash_Draw_0_gml_147_0")));
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
					if (itemtype[menuc[1]] == "item")
						scr_itemget(item[menuc[1]]);
					if (itemtype[menuc[1]] == "weapon")
						scr_weaponget(item[menuc[1]]);
					if (itemtype[menuc[1]] == "armor")
						scr_armorget(item[menuc[1]]);
					if (noroom == 0)
					{
						global.gold -= buyvalue[menuc[1]];
						sidemessage = 1;
						snd_play(snd_locker);
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
	draw_text(80, 260, string_hash_to_newline(stringsetloc("About yourself", "obj_shop2_slash_Draw_0_gml_194_0")));
	draw_text(80, 300, string_hash_to_newline(stringsetloc("Why sell to us", "obj_shop2_slash_Draw_0_gml_195_0")));
	draw_text(80, 340, string_hash_to_newline(stringsetloc("The King", "obj_shop2_slash_Draw_0_gml_196_0")));
	draw_text(80, 380, string_hash_to_newline(stringsetloc("The King's Son", "obj_shop2_slash_Draw_0_gml_197_0")));
	draw_text(80, 420, string_hash_to_newline(stringsetloc("Exit", "obj_shop2_slash_Draw_0_gml_198_0")));
	if (instance_exists(obj_writer) == false)
	{
		global.msg[0] = stringsetloc("\\E5Ah^1, what is&thine&Intereste?", "obj_shop2_slash_Draw_0_gml_202_0");
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
	menumax = 3;
	draw_set_color(c_white);
	scr_84_set_draw_font("mainbig");
	draw_text(80, 260, string_hash_to_newline(stringsetloc("Selleth Items", "obj_shop2_slash_Draw_0_gml_236_0")));
	draw_text(80, 300, string_hash_to_newline(stringsetloc("Selleth Weapons", "obj_shop2_slash_Draw_0_gml_237_0")));
	draw_text(80, 340, string_hash_to_newline(stringsetloc("Selleth Armor", "obj_shop2_slash_Draw_0_gml_238_0")));
	draw_text(80, 380, string_hash_to_newline(stringsetloc("Returnst", "obj_shop2_slash_Draw_0_gml_239_0")));
	if (instance_exists(obj_writer) == false)
	{
		if (sidemessage == 0)
			global.msg[0] = stringsetloc("\\E0Showeth&me your&treasure!", "obj_shop2_slash_Draw_0_gml_243_0");
		if (sidemessage == 1)
			global.msg[0] = stringsetloc("\\E2That seems&to be all,&no?", "obj_shop2_slash_Draw_0_gml_244_0");
		if (sidemessage == 2)
			global.msg[0] = stringsetloc("\\E6You have&none!", "obj_shop2_slash_Draw_0_gml_245_0");
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
			scr_iteminfo_all();
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
		if (menuc[10] < menumax)
		{
			if (can == 1)
				menu = menuc[10] + 11;
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
			global.msg[0] = stringsetloc("\\E0What ITEM&shalt thou&proffer?", "obj_shop2_slash_Draw_0_gml_305_0");
		if (sidemessage2 == 0 && menu == 12)
			global.msg[0] = stringsetloc("\\E0What WEAPON&shalt thou&proffer?", "obj_shop2_slash_Draw_0_gml_306_0");
		if (sidemessage2 == 0 && menu == 13)
			global.msg[0] = stringsetloc("\\E0What ARMOR&shalt thou&proffer?", "obj_shop2_slash_Draw_0_gml_307_0");
		if (sidemessage2 == 1)
			global.msg[0] = stringsetloc("\\E5I shall&make use&of this!", "obj_shop2_slash_Draw_0_gml_308_0");
		if (sidemessage2 == 2)
			global.msg[0] = stringsetloc("\\E6What?", "obj_shop2_slash_Draw_0_gml_309_0");
		if (sidemessage2 == 3)
			global.msg[0] = stringsetloc("\\E6Er, NO&thank you.", "obj_shop2_slash_Draw_0_gml_310_0");
		if (sidemessage2 == 4)
			global.msg[0] = stringsetloc("\\E6What?", "obj_shop2_slash_Draw_0_gml_311_0");
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
	draw_text(460, y1_off, string_hash_to_newline(stringsetloc("Sell it for", "obj_shop2_slash_Draw_0_gml_323_0")));
	draw_text(460, y2_off, string_hash_to_newline(stringsetsubloc("$~1 ?", string(sellvalue), "obj_shop2_slash_Draw_0_gml_328_0")));
	draw_text(480, 340, string_hash_to_newline(stringsetloc("Yes", "obj_shop2_slash_Draw_0_gml_325_0")));
	draw_text(480, 370, string_hash_to_newline(stringsetloc("No", "obj_shop2_slash_Draw_0_gml_326_0")));
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
		{
			global.msg[0] = stringsetloc("\\E5* See thou in the Dungeon^1, Worms!/%", "obj_shop2_slash_Draw_0_gml_353_0");
			if (friendly == 1)
				global.msg[0] = stringsetloc("\\E5* Come by any time^1, my good Worms!/%", "obj_shop2_slash_Draw_0_gml_354_0");
		}
		if (sell == 3)
		{
			global.msg[0] = stringsetloc("\\E0* I amst the Duke of Puzzles^1, Rouxls Kaard./", "obj_shop2_slash_Draw_0_gml_358_0");
			global.msg[1] = stringsetloc("\\E4* My hobbies includest calligraphy^1, lawkeeping^1, bugkeeping^1, cages.../", "obj_shop2_slash_Draw_0_gml_359_0");
			global.msg[2] = stringsetloc("\\E1* ... and long walks in the dungeon./", "obj_shop2_slash_Draw_0_gml_360_0");
			global.msg[3] = stringsetloc("\\E5* Artest thou one of my admirers^1, worm?/%", "obj_shop2_slash_Draw_0_gml_361_0");
			if (friendly == 1)
				global.msg[3] = stringsetloc("\\E5* By the way^1, no hard feelingst about earlier^1, right?/%", "obj_shop2_slash_Draw_0_gml_364_0");
		}
		if (sell == 4)
		{
			global.msg[0] = stringsetloc("\\E4* Hahaha!^1! So I might amasseth funds^1, Worms^1! An army of funds.../", "obj_shop2_slash_Draw_0_gml_371_0");
			global.msg[1] = stringsetloc("\\E1* So that I may crushest thou like Fermented Grapes^1, into a most delicious and adult beverage -/", "obj_shop2_slash_Draw_0_gml_372_0");
			global.msg[2] = stringsetloc("\\E6* Vengeance!^1! Ahahaha!!!/", "obj_shop2_slash_Draw_0_gml_373_0");
			global.msg[3] = stringsetloc("\\E5* Oh^1, how I amuse myself!!!/%", "obj_shop2_slash_Draw_0_gml_374_0");
			if (friendly == 1)
			{
				global.msg[0] = stringsetloc("\\E2* Haha^1, why of course I wouldst sell to my compatriarts^1, the Heroes Of Legend!/", "obj_shop2_slash_Draw_0_gml_378_0");
				global.msg[1] = stringsetloc("\\E5* Earlier art but a Test of your Heroick Resolve!/", "obj_shop2_slash_Draw_0_gml_379_0");
				global.msg[2] = stringsetloc("\\E6* Rouxls is ALWAYS on the winning side!^1! Thou can bet on that!!!/%", "obj_shop2_slash_Draw_0_gml_380_0");
			}
		}
		if (sell == 5)
		{
			global.msg[0] = stringsetloc("\\E6* Our Lorde King art a cruel and terrifying Monarcke!/", "obj_shop2_slash_Draw_0_gml_386_0");
			global.msg[1] = stringsetloc("\\E2* However^1, he is also Brilliant^1, for he decidedesteth to appoinst ME^1, as Duke of Puzzles,/", "obj_shop2_slash_Draw_0_gml_387_0");
			global.msg[2] = stringsetloc("\\E6* After pretty mucheth everyone else was firedst or placed inside a cage./", "obj_shop2_slash_Draw_0_gml_388_0");
			global.msg[3] = stringsetloc("\\E4* Truly, a benevolent ruler!/%", "obj_shop2_slash_Draw_0_gml_389_0");
			if (friendly == 1)
			{
				global.msg[0] = stringsetloc("\\E6* Yes, the King^1! A terrible Man^1! An awful Monarcke^1!/", "obj_shop2_slash_Draw_0_gml_392_0");
				global.msg[1] = stringsetloc("\\E2* Never likedeth that Guye^1, really!/", "obj_shop2_slash_Draw_0_gml_393_0");
				global.msg[2] = stringsetloc("\\E3* I just envisionethed^1, perhaps..^1. If I acceptedst this High Ranking Positione.../", "obj_shop2_slash_Draw_0_gml_394_0");
				global.msg[3] = stringsetloc("\\E5* I could assist to overthroweth him from the Inside!/", "obj_shop2_slash_Draw_0_gml_395_0");
				global.msg[4] = stringsetloc("\\E6* ... What!^1? Cannot thou conceiveth of my plan?!?/%", "obj_shop2_slash_Draw_0_gml_396_0");
			}
		}
		if (sell == 6)
		{
			global.msg[0] = stringsetloc("\\E0* His Son^1, on the other hand^1, is more troublesome than a fistful of fleas!/", "obj_shop2_slash_Draw_0_gml_402_0");
			global.msg[1] = stringsetloc("\\E1* He alwayst asks me the Worste Queries,/", "obj_shop2_slash_Draw_0_gml_403_0");
			global.msg[2] = stringsetloc("\\E3* And calleth me his \"Lesser Dad.\"/", "obj_shop2_slash_Draw_0_gml_404_0");
			global.msg[3] = stringsetloc("\\E6* Our relation is NONE^1, you little water-beetle^1! I placate you for your Father's sake!/", "obj_shop2_slash_Draw_0_gml_405_0");
			global.msg[4] = stringsetloc("\\E6* I do not Wisheth to hear your MP3's^1! I would rather listen to the sweet song of Death!/", "obj_shop2_slash_Draw_0_gml_406_0");
			global.msg[5] = stringsetloc("\\E3* .../", "obj_shop2_slash_Draw_0_gml_407_0");
			global.msg[6] = stringsetloc("\\E2* How is he^1, anyhow?/%", "obj_shop2_slash_Draw_0_gml_408_0");
			if (friendly == 1)
			{
				global.msg[0] = stringsetloc("\\E3* Perhaps my wording art a bit Harshe earlier... The King's offspring is a Darling!/", "obj_shop2_slash_Draw_0_gml_413_0");
				global.msg[1] = stringsetloc("\\E6* A strange and irritating darling!/", "obj_shop2_slash_Draw_0_gml_414_0");
				global.msg[2] = stringsetloc("\\E3* When his Father does not cook^1, his Son yells like a baby bird^1, until I feed him worms!/", "obj_shop2_slash_Draw_0_gml_415_0");
				global.msg[3] = stringsetloc("\\E6* Is this what it means to be High Ranking!?/%", "obj_shop2_slash_Draw_0_gml_416_0");
			}
		}
		instance_create(30, 270, obj_writer);
		selling = 1;
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
				scr_itemcheck(0);
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
				draw_text(520, 430, string_hash_to_newline(stringsetsubloc("Space:~1", roomstring, "obj_shop2_slash_Draw_0_gml_482_0")));
			if (itemcount == 0)
				draw_text(520, 430, string_hash_to_newline(stringsetloc("NO SPACE", "obj_shop2_slash_Draw_0_gml_481_0")));
		}
	}
}
onebuffer -= 1;
twobuffer -= 1;
