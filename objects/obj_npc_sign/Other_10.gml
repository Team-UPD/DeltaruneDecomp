global.msc = 0;
global.typer = 5;
if (global.darkzone == 1)
	global.typer = 6;
global.fc = 0;
global.fe = 0;
global.interact = 1;
global.msg[0] = stringsetloc("* You can't read these symbols...&* Or maybe it's the handwriting./%", "obj_npc_sign_slash_Other_10_gml_10_0");
if (scr_debug())
	global.msg[0] = stringset("* [NO TEXT] (obj_npc_sign)/%");
if (room == room_cutscene_tester)
{
	scr_smallface(0, "susie", 6, "left", "bottom", stringsetloc("BottomLeft", "obj_npc_sign_slash_Other_10_gml_15_0"));
	scr_smallface(1, "ralsei", 1, "right", "top", stringsetloc("RightTop", "obj_npc_sign_slash_Other_10_gml_16_0"));
	scr_smallface(2, "noelle", 0, "mid", "mid", stringsetloc("MidMid ", "obj_npc_sign_slash_Other_10_gml_17_0"));
	scr_smallface(3, "susie", 6, "right", "bottommid", stringsetloc("Right BottomMid", "obj_npc_sign_slash_Other_10_gml_18_0"));
	scr_smallface(4, "susie", 6, "rightmid", "bottommid", stringsetloc("rightmid BottomMid", "obj_npc_sign_slash_Other_10_gml_19_0"));
	scr_smallface(5, "susie", 6, "leftmid", "bottommid", stringsetloc("leftmid BottomMid", "obj_npc_sign_slash_Other_10_gml_20_0"));
	msgsetloc(0, "* ENEMY - AT 1 DF 1&* Susceptible to Brainshock.\\f0 ^1 \\f1 ^1 \\f2 ^1 \\f3 /", "obj_npc_sign_slash_Other_10_gml_22_0");
	msgsetloc(1, "\\f0 \\f1 \\f2 \\f3 \\f4 \\f5 /%", "obj_npc_sign_slash_Other_10_gml_23_0");
}
if (room == room_flowershop_2f)
	global.msg[0] = stringsetsubloc("* (It's ~1 flower^1, protected in a container...)/%", colortxt, "obj_npc_sign_slash_Other_10_gml_27_0");
if (room == room_town_north)
{
	if (x > 1440)
	{
		global.msg[0] = stringsetloc("* (It's your dad's truck.)/", "obj_npc_sign_slash_Other_10_gml_32_0");
		global.msg[1] = stringsetloc("* (The floor of the front seat is littered with old papers and country CDs...)/%", "obj_npc_sign_slash_Other_10_gml_33_0");
	}
	if (global.chapter == 2)
	{
		if (x > 1200 && x < 1300)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (Closed!)/%", "obj_npc_sign_slash_Other_10_gml_46_0");
		}
	}
}
if (room == room_beach)
{
	if (global.chapter == 1)
	{
		global.msc = 192;
		scr_text(global.msc);
	}
	if (global.chapter == 2)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (It's a metal picnic table.)/", "obj_npc_sign_slash_Other_10_gml_62_0");
		scr_anyface_next("susie", "K");
		msgnextloc("\\EK* (Damnit^1, my fingers won't fit through the holes.)/%", "obj_npc_sign_slash_Other_10_gml_64_0");
	}
}
if (room == room_town_krisyard)
	global.msg[0] = stringsetloc("* (It's your mom's van.)/%", "obj_npc_sign_slash_Other_10_gml_55_0");
if (room == room_town_south)
{
	if (global.chapter == 2)
	{
		if (sprite_index == spr_alphysd)
		{
			if (scr_litemcheck(10))
			{
				global.msc = 1157;
				scr_text(global.msc);
			}
			else
			{
				global.msc = 1028;
				scr_text(global.msc);
			}
		}
		if (sprite_index == spr_npc_alphys_bike_broken)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (It's a beaten bike.)/", "obj_npc_sign_slash_Other_10_gml_97_0");
			msgnextloc("* (The horn looks like it might give a honk of despair.)/%", "obj_npc_sign_slash_Other_10_gml_98_0");
		}
	}
}
if (room == room_lw_police)
{
	if (sprite_index == spr_npc_prisoner_dog_eye || sprite_index == spr_npc_prisoner_dog_lesser)
	{
		if (read == 0)
		{
			with (obj_npc_sign)
			{
				if (sprite_index == spr_npc_prisoner_dog_eye || sprite_index == spr_npc_prisoner_dog_lesser)
					read = 1;
			}
			msgsetloc(0, "* We're the infamous dog-burgulars^1, The Wet-Nose Bandits./", "obj_npc_sign_slash_Other_10_gml_116_0");
			msgnextloc("* (We were getting ready to sneak into that big house over the holidays...)/", "obj_npc_sign_slash_Other_10_gml_117_0");
			msgnextloc("* When we were attacked from the shadows^1, by something MERCILESS!/", "obj_npc_sign_slash_Other_10_gml_118_0");
			msgnextloc("* (Fearing for our lives^1, we all ran right into Officer Undyne's warm^1, loving arms...)/", "obj_npc_sign_slash_Other_10_gml_119_0");
			msgnextloc("* And she suplexed us all into the snow with our tails hanging in the air./", "obj_npc_sign_slash_Other_10_gml_120_0");
			msgnextloc("* (Now we're in jail^1, but at least we're alive...)/", "obj_npc_sign_slash_Other_10_gml_121_0");
			msgnextloc("* Plus^1, that nice ghost keeps giving us incorporeally low-calorie treats./", "obj_npc_sign_slash_Other_10_gml_122_0");
			msgnextloc("* (Then we all howl holiday songs together. Ooo ooo ooo.)/%", "obj_npc_sign_slash_Other_10_gml_123_0");
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (Make Dog Marriage^1, not Dog Jail!)/%", "obj_npc_sign_slash_Other_10_gml_127_0");
		}
	}
	else if (obj_mainchara.y < 115)
	{
		scr_speaker("undyne");
		msgsetloc(0, "\\E1* HEY!!^1! TALK TO ME FROM THE FRONT!!!/", "obj_npc_sign_slash_Other_10_gml_136_0");
		msgnextloc("\\E2* NO SIDE-TALKING TO YOUR SUPERIORS!!/%", "obj_npc_sign_slash_Other_10_gml_137_0");
	}
	else
	{
		global.msc = 1024;
		scr_text(global.msc);
	}
}
if (room == room_dw_cyber_queen_boxing)
{
	if (global.plot < 35)
	{
		if (instance_exists(obj_ch2_scene10))
		{
			if (global.facing == 2)
			{
				with (obj_ch2_scene10)
					con = 4;
				exit;
			}
			else
			{
				msgsetloc(0, "* (You can't pro game while facing this direction.)/%", "obj_npc_sign_slash_Other_10_gml_159_0");
			}
		}
	}
	else
	{
		global.msg[0] = stringsetloc("* (Looks like this Gamer's Paradise has become a Gamer's Hell.)/%", "obj_npc_sign_slash_Other_10_gml_158_0");
	}
}
if (room == room_dw_castle_rooms_kris)
{
	if (sprite_index == spr_dw_icee_cushion)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (This maybe isn't the best thing in your room.)/%", "obj_npc_sign_slash_Other_10_gml_182_0");
	}
}
if (room == room_dw_castle_rooms_susie)
{
	if (sprite_index == spr_dw_susie_statue)
	{
		if (scr_havechar(2))
		{
			scr_speaker("susie");
			msgsetloc(0, "\\E9* Heheh^1, jealous of my cool statue^1, Kris?/", "obj_npc_sign_slash_Other_10_gml_191_0");
			msgnextloc("\\EK* Huh? What? No^1, it's not me^1, it's just cool!/%", "obj_npc_sign_slash_Other_10_gml_192_0");
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (It's a Susie-like statue.)/%", "obj_npc_sign_slash_Other_10_gml_196_0");
		}
	}
	if (sprite_index == spr_dw_susie_plush)
	{
		if (scr_havechar(2))
		{
			if (read == 0)
			{
				var small_text = stringsetloc("NO TOUCHING MY DOLL WHEN I'M NOT HERE!!", "obj_npc_sign_slash_Other_10_gml_200_0");
				scr_smallface(0, "susie", 17, "middle", "bottom", small_text);
				scr_speaker("susie");
				msgsetloc(0, "* So^1, uh..^1. this was in the gift you gave me./", "obj_npc_sign_slash_Other_10_gml_211_0_b");
				msgnextloc("\\E1* ..^1. the hell did you have this^1, Kris?/", "obj_npc_sign_slash_Other_10_gml_212_0");
				scr_anyface_next("ralsei", 19);
				msgnextloc("\\EJ* Oooh^1, can I make it a little dress?\\f0/%", "obj_npc_sign_slash_Other_10_gml_214_0_b");
			}
			else
			{
				scr_speaker("ralsei");
				msgsetloc(0, "\\E2* Susie^1, if you don't want it^1, Kris would take it!/", "obj_npc_sign_slash_Other_10_gml_218_0");
				scr_anyface_next("susie", 5);
				msgnextloc("\\E5* When did I say I was gonna give it away!?/%", "obj_npc_sign_slash_Other_10_gml_220_0");
			}
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (It's a doll. Visually^1, it resembles Susie.)/%", "obj_npc_sign_slash_Other_10_gml_225_0_b");
		}
	}
}
if (room == room_dw_mansion_darkbulb_1)
{
	if (sprite_index == spr_berdly_walk_right_dw)
	{
		if (read == 0)
		{
			scr_speaker("berdly");
			msgsetloc(0, "\\E1* Ah^1, Kris. Still stumped by this simple - ah - diversion?/", "obj_npc_sign_slash_Other_10_gml_207_0");
			msgnextloc("\\E6* Well^1, put your neurons back in the crayon box^1, Kris./", "obj_npc_sign_slash_Other_10_gml_208_0");
			msgnextloc("\\EE* I can already feel the solution welling up in my brain cavity./", "obj_npc_sign_slash_Other_10_gml_209_0");
			msgnextloc("\\E2* \"Eureka!\"/", "obj_npc_sign_slash_Other_10_gml_210_0");
			msgnextloc("\\E7* Is what I will say. Now go./%", "obj_npc_sign_slash_Other_10_gml_211_0");
		}
		else
		{
			scr_speaker("berdly");
			msgsetloc(0, "\\E5* Ah^1, Kris. Don't distract me while I'm deep in thought./", "obj_npc_sign_slash_Other_10_gml_214_0");
			msgnextloc("\\E1* If only I could Alt+Tab away from you in real life.../%", "obj_npc_sign_slash_Other_10_gml_215_0");
		}
	}
	if (sprite_index == spr_cutscene_18_susie_lancer_carry_walk_left)
	{
		if (read == 0)
		{
			scr_speaker("lancer");
			msgsetloc(0, "\\E0* If only Lesser Dad was here to help!/", "obj_npc_sign_slash_Other_10_gml_224_0");
			msgnextloc("\\E1* He's a regular Puzzle Pagliacci!/", "obj_npc_sign_slash_Other_10_gml_225_0");
			scr_anyface_next("susie", 20);
			msgnextloc("\\EK* Uh^1, you mean like^1, a genius?/", "obj_npc_sign_slash_Other_10_gml_227_0");
			scr_anyface_next("lancer", "6");
			msgnextloc("\\E6* No^1, he's more like a sad clown./%", "obj_npc_sign_slash_Other_10_gml_229_0");
		}
		else
		{
			scr_speaker("susie");
			msgsetloc(0, "\\E1* Hurry up^1, Kris. I don't wanna look at Berdly./%", "obj_npc_sign_slash_Other_10_gml_232_0");
		}
	}
	if (sprite_index == spr_npc_cursor_walk_right)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* This puzzle..^1. I think I got it on the download.../", "obj_npc_sign_slash_Other_10_gml_239_0");
		msgnextloc("* I just need to datamine the answers from the console.../", "obj_npc_sign_slash_Other_10_gml_240_0");
		msgnextloc("* The answer's in the code.../", "obj_npc_sign_slash_Other_10_gml_241_0");
		msgnextloc("* (All he's managed to do is get a child's toy to play a beep version of nursery rhyme music)/%", "obj_npc_sign_slash_Other_10_gml_242_0");
	}
}
if (room == room_dw_mansion_darkbulb_2)
{
	if (sprite_index == spr_berdly_walk_left_dw)
	{
		scr_speaker("berdly");
		msgsetloc(0, "\\EB* Kris^1, leave the controls alone!/", "obj_npc_sign_slash_Other_10_gml_251_0");
		msgnextloc("\\E9* If you get sweat on the controls^1, it's^1,/", "obj_npc_sign_slash_Other_10_gml_252_0");
		msgnextloc("\\EC* It's going to eat up my inputs!/", "obj_npc_sign_slash_Other_10_gml_253_0");
		msgnextloc("\\EB* So just^1, let me solve this!/%", "obj_npc_sign_slash_Other_10_gml_254_0");
	}
	if (sprite_index == spr_cutscene_18_susie_lancer_carry_walk_right)
	{
		if (read == 0)
		{
			scr_speaker("susie");
			msgsetloc(0, "\\E2* What a bird-brain^1, right^1, Lancer?/", "obj_npc_sign_slash_Other_10_gml_262_0");
			scr_anyface_next("lancer", 1);
			msgnextloc("\\E1* Hoho^1! Yeah^1! All of his body parts are bird ones!/", "obj_npc_sign_slash_Other_10_gml_264_0");
			scr_anyface_next("susie", "A");
			msgnextloc("\\EA* Lancer^1, tell Kris our sick scheme./", "obj_npc_sign_slash_Other_10_gml_266_0");
			scr_anyface_next("lancer", 0);
			msgnextloc("\\E0* So..^1. when we make track jackets.../", "obj_npc_sign_slash_Other_10_gml_268_0");
			msgnextloc("\\E3* I'm making his a different color^1! Hoho^1! (cough)/%", "obj_npc_sign_slash_Other_10_gml_269_0");
		}
		else
		{
			scr_smallface(0, "lancer", 1, "middle", "bottom", stringsetloc("I'm as brittle as a biscuit!", "obj_npc_sign_slash_Other_10_gml_271_0"));
			scr_speaker("susie");
			msgsetloc(0, "\\E1* Alright^1, we had our laughs. Hurry up^1, Kris./", "obj_npc_sign_slash_Other_10_gml_274_0");
			msgnextloc("\\E0* Lancer's getting..^1. weak.\\f0/%", "obj_npc_sign_slash_Other_10_gml_275_0");
		}
	}
}
if (room == room_dw_mansion_darkbulb_3)
{
	if (sprite_index == spr_berdly_walk_left_dw)
	{
		if (read == 0)
		{
			scr_speaker("berdly");
			msgsetloc(0, "\\E5* K-Kris..^1. you.../", "obj_npc_sign_slash_Other_10_gml_287_0");
			msgnextloc("\\E5* Kris^1, YOU know how skilled I am at puzzles^1, right!?/", "obj_npc_sign_slash_Other_10_gml_288_0");
			msgnextloc("\\ED* Tell her!^1! TELL HER about the puzzle I solved!/", "obj_npc_sign_slash_Other_10_gml_289_0");
			msgnextloc("\\E7* Th-then..^1. we can..^1. how about we.../", "obj_npc_sign_slash_Other_10_gml_290_0");
			msgnextloc("\\ED* Have her go in the other room^1, and^1, solve it^1, together?/%", "obj_npc_sign_slash_Other_10_gml_291_0");
		}
		else
		{
			scr_speaker("berdly");
			msgsetloc(0, "\\ED* Fine^1! G..^1. Go ahead and listen to SUSIE^1, Kris!/", "obj_npc_sign_slash_Other_10_gml_295_0");
			msgnextloc("\\E7* SUSIE^1! Are you hearing that?^1! Y-you.../", "obj_npc_sign_slash_Other_10_gml_296_0");
			msgnextloc("\\ED* You'll be a laughingstock^1, do you realize that^1, Kris!?/%", "obj_npc_sign_slash_Other_10_gml_297_0");
		}
	}
	if (sprite_index == spr_cutscene_18_susie_lancer_carry_walk_right)
	{
		if (read == 0)
		{
			if (global.lang == "ja")
				scr_smallface(0, "berdly", 10, 412, 76, stringsetloc("I DON'T NEED TO KNOW THAT!", "obj_npc_sign_slash_Other_10_gml_305_0"));
			else
				scr_smallface(0, "berdly", 10, "middle", "bottom", stringsetloc("I DON'T NEED TO KNOW THAT!", "obj_npc_sign_slash_Other_10_gml_305_0"));
			scr_speaker("susie");
			msgsetloc(0, "\\E7* C'mon^1, Kris^1! Just cover up the whole square thing!/", "obj_npc_sign_slash_Other_10_gml_308_0");
			scr_anyface_next("berdly", "D");
			msgnextloc("\\ED* QUIET!^1! No HINTS!^1! This is BIRD to HUMAN!/", "obj_npc_sign_slash_Other_10_gml_310_0");
			msgnextloc("\\EC* That means NO SUSIES^1, AND NO --/", "obj_npc_sign_slash_Other_10_gml_311_0");
			msgnextloc("\\EN* Uhh^1, who is that guy?/", "obj_npc_sign_slash_Other_10_gml_312_0");
			scr_anyface_next("lancer", "3");
			msgnextloc("\\E3* I'm Lancer^1! Pull my tongue and I'll say several phrases!/", "obj_npc_sign_slash_Other_10_gml_314_0");
			msgnextloc("\\E1* Such as \"ow^1,\" \"ouch^1,\" \"aaaah^1,\"\\f0/%", "obj_npc_sign_slash_Other_10_gml_315_0");
		}
		else
		{
			scr_speaker("susie");
			msgsetloc(0, "\\E0* Hurry up. Lancer's getting pale./", "obj_npc_sign_slash_Other_10_gml_318_0");
			scr_anyface_next("lancer", 4);
			msgnextloc("\\E4* (cough) But I like pails!/%", "obj_npc_sign_slash_Other_10_gml_320_0");
		}
	}
}
if (room == room_dw_city_hacker)
{
	if (sprite_index == spr_npc_cursor_walk_right)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* I went to the store^1, and they needed a signature^1, to use a credit card^1,/", "obj_npc_sign_slash_Other_10_gml_330_0");
		msgnextloc("* But^1, when I tried to encrypt my signature^1,/", "obj_npc_sign_slash_Other_10_gml_331_0");
		msgnextloc("* By drawing random squiggles^1,/", "obj_npc_sign_slash_Other_10_gml_332_0");
		msgnextloc("* They didn't like that./%", "obj_npc_sign_slash_Other_10_gml_333_0");
	}
}
if (room == room_dw_city_traffic_2)
{
	if (global.plot < 100)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* Can't even cross the street without getting my ass kicked./", "obj_npc_sign_slash_Other_10_gml_348_0");
		msgnextloc("* I love the city./%", "obj_npc_sign_slash_Other_10_gml_349_0");
	}
	else if (read == 0)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* We are basically supposed to be part of Queen's Army./", "obj_npc_sign_slash_Other_10_gml_355_0");
		msgnextloc("* But^1, until she takes over the world^1, we still have to work./%", "obj_npc_sign_slash_Other_10_gml_356_0");
	}
	else
	{
		scr_speaker("no_name");
		msgsetloc(0, "* Living as a salary man.../", "obj_npc_sign_slash_Other_10_gml_360_0");
		msgnextloc("* Maybe I was assimilated before I got controlled...?/%", "obj_npc_sign_slash_Other_10_gml_361_0");
	}
}
if (room == room_dw_city_traffic_4)
{
	if (sprite_index == spr_queen_car_right)
	{
		scr_speaker("queen");
		msgsetloc(0, "\\E1* Next Up Is My CD Of Vintage Hard Disk Noises/", "obj_npc_sign_slash_Other_10_gml_371_0");
		scr_anyface_next("noelle", "8");
		msgnextloc("\\E8* (Kris^1, please hurry...)/%", "obj_npc_sign_slash_Other_10_gml_373_0");
	}
	if (sprite_index == spr_trafficswitch)
	{
		image_index = 0;
		if (i_ex(obj_ch2_room_city_traffic_jam))
		{
			with (obj_ch2_room_city_traffic_jam)
				dismiss = true;
			exit;
		}
	}
}
if (room == room_dw_city_big_3)
{
	if (sprite_index == spr_mannequin_dress)
	{
		scr_speaker("no_name");
		if (scr_keyitemcheck(11) && global.flag[459] == 0)
		{
			global.msc = 1238;
			scr_text(global.msc);
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (It's a mannequin with a dress on it.)/%", "obj_npc_sign_slash_Other_10_gml_380_0");
		}
	}
}
if (room == room_dw_castle_area_2_transformed)
{
	if (sprite_index == spr_castle_book_pillar)
	{
		global.msc = 1234;
		scr_text(global.msc);
	}
}
if (room == room_dw_mansion_acid_tunnel)
{
	if (global.plot < 150)
	{
		if (visible == 0 && global.plot < 150)
		{
			with (obj_queencar)
				con = 1;
			with (obj_ch2_scene21)
				remove_collider = true;
			instance_destroy();
			exit;
		}
		if (sprite_index == spr_dw_mansion_lever && read == 0)
		{
			snd_play(snd_noise);
			with (obj_ch2_scene21)
				release_swan = true;
			read++;
			exit;
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (The lever is stuck.)/%", "obj_npc_sign_slash_Other_10_gml_444_0_b");
		}
	}
	else if (scr_sideb_get_phase() >= 2)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (The lever is stuck.)/%", "obj_npc_sign_slash_Other_10_gml_452_0");
	}
	else if (read == 0)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (Pulling this lever releases a swan boat.)/", "obj_npc_sign_slash_Other_10_gml_459_0");
		msgnextloc("* (You thought about releasing a ton of swans to clog the river...)/%", "obj_npc_sign_slash_Other_10_gml_460_0");
	}
	else
	{
		scr_speaker("ralsei");
		msgsetloc(0, "\\EH* (Aww^1, are they reminiscing about our ride...?)/%", "obj_npc_sign_slash_Other_10_gml_465_0");
	}
}
if (room == room_dw_mansion_acid_tunnel_puzzle_entrance)
{
	if (global.flag[343] == 1)
	{
		with (obj_queencar)
			con = 1;
		with (obj_ch2_scene21_puzzle_entrance)
			remove_collider = true;
		global.facing = 1;
		instance_destroy();
		exit;
	}
	else if (sprite_index == spr_dw_mansion_hand)
	{
		scr_speaker("ralsei");
		msgsetloc(0, "\\EJ* A giant hand.../", "obj_npc_sign_slash_Other_10_gml_425_0");
		msgnextloc("\\EH* Sure would be nice to be pet by something like that!/%", "obj_npc_sign_slash_Other_10_gml_426_0");
	}
	else
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (Looks like a certain bird is having a ride on the acid river.)/%", "obj_npc_sign_slash_Other_10_gml_430_0");
	}
}
if (room == room_dw_mansion_east_3f)
{
	if (x < 560)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (There's a book here about preventing backtracking.)/%", "obj_npc_sign_slash_Other_10_gml_440_0");
	}
	else
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (There's a book here about secret passageway construction.)/%", "obj_npc_sign_slash_Other_10_gml_444_0");
	}
}
if (room == room_dw_mansion_entrance)
{
	if (sprite_index == spr_rouxls_petrified)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (It's a familiar-looking statue.)/%", "obj_npc_sign_slash_Other_10_gml_491_0");
	}
	if (sprite_index == spr_dw_mansion_bookcase)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (It's a cybernetic bookshelf.)/", "obj_npc_sign_slash_Other_10_gml_453_0");
		msgnextloc("* (There is a book here about shortcuts that open up later.)/%", "obj_npc_sign_slash_Other_10_gml_454_0");
	}
}
if (room == room_torhouse)
{
	if (global.chapter == 2)
	{
		if (sprite_index == spr_susie_walk_up_lw)
		{
			if (read == 0)
			{
				scr_speaker("susie");
				msgsetloc(0, "\\EK* Hey^1, what are those metal people shapes in the cupboard./", "obj_npc_sign_slash_Other_10_gml_467_0");
				msgnextloc("\\EK* ..^1. like^1, uh^1, handcuffs for a little guy's whole body?/", "obj_npc_sign_slash_Other_10_gml_468_0");
				scr_anyface_next("toriel", 4);
				msgnextloc("\\E4* Hahaha^1! Those are for gingerbread^1, Susie./", "obj_npc_sign_slash_Other_10_gml_470_0");
				msgnextloc("\\E0* Gingerbread men..^1. and gingerbread monsters^1, of course./", "obj_npc_sign_slash_Other_10_gml_471_0");
				scr_anyface_next("susie", 10);
				msgnextloc("\\EA* ..^1. Gingerbread monsters^1, huh...? Cool./%", "obj_npc_sign_slash_Other_10_gml_473_0");
			}
			else
			{
				scr_speaker("susie");
				msgsetloc(0, "\\E0* Gingerbread..^1. sounds like something Noelle would like./", "obj_npc_sign_slash_Other_10_gml_477_0");
				scr_anyface_next("toriel", "0");
				msgnextloc("\\E0* Hm? ..^1. Noelle?/", "obj_npc_sign_slash_Other_10_gml_479_0");
				scr_anyface_next("susie", "K");
				msgnextloc("\\EK* Uh^1, nothing./%", "obj_npc_sign_slash_Other_10_gml_481_0");
			}
		}
		if (sprite_index == spr_toriel_ut)
		{
			if (read == 0)
			{
				scr_speaker("toriel");
				msgsetloc(0, "\\E0* Hm^1, hm.../", "obj_npc_sign_slash_Other_10_gml_490_0");
				scr_anyface_next("susie", "0");
				msgnextloc("\\E0* .../", "obj_npc_sign_slash_Other_10_gml_492_0");
				msgnextloc("\\EC* (She's sneaking sugar right out of the bag...)/", "obj_npc_sign_slash_Other_10_gml_493_0");
				scr_anyface_next("toriel", "1");
				msgnextloc("\\E1* Susie?/", "obj_npc_sign_slash_Other_10_gml_495_0");
				scr_anyface_next("susie", 16);
				msgnextloc("\\EG* Wh-what?/", "obj_npc_sign_slash_Other_10_gml_497_0");
				scr_anyface_next("toriel", "4");
				msgnextloc("\\E4* My pie^1, my rules./", "obj_npc_sign_slash_Other_10_gml_499_0");
				scr_anyface_next("susie", "3");
				msgnextloc("\\E3* G-got it./%", "obj_npc_sign_slash_Other_10_gml_501_0");
			}
			else
			{
				scr_speaker("toriel");
				msgsetloc(0, "\\E1* Kris^1, no sneaking ingredients until you wash your hands./", "obj_npc_sign_slash_Other_10_gml_505_0");
				scr_anyface_next("susie", 2);
				msgnextloc("\\E2* (Don't worry^1, Kris. I'll sneak stuff instead.)/%", "obj_npc_sign_slash_Other_10_gml_507_0");
			}
		}
	}
}
if (room == room_dw_mansion_east_4f_d)
{
	if (sprite_index == spr_berdly_hurt_kneel_burnt || sprite_index == spr_berdly_hurt_kneel)
	{
		var have_susie = false;
		with (obj_caterpillarchara)
		{
			if (name == "susie" && follow == 1)
				have_susie = true;
		}
		if (!have_susie)
		{
			if (read == 0)
			{
				scr_speaker("berdly");
				msgsetloc(0, "\\EI* Kris^1, your deep concern for me..^1. is dextrose./", "obj_npc_sign_slash_Other_10_gml_531_0");
				msgnextloc("\\E4* But stay sanguine^1, my fellow bluebird./", "obj_npc_sign_slash_Other_10_gml_532_0");
				msgnextloc("\\EI* I'll find some way to help you yet!/%", "obj_npc_sign_slash_Other_10_gml_533_0");
			}
			else
			{
				scr_speaker("berdly");
				msgsetloc(0, "\\EI* Kris..^1. such insistence. Sorry but^1, I must turn you down./", "obj_npc_sign_slash_Other_10_gml_537_0");
				msgnextloc("\\EF* I've chosen Susan's route^1, in the VN of life.../%", "obj_npc_sign_slash_Other_10_gml_538_0");
			}
		}
		else if (read == 0)
		{
			scr_speaker("berdly");
			msgsetloc(0, "\\EF* Ahh^1, Susan. Returned to feast upon my sprightly visage?/", "obj_npc_sign_slash_Other_10_gml_545_0");
			scr_anyface_next("susie", "4");
			msgnextloc("\\E4* What^1? You look awful./", "obj_npc_sign_slash_Other_10_gml_547_0");
			scr_anyface_next("berdly", 21);
			msgnextloc("\\EL* (Ah^1, such dere..^1. is tsun^1, to my ears.)/%", "obj_npc_sign_slash_Other_10_gml_549_0");
		}
		else
		{
			scr_speaker("susie");
			msgsetloc(0, "\\E4* What the hell are you saying?/", "obj_npc_sign_slash_Other_10_gml_553_0");
			scr_anyface_next("berdly", 15);
			msgnextloc("\\EF* (How about a kiss^1, for luck?)/", "obj_npc_sign_slash_Other_10_gml_555_0");
			scr_anyface_next("susie", "5");
			msgnextloc("\\E5* Stop mumbling!/", "obj_npc_sign_slash_Other_10_gml_557_0");
			scr_anyface_next("berdly", "F");
			msgnextloc("\\EF* (A kiss for me^1, to change RNG?)/%", "obj_npc_sign_slash_Other_10_gml_559_0");
		}
	}
}
if (room == room_dw_city_moss)
{
	if (sprite_index == spr_cutscene_14_dumpster_closed)
	{
		if (scr_sideb_get_phase() == 0 || !scr_havechar(4))
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (It's a dumpster..^1. seems like there's a pillow inside.)/%", "obj_npc_sign_slash_Other_10_gml_573_0");
		}
		else
		{
			var haveRing = scr_weaponcheck_inventory(13) || global.charweapon[4] == 13;
			if (scr_havechar(4) && haveRing)
			{
				scr_speaker("spamton");
				msgsetloc(0, "* DON'T WORRY^1! FOR OUR [No Money Back Guaranttee]/", "obj_npc_sign_slash_Other_10_gml_580_0");
				msgnextloc("* THIS IS [One Purchase] YOU WILL [Regret] FOR THE REST OF YOUR LIFE!/%", "obj_npc_sign_slash_Other_10_gml_581_0");
			}
			else
			{
				var strong_check = scr_sideb_remainingencounters();
				if (strong_check == 0)
				{
					global.msc = 1169;
					scr_text(global.msc);
				}
				else if (read == 0)
				{
					scr_speaker("spamton");
					msgsetloc(0, "* LOOKING FOR [Irresistable Deals] THAT WILL [Blow Your Mind!?]/", "obj_npc_sign_slash_Other_10_gml_594_0");
					msgnextloc("* WELL [Shut Your Mouth] BECAUSE YOU ARE [A Weakling!]/", "obj_npc_sign_slash_Other_10_gml_595_0");
					msgnextloc("* TRY A LITTLE [Friday Night Work Out].../", "obj_npc_sign_slash_Other_10_gml_596_0");
					msgnextloc("* THEN I'LL SHOW YOU MY/", "obj_npc_sign_slash_Other_10_gml_597_0");
					msgnextloc("* THEN I'LL SHOW YOU MY/", "obj_npc_sign_slash_Other_10_gml_598_0");
					msgnextsubloc("* ~1 LEFT./%", string(strong_check), "obj_npc_sign_slash_Other_10_gml_642_0_b");
				}
				else
				{
					scr_speaker("spamton");
					msgsetloc(0, "* GET STRONGER!/", "obj_npc_sign_slash_Other_10_gml_602_0");
					msgnextloc("* THEN I'LL SHOW YOU MY/", "obj_npc_sign_slash_Other_10_gml_603_0");
					msgnextloc("* THEN I'LL SHOW YOU MY/", "obj_npc_sign_slash_Other_10_gml_604_0");
					msgnextsubloc("* ~1 LEFT./%", string(strong_check), "obj_npc_sign_slash_Other_10_gml_649_0");
				}
			}
		}
	}
}
if (room == room_dw_city_berdly)
{
	if (sprite_index == spr_berdly_ice)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (It's hard to see into the ice.)/%", "obj_npc_sign_slash_Other_10_gml_617_0");
	}
}
if (room == room_dw_city_queen_drunk)
{
	if (x < 200)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (You became lost in the craftsmanship.)/", "obj_npc_sign_slash_Other_10_gml_626_0");
		msgnextloc("* (Of the boxes.)/%", "obj_npc_sign_slash_Other_10_gml_627_0");
		if (scr_havechar(2))
		{
			scr_speaker("susie");
			msgsetloc(0, "\\E2* Hell yeah^1, boxes. This is what it's about./%", "obj_npc_sign_slash_Other_10_gml_698_0");
			if (read >= 1)
			{
				scr_speaker("susie");
				msgsetloc(0, "\\EQ* Kris^1, you were living it up without us^1, huh.../%", "obj_npc_sign_slash_Other_10_gml_702_0");
			}
		}
	}
	else if (!scr_havechar(4) || global.plot < 75)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (You became lost in the craftsmanship.)/%", "obj_npc_sign_slash_Other_10_gml_633_0");
	}
	else
	{
		global.flag[347]++;
		if (global.flag[347] == 1)
		{
			scr_speaker("noelle");
			msgsetloc(0, "\\E4* What is this!? Fahahahaha.../", "obj_npc_sign_slash_Other_10_gml_641_0");
			msgnextloc("\\E0* ..^1. phew!/", "obj_npc_sign_slash_Other_10_gml_642_0");
			msgnextloc("\\E3* .../", "obj_npc_sign_slash_Other_10_gml_643_0");
			msgnextloc("\\E2* .../", "obj_npc_sign_slash_Other_10_gml_644_0");
			msgnextloc("\\E8* (Kris^1, can you stop looking at this?)/%", "obj_npc_sign_slash_Other_10_gml_645_0");
		}
		if (global.flag[347] == 2)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (You became lost in the craftsmanship.)/", "obj_npc_sign_slash_Other_10_gml_651_0");
			scr_anyface_next("noelle", "8");
			msgnextloc("\\E8* (Why do we have to look at it twice?)/%", "obj_npc_sign_slash_Other_10_gml_653_0");
		}
		if (global.flag[347] == 3)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (There's so much to look at here.)/", "obj_npc_sign_slash_Other_10_gml_659_0");
			scr_anyface_next("noelle", "8");
			msgnextloc("\\E8* (Kris!?)/%", "obj_npc_sign_slash_Other_10_gml_661_0");
		}
		if (global.flag[347] == 4)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (It's a work of art.)/", "obj_npc_sign_slash_Other_10_gml_667_0");
			scr_anyface_next("noelle", "8");
			msgnextloc("\\E8* (What part are you looking at?)/%", "obj_npc_sign_slash_Other_10_gml_669_0");
		}
		if (global.flag[347] == 5)
		{
			scr_speaker("noelle");
			msgsetloc(0, "\\E2* If I say I like it^1, will you stop looking at it?/%", "obj_npc_sign_slash_Other_10_gml_675_0");
		}
		if (global.flag[347] == 6)
		{
			scr_speaker("noelle");
			msgsetloc(0, "\\E4* Hey^1, isn't this thing just the best...?/%", "obj_npc_sign_slash_Other_10_gml_681_0");
		}
		if (global.flag[347] == 7)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (This statue seems to suck bad.)/", "obj_npc_sign_slash_Other_10_gml_687_0");
			scr_anyface_next("noelle", "8");
			msgnextloc("\\E8* KRIS!!!!!!/%", "obj_npc_sign_slash_Other_10_gml_689_0");
		}
		if (global.flag[347] >= 8)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (There is no reason to look at this.)/%", "obj_npc_sign_slash_Other_10_gml_695_0");
		}
	}
}
if (room == room_dw_city_spamton_alley)
{
	scr_speaker("no_name");
	msgsetloc(0, "* (It's a dumpster. Looks like there's a pillow inside.)/%", "obj_npc_sign_slash_Other_10_gml_706_0");
}
if (room == room_dw_city_mice)
{
	if (extflag == "roulsBlock")
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (An invasive species of puzzle has taken over the room.)/%", "obj_npc_sign_slash_Other_10_gml_714_0");
	}
}
if (room == room_dw_city_mice2)
{
	if (extflag == "block")
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (An invasive species of puzzle has taken over the room.)/%", "obj_npc_sign_slash_Other_10_gml_723_0");
	}
	if (extflag == "toilet")
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (For some strange reason^1, a giant toilet-shaped toilet is blocking the way.)/%", "obj_npc_sign_slash_Other_10_gml_821_0_b");
		with (obj_event_manager)
			trigger_event((0 << 0), (25 << 0));
	}
}
if (room == room_dw_cyber_maze_fireworks)
{
	if (global.flag[357] == 0)
	{
		var total_checkmarks = global.flag[367] + global.flag[407] + global.flag[420];
		if (total_checkmarks < 3)
		{
			if (global.flag[359] == 0)
			{
				global.flag[359] = 1;
				scr_speaker("no_name");
				msgsetloc(0, "* I'm the Hacker. I'm going after the blue checksmarks./", "obj_npc_sign_slash_Other_10_gml_762_0");
				msgnextloc("* Find 3 in the Cyber Field ahead^1, and I'll join your [City]./", "obj_npc_sign_slash_Other_10_gml_763_0");
				msgnextloc("* You just look like the kind of folks who have a [Cool City]./%", "obj_npc_sign_slash_Other_10_gml_764_0");
			}
			else
			{
				scr_speaker("no_name");
				msgsetsubloc(0, "* According to cyber^1, you found ~1 blue checksmarks out of 3./", total_checkmarks, "obj_npc_sign_slash_Other_10_gml_770_0");
				if (total_checkmarks == 0)
					msgnextloc("* 0^1, not bad for a beginner. Your \"Checks Quest\" is only beginning./%", "obj_npc_sign_slash_Other_10_gml_772_0");
				if (total_checkmarks == 1)
					msgnextloc("* 1^1, the biggest prime number. Your \"Checks Quest\" is just started./%", "obj_npc_sign_slash_Other_10_gml_773_0");
				if (total_checkmarks == 2)
					msgnextloc("* 2. Not bad for amateurs but you need to learn what the number \"3\" is./%", "obj_npc_sign_slash_Other_10_gml_774_0");
			}
		}
		else
		{
			var met_hacker = global.flag[359] > 0;
			if (global.flag[359] < 2)
			{
				global.flag[359] = 2;
				if (global.flag[357] == 0)
					global.flag[357] = 1;
				if (i_ex(obj_ch2_room_cyber_maze_fireworks))
				{
					with (obj_ch2_room_cyber_maze_fireworks)
						fireworks_con = 1;
				}
				scr_speaker("no_name");
				if (!met_hacker)
					msgsetloc(0, "* Wow^1, I'm the Hacker and you found all 3 checkmarks!/", "obj_npc_sign_slash_Other_10_gml_864_0");
				else
					msgsetloc(0, "* You found 3 checkmarks?^1! Elite..^1. I will now live in your city./", "obj_npc_sign_slash_Other_10_gml_783_0");
				msgnextloc("* Maybe our cyber paths will cyber cross once more in Queen's Mansion./", "obj_npc_sign_slash_Other_10_gml_784_0");
				msgnextloc("* In the meantime^1, let me show you the power of the blue checkmarks.../%", "obj_npc_sign_slash_Other_10_gml_785_0");
			}
		}
	}
	else
	{
		scr_speaker("no_name");
		msgsetloc(0, "* I just wanted to make a cool demoscene for you./", "obj_npc_sign_slash_Other_10_gml_789_0");
		msgnextloc("* Now that I finished this I can show up all sorts of places./%", "obj_npc_sign_slash_Other_10_gml_790_0");
	}
}
if (room == room_dw_mansion_hands)
{
	if (global.flag[343] == 0)
	{
		global.flag[343] = 1;
		global.plot = 140;
		snd_play(snd_impact);
		with (obj_controller_mansion_hands)
			con = 1;
		skip = 1;
		image_index = 2;
	}
	else
	{
		skip = 0;
		scr_speaker("no_name");
		msgsetloc(0, "* (Pulling the lever back would undo the high-five.)/", "obj_npc_sign_slash_Other_10_gml_813_0");
		msgnextloc("* (You can't undo a high-five.)/%", "obj_npc_sign_slash_Other_10_gml_814_0");
	}
}
if (room == room_dw_city_mice3)
{
	scr_speaker("no_name");
	msgsetloc(0, "* (It's deteriorated from overuse.)/%", "obj_npc_sign_slash_Other_10_gml_821_0");
}
if (room == room_dw_city_mice3)
{
	scr_speaker("no_name");
	msgsetloc(0, "* (The room has been razed by an invasive species of puzzle.)/%", "obj_npc_sign_slash_Other_10_gml_827_0");
}
if (room == room_dw_mansion_mouseLottery)
{
	scr_speaker("no_name");
	msgsetloc(0, "* (Dear guests^1, please note our mice WILL turn at every crossing.)/", "obj_npc_sign_slash_Other_10_gml_833_0");
	msgnextloc("* (Our vermin have been specially hand-picked for higher turning^1. Enjoy.)/%", "obj_npc_sign_slash_Other_10_gml_834_0");
}
if (room == room_dw_mansion_krisroom)
{
	if (sprite_index == spr_dw_mansion_room_kris_talk_tube)
	{
		if (read == 0)
		{
			global.msc = 1185;
			scr_text(global.msc);
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (You considered dropping bath bombs inside^1, but there's no time.)/%", "obj_npc_sign_slash_Other_10_gml_849_0");
		}
	}
}
if (room == room_dw_mansion_lightner_hallway)
{
	if (read == 0)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (Seems like the room is overflowing with shovels.)/", "obj_npc_sign_slash_Other_10_gml_858_0");
		msgnextloc("* (And^1, you don't have anything to dig through them with...)/%", "obj_npc_sign_slash_Other_10_gml_859_0");
	}
	else
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (There's no way to dig out of this mess.)/%", "obj_npc_sign_slash_Other_10_gml_863_0");
	}
}
if (room == room_dw_ralsei_castle_2f)
{
	if (sprite_index == spr_lancer_dark_relax)
	{
		if (read == 0)
		{
			scr_smallface(0, "ralsei", 22, "right", "bottom", stringsetloc("You mean a mom?", "obj_npc_sign_slash_Other_10_gml_873_0"));
			scr_speaker("lancer");
			msgsetloc(0, "\\E1* Susie^1, Kris^1! Toothpaste boy!/", "obj_npc_sign_slash_Other_10_gml_876_0");
			msgnextloc("\\E2* Queen is teaching me all sorts of things about being a bad guy./", "obj_npc_sign_slash_Other_10_gml_877_0");
			msgnextloc("\\E1* She's like..^1. How do I put this.../", "obj_npc_sign_slash_Other_10_gml_878_0");
			msgnextloc("\\E2* A third father to me./", "obj_npc_sign_slash_Other_10_gml_879_0");
			msgnextloc("\\E3* A girldad^1, if you will...\\f0/%", "obj_npc_sign_slash_Other_10_gml_880_0");
		}
		else
		{
			scr_smallface(0, "queen", 12, 380, "bottom", stringsetloc("Peachboy Peachboy", "obj_npc_sign_slash_Other_10_gml_883_0"));
			scr_speaker("lancer");
			msgsetloc(0, "\\E1* Go outside and play^1, Peachboy!\\f0/%", "obj_npc_sign_slash_Other_10_gml_886_0");
		}
	}
	else
	{
		if (global.flag[388] == 1 || scr_get_total_recruits(2) == 0)
		{
			if (read == 0)
			{
				scr_speaker("queen");
				msgsetloc(0, "\\E1* Ralsei Will Soon Setup.EXE My Room For Me Upstairs/", "obj_npc_sign_slash_Other_10_gml_895_0");
				msgnextloc("\\ED* Do Not Worry/", "obj_npc_sign_slash_Other_10_gml_896_0");
				msgnextloc("\\EP* I Have A Long Spreadsheet Of Demands Ready Ha Ha/", "obj_npc_sign_slash_Other_10_gml_897_0");
				msgnextloc("\\E1* Though^1, Even If I Have An Awesome Room/", "obj_npc_sign_slash_Other_10_gml_898_0");
				msgnextloc("\\E5* Who Will Be There To Force To Enjoy It/", "obj_npc_sign_slash_Other_10_gml_899_0");
				msgnextloc("\\E5* .../", "obj_npc_sign_slash_Other_10_gml_900_0");
				msgnextloc("\\EA* ..^1. I Wonder How Noelle Is Doing Now/%", "obj_npc_sign_slash_Other_10_gml_901_0");
			}
			else
			{
				scr_speaker("queen");
				msgsetloc(0, "\\EA* ..^1. I Wonder How Noelle Is Doing Now/%", "obj_npc_sign_slash_Other_10_gml_905_0");
			}
		}
		if (scr_get_total_recruits(2) >= 9)
		{
			if (read == 0)
			{
				scr_smallface(0, "lancer", 1, 375, "bottom", stringsetloc("Peachboy! Peachboy!", "obj_npc_sign_slash_Other_10_gml_913_0"));
				scr_speaker("queen");
				msgsetloc(0, "\\E1* Welcome This Entire Castle Is Now My Room/", "obj_npc_sign_slash_Other_10_gml_916_0");
				scr_anyface_next("ralsei", 26);
				msgnextloc("\\EQ* U-umm^1, I was going to set up something upstairs./", "obj_npc_sign_slash_Other_10_gml_918_0");
				scr_anyface_next("queen", 1);
				msgnextloc("\\E1* Why I Already Have Everything I Could Ever Want/", "obj_npc_sign_slash_Other_10_gml_920_0");
				msgnextloc("\\E9* Friendship^1, Fans^1, And A Small Round Boy/", "obj_npc_sign_slash_Other_10_gml_921_0");
				msgnextloc("\\ED* Now Go And Play With Your Friends^1, Peachboy\\f0/%", "obj_npc_sign_slash_Other_10_gml_922_0");
			}
			else
			{
				scr_speaker("queen");
				msgsetloc(0, "\\E1* Kris^1, Do Give Noelle My Regards/", "obj_npc_sign_slash_Other_10_gml_926_0");
				msgnextloc("\\ED* Any Leftover Regards You Can Give To Berdly/%", "obj_npc_sign_slash_Other_10_gml_927_0");
			}
		}
	}
}
if (room == room_dw_mansion_east_4f_b)
{
	if (x > 800)
	{
		if (i_ex(obj_ch2_room_mansion_east_4f_b))
		{
			with (obj_ch2_room_mansion_east_4f_b)
				book_con = 1;
			exit;
		}
	}
}
if (room == room_dw_mansion_noelle_room)
{
	if (sprite_index == spr_dw_susie_statue)
	{
		global.flag[393] = 1;
		scr_speaker("susie");
		msgsetloc(0, "\\E7* Woah^1, this statue rocks!/", "obj_npc_sign_slash_Other_10_gml_952_0");
		msgnextloc("\\E2* Hey^1, Ralsei^1, can we take this for my room?/", "obj_npc_sign_slash_Other_10_gml_953_0");
		scr_anyface_next("ralsei", "K");
		msgnextloc("\\EK* Huh? Umm..^1. th-that would be stealing.../", "obj_npc_sign_slash_Other_10_gml_955_0");
		scr_anyface_next("no_name", 0);
		msgnextloc("* (You stole the Susie-like Statue...)/%", "obj_npc_sign_slash_Other_10_gml_957_0");
		if (i_ex(obj_ch2_scene23b))
		{
			with (obj_ch2_scene23b)
				steal_susie = true;
		}
	}
	if (sprite_index == spr_dw_icee_cushion)
	{
		global.flag[394] = 1;
		scr_speaker("no_name");
		msgsetloc(0, "* (From the search 'is ice e real cryptid')/", "obj_npc_sign_slash_Other_10_gml_970_0");
		msgnextloc("* (It's a cross between ICE-E and something else...)/", "obj_npc_sign_slash_Other_10_gml_971_0");
		scr_anyface_next("susie", 2);
		msgnextloc("\\E2* Hey Kris^1, take this for your room./", "obj_npc_sign_slash_Other_10_gml_973_0");
		scr_anyface_next("ralsei", "K");
		msgnextloc("\\EK* Umm^1, that would be stealing.../", "obj_npc_sign_slash_Other_10_gml_975_0");
		scr_anyface_next("no_name", 0);
		msgnextloc("* (You stole the ICE-E statue for some reason.)/%", "obj_npc_sign_slash_Other_10_gml_977_0");
		if (i_ex(obj_ch2_scene23b))
		{
			with (obj_ch2_scene23b)
				steal_icee = true;
		}
	}
}
if (room == room_dw_mansion_east_2f_transformed_new)
{
	if (global.flag[382] == 0)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (Room has been closed due to kitchen vermin.)/%", "obj_npc_sign_slash_Other_10_gml_991_0");
	}
	else
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (Room has been closed due to haters.)/%", "obj_npc_sign_slash_Other_10_gml_996_0");
	}
	if (sprite_index == spr_mansiondoor && scr_sideb_get_phase() > 2)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (Closed.)/%", "obj_npc_sign_slash_Other_10_gml_1090_0");
	}
}
if (room == room_lw_computer_lab)
{
	scr_speaker("no_name");
	msgsetloc(0, "* (He doesn't seem to be awake.)/%", "obj_npc_sign_slash_Other_10_gml_1046_0");
}
if (room == room_dw_cyber_teacup_final)
{
	scr_speaker("no_name");
	msgsetloc(0, "* Sorry^1, the roller coaster is under construction./", "obj_npc_sign_slash_Other_10_gml_1103_0");
	msgnextloc("* Apparently^1, someone tried to use it anyway.../%", "obj_npc_sign_slash_Other_10_gml_1104_0");
}
if (room == room_dw_cyber_keyboard_puzzle_1)
{
	if (x < 60)
	{
		scr_speaker("ralsei");
		msgsetloc(0, "\\E2* Oh^1, Kris^1! It's a spelling challenge..^1. isn't that N-I-C-E?/", "obj_npc_sign_slash_Other_10_gml_1112_0");
		scr_anyface_next("susie", 2);
		msgnextloc("\\E2* Nah^1, more like they're F- \\f1 /%", "obj_npc_sign_slash_Other_10_gml_1114_0");
		var small_text_a = stringsetloc("U-N!", "obj_npc_sign_slash_Other_10_gml_1136_0");
		if (global.lang == "ja")
			scr_smallface(1, "ralsei", 17, 400, 56, small_text_a);
		else
			scr_smallface(1, "ralsei", 17, "mid", "mid", small_text_a);
		if (read >= 1)
		{
			scr_speaker("ralsei");
			msgsetloc(0, "\\EH* G-O-O-D-L-U-C-K-K-R-I-S! \\f1 /%", "obj_npc_sign_slash_Other_10_gml_1119_0");
			var small_text_b = stringsetloc("Goo Duckris?", "obj_npc_sign_slash_Other_10_gml_1142_0_b");
			scr_smallface(1, "susie", 0, "right", "bottom", small_text_b);
		}
	}
	else
	{
		scr_speaker("susie");
		msgsetloc(0, "\\E2* Yeah^1, I see letters^1, I basically check out./%", "obj_npc_sign_slash_Other_10_gml_1126_0");
		if (read >= 1)
		{
			scr_speaker("susie");
			msgsetloc(0, "\\E0* Always been annoying how much your hair smells like apples./", "obj_npc_sign_slash_Other_10_gml_1130_0");
			msgnextloc("\\EY* Never been easy not taking a bite in class..^1. heheh./%", "obj_npc_sign_slash_Other_10_gml_1131_0");
		}
	}
}
if (room == room_dw_cyber_keyboard_puzzle_2)
{
	if (x < 100)
	{
		scr_speaker("susie");
		msgsetloc(0, "\\E0* The hell is that^1, a driver's license number?/", "obj_npc_sign_slash_Other_10_gml_1141_0");
		msgnextloc("\\E2* Heh^1, can we use it and drive your mom's car?/%", "obj_npc_sign_slash_Other_10_gml_1142_0");
		if (read >= 1)
		{
			scr_speaker("susie");
			msgsetloc(0, "\\EK* Uhh^1, maybe we could make your mom's car cooler first./", "obj_npc_sign_slash_Other_10_gml_1146_0");
			msgnextloc("\\E2* I'm thinking^1, like..^1. purple? With flames./%", "obj_npc_sign_slash_Other_10_gml_1147_0");
		}
	}
	else
	{
		scr_speaker("ralsei");
		msgsetloc(0, "\\E2* Kris^1, we'll stand here so you can spell freely!/", "obj_npc_sign_slash_Other_10_gml_1153_0");
		scr_anyface_next("susie", 7);
		msgnextloc("\\E7* Kris^1, spell a swear!/", "obj_npc_sign_slash_Other_10_gml_1155_0");
		scr_anyface_next("ralsei", 26);
		msgnextloc("\\EQ* Umm^1, I..^1. I don't think they can with these letters./", "obj_npc_sign_slash_Other_10_gml_1157_0");
		scr_anyface_next("susie", 0);
		msgnextloc("\\E0* Oh./", "obj_npc_sign_slash_Other_10_gml_1159_0");
		msgnextloc("\\E7* ..^1. wait^1, you checked? \\f1 /%", "obj_npc_sign_slash_Other_10_gml_1160_0");
		var small_text = stringsetloc("Umm, Kris, do your best!", "obj_npc_sign_slash_Other_10_gml_1184_0");
		scr_smallface(1, "ralsei", 17, "mid", "bottom", small_text);
		if (read >= 1)
		{
			scr_speaker("ralsei");
			msgsetloc(0, "\\E2* Kris^1, please spell some nice words!/%", "obj_npc_sign_slash_Other_10_gml_1165_0");
		}
	}
}
if (room == room_dw_cyber_keyboard_puzzle_3)
{
	if (x < 320)
	{
		scr_speaker("susie");
		msgsetloc(0, "\\EA* Heh^1, it would be funny if the puzzle^1, like.../", "obj_npc_sign_slash_Other_10_gml_1175_0");
		msgnextloc("\\E2* It's actually missing the one letter you actually need./", "obj_npc_sign_slash_Other_10_gml_1176_0");
		if (global.plot >= 100)
			msgnextloc("\\EK* Hey^1, stop pretending to write down what I say./%", "obj_npc_sign_slash_Other_10_gml_1180_0");
		else
			msgnextloc("\\EY* Heh^1, like to see Berdly try and solve that.../%", "obj_npc_sign_slash_Other_10_gml_1182_0");
		if (read >= 1)
		{
			scr_speaker("susie");
			msgsetloc(0, "\\EK* Hey^1, Kris^1, pretty sure you don't have to do this./%", "obj_npc_sign_slash_Other_10_gml_1187_0");
		}
	}
	else
	{
		scr_speaker("ralsei");
		msgsetloc(0, "\\EQ* Uhh^1, perhaps this isn't a real word^1, Kris.../", "obj_npc_sign_slash_Other_10_gml_1193_0");
		scr_anyface_next("susie", 10);
		msgnextloc("\\EA* Yeah it is. It's ICE-E's catchphrase./", "obj_npc_sign_slash_Other_10_gml_1195_0");
		scr_anyface_next("ralsei", 20);
		msgnextloc("\\EK* Huh? What's its meaning^1, then?/", "obj_npc_sign_slash_Other_10_gml_1197_0");
		scr_anyface_next("susie", 0);
		msgnextloc("\\E0* Uhh^1, I dunno^1, he just..^1. rolls his eyes up^1, froths his mouth.../", "obj_npc_sign_slash_Other_10_gml_1199_0");
		msgnextloc("\\E1* And..^1. says it?/", "obj_npc_sign_slash_Other_10_gml_1200_0");
		msgnextloc("\\EB* Or maybe..^1. that's just the muscley guy at the store./%", "obj_npc_sign_slash_Other_10_gml_1201_0");
		if (read >= 1)
		{
			scr_speaker("ralsei");
			msgsetloc(0, "\\EJ* Kris^1, this looks like a strange word^1, but.../", "obj_npc_sign_slash_Other_10_gml_1205_0");
			msgnextloc("\\E2* Even if it's not real^1, you can still have fun^1, right?/%", "obj_npc_sign_slash_Other_10_gml_1206_0");
		}
	}
}
if (room == room_dw_mansion_east_1f_e)
{
	scr_speaker("no_name");
	msgsetloc(0, "* (You became lost in the craftsmanship.)/%", "obj_npc_sign_slash_Other_10_gml_1214_0");
}
if (room == room_dw_mansion_east_1f_secret)
{
	if (sprite_index == spr_dw_mansion_door_spamton)
	{
		if (global.flag[453] == 0)
		{
			scr_speaker("spamton");
			msgsetloc(0, "* WOAH!!^1! YOU SAUCY LITTLE [Sponge] YOU!/", "obj_npc_sign_slash_Other_10_gml_1227_0");
			msgnextloc("* DON'T BARGE IN WHEN A MAN IS [ch4nging Forms]!/", "obj_npc_sign_slash_Other_10_gml_1228_0");
			msgnextloc("* ..^1. WAIT^1! WAIT [ONE 2nd]^1! IS THAT MY [Esteem Custom3r]?!/", "obj_npc_sign_slash_Other_10_gml_1229_0");
			msgnextloc("* THANKS TO YOU AND THAT LIL [Hochi Mama]/", "obj_npc_sign_slash_Other_10_gml_1230_0_b");
			msgnextloc("* I AM LIVING [Big]!/", "obj_npc_sign_slash_Other_10_gml_1231_0");
			msgnextloc("* SOON I'LL HAVE EVERY[One] IN THIS CITY EATING RIGHT OUT OF MY [$!$!]!/", "obj_npc_sign_slash_Other_10_gml_1232_0");
			msgnextloc("* HA HA HA^1! I SURE HOPE NO ONE SEALS THE [Fountain] AROUND NOW./", "obj_npc_sign_slash_Other_10_gml_1233_0");
			msgnextloc("* HA HA HA^1! I SURE HOPE. I SURE HOPE./%", "obj_npc_sign_slash_Other_10_gml_1234_0");
			global.flag[453] = 1;
		}
		else
		{
			scr_speaker("spamton");
			msgsetloc(0, "* KID^1! I'M BUSY BECOMING [God]. GO PLAY [Minecrap] OR SOMETHING!/", "obj_npc_sign_slash_Other_10_gml_1240_0_b");
			msgnextloc("* IT'S NOT MY JOB TO BE SOME KIDS' [Extra Boss]!/%", "obj_npc_sign_slash_Other_10_gml_1241_0");
		}
	}
	if (sprite_index == spr_dw_mansion_door_closed)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (It's locked.)/%", "obj_npc_sign_slash_Other_10_gml_1247_0");
	}
}
if (room == room_dw_cyber_maze_queenscreen)
{
	if (sprite_index == spr_npc_spinning_disk)
	{
		if (read == 0)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* Hee hee hee..^1. Shall I help you SAVE?/", "obj_npc_sign_slash_Other_10_gml_1224_0");
			msgnextloc("* ..^1. No^1, I shan't^1! I haven't the faintest idea what that is.../%", "obj_npc_sign_slash_Other_10_gml_1225_0");
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* Hee hee hee...!/%", "obj_npc_sign_slash_Other_10_gml_1230_0");
		}
	}
}
if (room == room_dw_cyber_post_music_boss_slide)
{
	if (sprite_index == spr_cyber_broken_camera)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (The camera must be broken.)/%", "obj_npc_sign_slash_Other_10_gml_1240_0");
	}
}
if (room == room_dw_city_postbaseball_1)
{
	if (global.flag[450] == 0)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (The treasure of air. Where three are one^1, place one to three.)/", "obj_npc_sign_slash_Other_10_gml_1249_0");
		scr_anyface_next("ralsei", 19);
		msgnextloc("\\EJ* Perhaps it means we all have to enter one teacup?/", "obj_npc_sign_slash_Other_10_gml_1251_0");
		scr_anyface_next("susie", 20);
		msgnextloc("\\EK* ..^1. well^1, I don't like doing it but it works./%", "obj_npc_sign_slash_Other_10_gml_1253_0");
		global.flag[450] = 1;
	}
	else
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (The treasure of air. Where three are one^1, place one to three.)/%", "obj_npc_sign_slash_Other_10_gml_1258_0");
	}
}
if (room == room_dw_city_poppup)
{
	scr_speaker("no_name");
	msgsetloc(0, "* (It's a manhole.)/%", "obj_npc_sign_slash_Other_10_gml_1266_0");
	doafter = 1;
}
if (room == room_dw_mansion_east_2f_shortcut)
{
	if (sprite_index == spr_dw_mansion_bookcase)
		skip = true;
}
if (room == room_dw_city_postbaseball_3)
	skip = true;
if (room == room_dw_mansion_top)
{
	if (sprite_index == spr_queen_walk_up)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* .../%", "obj_npc_sign_slash_Other_10_gml_1324_0");
	}
	if (sprite_index == spr_queen_walk_down)
	{
		scr_speaker("queen");
		msgsetloc(0, "\\E1* Amazing So I Can Turn Your Castle Into My Mansion?/", "obj_npc_sign_slash_Other_10_gml_1330_0");
		scr_anyface_next("ralsei", 21);
		msgnextloc("\\EL* (W-Wait^1, that's not what I'm saying...)/%", "obj_npc_sign_slash_Other_10_gml_1332_0");
	}
	if (sprite_index == spr_ralsei_walk_up)
	{
		scr_speaker("ralsei");
		msgsetloc(0, "\\E2* Kris^1, the Fountain is waiting for you!/%", "obj_npc_sign_slash_Other_10_gml_1338_0");
	}
}
if (room == room_dw_cyber_tasque_battle)
{
	if (sprite_index == spr_losingrecruits)
	{
		if (global.flag[463] == 0)
			global.msc = 1236;
		else
			global.msc = 1242;
		scr_text(global.msc);
	}
}
read += 1;
myinteract = 3;
if (skip == 0)
{
	mydialoguer = instance_create(0, 0, obj_dialoguer);
}
else
{
	global.interact = 0;
	myinteract = 0;
	with (obj_mainchara)
		onebuffer = 5;
}
