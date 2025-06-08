global.msc = 0;
global.typer = 5;
if (global.darkzone == 1)
	global.typer = 6;
global.fc = 0;
global.fe = 0;
global.interact = 1;
global.msg[0] = stringsetloc("* The pain itself is reason why./%", "obj_npc_room_animated_slash_Other_10_gml_8_0");
if (scr_debug())
	global.msg[0] = stringset("* [NO TEXT] (obj_npc_room_animated)/%");
if (room == room_town_mid)
{
	if (sprite_index == spr_npc_icemascot2)
	{
		global.msg[0] = stringsetloc("* Would you be interested in trying some of our many 24 Pezza Flavors?/", "obj_npc_room_animated_slash_Other_10_gml_15_0");
		global.msg[1] = stringsetloc("* We've got Normal,/", "obj_npc_room_animated_slash_Other_10_gml_16_0");
		global.msg[2] = stringsetloc("* Cheese,/", "obj_npc_room_animated_slash_Other_10_gml_17_0");
		global.msg[3] = stringsetloc("* Ice,/", "obj_npc_room_animated_slash_Other_10_gml_18_0");
		global.msg[4] = stringsetloc("* Gravy,/", "obj_npc_room_animated_slash_Other_10_gml_19_0");
		global.msg[5] = stringsetloc("* Double Ice,/", "obj_npc_room_animated_slash_Other_10_gml_20_0");
		global.msg[6] = stringsetloc("* Peeperoniss,/", "obj_npc_room_animated_slash_Other_10_gml_21_0");
		global.msg[7] = stringsetloc("* And more^1!&* Stop on down at ICE-E's PEZZA!/%", "obj_npc_room_animated_slash_Other_10_gml_22_0");
		if (talked >= 1)
		{
			global.msg[0] = stringsetloc("* Psst^1, can I tell you a mascot secret^1? I only started working here because.../", "obj_npc_room_animated_slash_Other_10_gml_26_0");
			global.msg[1] = stringsetloc("* The logo made me think it was an ice-cream shop.../", "obj_npc_room_animated_slash_Other_10_gml_27_0");
			global.msg[2] = stringsetloc("* But I ended up really loving my job^1! And my co-workers^1, too^1! Heehee!/%", "obj_npc_room_animated_slash_Other_10_gml_28_0");
		}
	}
	if (sprite_index == spr_npc_icemascot_fake)
		global.msg[0] = stringsetloc("* ICE ME UP^1!&* ICE ME UP^1, BOSS!!!/%", "obj_npc_room_animated_slash_Other_10_gml_35_0");
	if (sprite_index == spr_npc_icemascot1)
	{
		global.msg[0] = stringsetloc("* (Oh^1, God^1, someone's actually here...)&* Uhhhh.../", "obj_npc_room_animated_slash_Other_10_gml_40_0");
		global.msg[1] = stringsetloc("* Ice E's P\"E\"ZZA^1, You're number \"#1\" Spot for a piping hot pe\"E\"ce of PEZZA./", "obj_npc_room_animated_slash_Other_10_gml_41_0");
		global.msg[2] = stringsetloc("* .../", "obj_npc_room_animated_slash_Other_10_gml_42_0");
		global.msg[3] = stringsetloc("* ... H..^1. Hey^1!&* Hey^1, wait a second!/", "obj_npc_room_animated_slash_Other_10_gml_43_0");
		global.msg[4] = stringsetloc("* I recognize you!/%", "obj_npc_room_animated_slash_Other_10_gml_44_0");
		with (obj_town_event)
			con = 20;
	}
}
if (room == room_diner)
{
	if (global.chapter == 1)
	{
		global.msg[0] = stringsetloc("* I like the vibe of the waitresses here^1.&* Maybe I should sign up^1, too.../", "obj_npc_room_animated_slash_Other_10_gml_51_0");
		global.msg[1] = stringsetloc("* ... Nah^1, serving drinks wouldn't really suit a fire elemental./", "obj_npc_room_animated_slash_Other_10_gml_52_0");
		global.msg[2] = stringsetloc("* If I got nervous^1, I'd just melt all the ice./%", "obj_npc_room_animated_slash_Other_10_gml_53_0");
		if (talked >= 1)
			global.msg[0] = stringsetloc("* What if I just served coffee^1?&* Nah^1, that sounds like a lawsuit waiting to happen.../%", "obj_npc_room_animated_slash_Other_10_gml_56_0");
	}
	if (global.chapter == 2)
	{
		if (sprite_index == spr_npc_catti_mom_no1)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* WOO!!^1! Catti!^1! You go^1, girl!!!/", "obj_npc_room_animated_slash_Other_10_gml_70_0");
			msgnextloc("* Show those customers who's boss^1, little lady!!/", "obj_npc_room_animated_slash_Other_10_gml_71_0");
			msgnextloc("* Kick their toosh!^1! Woo!!^1! Beat them down!^1! You got this!!/%", "obj_npc_room_animated_slash_Other_10_gml_72_0");
		}
		if (sprite_index == spr_npc_catty_ukelele)
		{
			global.msc = 1039;
			scr_text(global.msc);
		}
	}
}
if (room == room_cc_clover)
	global.msg[0] = stringsetloc("* (It's a boombox.^1)&* (It's playing clubs music.)/%", "obj_npc_room_animated_slash_Other_10_gml_62_0");
if (room == room_dw_ralsei_castle_front)
{
	if (sprite_index == spr_npc_trashy)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* Oh boy^1, oh boy!^1! I'm Trashy!^1! Haha!!/", "obj_npc_room_animated_slash_Other_10_gml_94_0_b");
		msgnextloc("* I bet I'm gonna make a lot of new friends!!/%", "obj_npc_room_animated_slash_Other_10_gml_95_0");
	}
}
if (room == room_dw_ralsei_castle_1f)
{
	if (global.flag[304] == 0)
	{
		scr_speaker("ralsei");
		msgsetloc(0, "\\E2* Oh!^1! I nearly forgot!^1! This is where I cook!!/", "obj_npc_room_animated_slash_Other_10_gml_94_0");
		scr_anyface_next("susie", "K");
		msgnextloc("\\EK* You cook everything in a giant witch's pot...?/", "obj_npc_room_animated_slash_Other_10_gml_96_0");
		scr_anyface_next("ralsei", 2);
		msgnextloc("\\EH* Of course^1! Cauldron-cooking is very convenient!/%", "obj_npc_room_animated_slash_Other_10_gml_98_0");
	}
	else
	{
		scr_speaker("susie");
		msgsetloc(0, "\\E7* Okay^1, now make a chocolate one!/", "obj_npc_room_animated_slash_Other_10_gml_104_0");
		scr_anyface_next("ralsei", 26);
		msgnextloc("\\EQ* Why don't we go upstairs first?/%", "obj_npc_room_animated_slash_Other_10_gml_106_0");
		if (global.plot >= 15)
		{
			scr_speaker("susie");
			msgsetloc(0, "\\E7* How 'bout a strawberry cake as a room-warming gift?/", "obj_npc_room_animated_slash_Other_10_gml_112_0");
			scr_anyface_next("ralsei", 26);
			msgnextloc("\\EQ* There's a slice of cake in your fridge^1, Susie!/", "obj_npc_room_animated_slash_Other_10_gml_114_0");
			scr_anyface_next("susie", 22);
			msgnextloc("\\EM* But it's not cauldron-fresh!/%", "obj_npc_room_animated_slash_Other_10_gml_116_0");
		}
	}
}
if (room == room_town_south)
{
	if (global.chapter == 2 && global.plot >= 15 && global.plot <= 200)
	{
		if (sprite_index == spr_undyne_benchpress)
		{
			if (talked == 0)
			{
				scr_speaker("undyne");
				msgsetloc(0, "\\E1* Damn^1, I was just directing traffic as normal.../", "obj_npc_room_animated_slash_Other_10_gml_130_0");
				msgnextloc("\\E2* When a little dog drove one of those toy cars.../", "obj_npc_room_animated_slash_Other_10_gml_131_0");
				msgnextloc("\\E1* Into the middle of the street and started doing donuts!/", "obj_npc_room_animated_slash_Other_10_gml_132_0");
				msgnextloc("\\E4* In the chaos^1, all the cars in town got jammed up!!/", "obj_npc_room_animated_slash_Other_10_gml_133_0");
				msgnextloc("\\E0* Thankfully^1, no one was hurt..^1. but.../", "obj_npc_room_animated_slash_Other_10_gml_134_0");
				msgnextloc("\\E2* Ordinary citizens like you gotta get outta here!/", "obj_npc_room_animated_slash_Other_10_gml_135_0");
				msgnextloc("\\E5* I've got some heavy lifting to do!!!/%", "obj_npc_room_animated_slash_Other_10_gml_136_0");
			}
			else
			{
				scr_speaker("undyne");
				msgsetloc(0, "\\E5* Don't interrupt me when I'm lifting!!!/%", "obj_npc_room_animated_slash_Other_10_gml_139_0");
			}
		}
	}
}
if (room == room_lw_icee_pizza)
{
	if (sprite_index == spr_npc_warrior)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* THE PIZZA'S SAUCE IS BOILING RED./", "obj_npc_room_animated_slash_Other_10_gml_150_0");
		msgnextloc("* BURBLING^1, BURNING LIKE MY BLOOD YEARNS FOR BATTLE!!!/", "obj_npc_room_animated_slash_Other_10_gml_151_0");
		msgnextloc("* HAAAAAAAAAAAAAAAHHHHH!!!!!/", "obj_npc_room_animated_slash_Other_10_gml_152_0");
		msgnextloc("* I^1, THE WARRIOR^1, SHALL SHOW IT THE WIZARD'S FIST!!!/%", "obj_npc_room_animated_slash_Other_10_gml_153_0");
	}
}
if (room == room_townhall)
{
	if (sprite_index == spr_npc_icee_suit)
	{
		msgsetloc(0, "* PUT ME IN^1, COACH!!!/", "obj_npc_room_animated_slash_Other_10_gml_161_0");
		msgnextloc("* PUT ME IN!!!/%", "obj_npc_room_animated_slash_Other_10_gml_162_0");
	}
}
if (room == room_dw_castle_dungeon)
{
	if (sprite_index == spr_smallcheckers_front)
		msgsetloc(0, "* (It's violently protecting the jail.)/%", "obj_npc_room_animated_slash_Other_10_gml_170_0");
}
if (room == room_dw_mansion_krisroom)
{
	if (sprite_index == spr_dw_mansion_room_kris_book_juggling)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (It's Jongler's Book on Jongleing And Other Tricks)/", "obj_npc_room_animated_slash_Other_10_gml_180_0");
		msgnextloc("* (From search query: how to use magic)/%", "obj_npc_room_animated_slash_Other_10_gml_181_0");
	}
	if (sprite_index == spr_dw_mansion_room_kris_toriel_piano)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (It's two pixellized Toriels playing the piano.)/", "obj_npc_room_animated_slash_Other_10_gml_187_0");
		msgnextloc("* (From search query: video game piano tutoriel)/%", "obj_npc_room_animated_slash_Other_10_gml_188_0");
	}
	if (sprite_index == spr_dw_mansion_room_kris_casette_floating)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (It's a VHS explaining how to install video game piano.)/", "obj_npc_room_animated_slash_Other_10_gml_194_0");
		msgnextloc("* (From search query: video game piano tutorial)/%", "obj_npc_room_animated_slash_Other_10_gml_195_0");
	}
	if (sprite_index == spr_dw_mansion_room_kris_knife_jello)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (It's a jelly in the shape of various knives.)/", "obj_npc_room_animated_slash_Other_10_gml_201_0");
		msgnextloc("* (From search query: sharpest kitchen knife jello)/%", "obj_npc_room_animated_slash_Other_10_gml_202_0");
	}
	if (sprite_index == spr_dw_mansion_room_kris_calendar)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (It's a calendar with college vacation circled.)/", "obj_npc_room_animated_slash_Other_10_gml_208_0");
		msgnextloc("* (From search query: summer vacation college when.)/%", "obj_npc_room_animated_slash_Other_10_gml_209_0");
	}
}
if (room == room_dw_mansion_susieroom)
{
	if (sprite_index == spr_dw_mansion_room_susie_video_game)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (It's a copy of an online skateboarding game.)/", "obj_npc_room_animated_slash_Other_10_gml_218_0");
		msgnextloc("* (From search query: cool skatebord game online)/%", "obj_npc_room_animated_slash_Other_10_gml_219_0");
	}
	if (sprite_index == spr_dw_mansion_room_susie_video_game_broken)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (It's a skateboarding game but the AI is cheating. It's impossible to win.)/", "obj_npc_room_animated_slash_Other_10_gml_225_0");
		msgnextloc("* (From search query: cool skateboard game online CHEAT)/%", "obj_npc_room_animated_slash_Other_10_gml_226_0");
	}
	if (sprite_index == spr_dw_mansion_room_susie_book_vacuum)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (It's a vacuum-powered book.)/", "obj_npc_room_animated_slash_Other_10_gml_232_0");
		msgnextloc("* (From search query: LOSERS!!!^1! THIS LIBRARBY SUCKS!!!!)/%", "obj_npc_room_animated_slash_Other_10_gml_233_0");
	}
	if (sprite_index == spr_dw_mansion_room_susie_glitch)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (Seems to be a somewhat glitched out hologram.)/", "obj_npc_room_animated_slash_Other_10_gml_239_0");
		msgnextloc("* (From search query: FJFIrejirioEUEUROEI4378789)/%", "obj_npc_room_animated_slash_Other_10_gml_240_0");
	}
}
if (room == room_dw_city_roadblock)
{
	if (extflag == "left")
	{
		scr_speaker("no_name");
		msgsetloc(0, "* What are we cleaning up for, you ask?/", "obj_npc_room_animated_slash_Other_10_gml_257_0");
		msgnextloc("* We don't know. A parade, perhaps?/%", "obj_npc_room_animated_slash_Other_10_gml_258_0");
	}
	if (extflag == "right")
	{
		scr_speaker("no_name");
		msgsetloc(0, "* A large event is going to happen in the streets later./", "obj_npc_room_animated_slash_Other_10_gml_249_0");
		msgnextloc("* We were told to make room for something BIG.../%", "obj_npc_room_animated_slash_Other_10_gml_251_0");
	}
}
if (room == room_dw_city_savepoint)
{
	if (sprite_index == spr_npc_sweet)
	{
		if (talked == 0)
		{
			scr_miniface_init_sweet();
			msgsetloc(0, "\\m1\t\t*Yo^1! How's it hangin'?/", "obj_npc_room_animated_slash_Other_10_gml_270_0");
			msgnextloc("\\m1\t\t*We're making some extra& money by selling in the city!/", "obj_npc_room_animated_slash_Other_10_gml_271_0");
			msgnextloc("\\m3\t\t*We gotta make those& bucks somehow!^1! Heheh!!/", "obj_npc_room_animated_slash_Other_10_gml_272_0");
			msgnextloc("\\m1\t\t*Gotta buy new gear!^2!&\\m3\tGotta get new kicks!^2!&\\m2\tI wanna be a car^2./", "obj_npc_room_animated_slash_Other_10_gml_273_0");
			msgnextloc("\\m1\t\t*Good thinkin'^1, K_K^1! Gotta&\thave a way to get around^2!&\\m2\tHonk^1! Honk^2!/%", "obj_npc_room_animated_slash_Other_10_gml_274_0");
		}
		else
		{
			scr_miniface_init_sweet();
			msgsetloc(0, "\\m1\t\t*K_K's always got it right^2!&\\m3\tThat's why he's& second-in-command^2!/", "obj_npc_room_animated_slash_Other_10_gml_278_0");
			msgnextloc("\\m1\t\t*..^1. who's first^2?&\\m3\tHuh? I'm not the leader^2?&\\m2\tCan I be third^2?/%", "obj_npc_room_animated_slash_Other_10_gml_279_0");
		}
	}
	if (sprite_index == spr_npc_kk || sprite_index == spr_npc_kk_music)
	{
		scr_miniface_init_sweet();
		msgsetloc(0, "\\m2\t\t*Did you like the big statue^2?&\\m3\tBuilding it sucked^2!&\\m1\tTook a lot of scrap^2./", "obj_npc_room_animated_slash_Other_10_gml_286_0");
		msgnextloc("\\m1\t\t*The other job we did was&\tway better^2!&\\m2\tIt was big^2./", "obj_npc_room_animated_slash_Other_10_gml_287_0");
		msgnextloc("\\m3\t\t*It's gonna blow your mind^2!&\\m2\tIt was big^2./%", "obj_npc_room_animated_slash_Other_10_gml_288_0");
	}
	if (sprite_index == spr_npc_hatguy)
	{
		global.msc = 1071;
		scr_text(global.msc);
	}
}
if (room == room_dw_castle_area_2_transformed)
{
	if (sprite_index == spr_npc_swatchling_sweep)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* Young masters^1! Thank you for such a wide space to clean!/", "obj_npc_room_animated_slash_Other_10_gml_303_0");
		msgnextloc("* The people here have such clean hearts as well./", "obj_npc_room_animated_slash_Other_10_gml_304_0");
		msgnextloc("* (Sukkiri.)/%", "obj_npc_room_animated_slash_Other_10_gml_305_0");
	}
	if (sprite_index == spr_npc_rabbick_sweep)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* It's nice to make friends that like good clean fun!/", "obj_npc_room_animated_slash_Other_10_gml_311_0");
		msgnextloc("* (Sukkiri.)/%", "obj_npc_room_animated_slash_Other_10_gml_312_0");
	}
	if (sprite_index == spr_virovirokun_idle)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* Uh-huh^1, uh-huh^1! I wonder if she'll be back.../", "obj_npc_room_animated_slash_Other_10_gml_318_0");
		msgnextloc("* 'ey boss^1! We're just reminiscing about fighting you!/%", "obj_npc_room_animated_slash_Other_10_gml_319_0");
	}
}
if (room == room_dw_cyber_musical_door)
{
	if (sprite_index == spr_npc_hatguy)
	{
		global.msc = 1145;
		scr_text(global.msc);
	}
	if (sprite_index == spr_npc_kk)
	{
		if (global.flag[354] >= 6)
		{
			var sold_out_talk = talked;
			if (i_ex(obj_npc_musical_door))
			{
				with (obj_npc_musical_door)
				{
					if (!sold_out)
					{
						sold_out = true;
						sold_out_talk = 0;
					}
				}
			}
			if (sold_out_talk == 0)
			{
				scr_miniface_init_sweet();
				scr_speaker("kk");
				msgsetloc(0, "\\m2\t\t*Sorry^1, I'm out of bagels.&\\m3\tDon't you have 400!?&\\m2\tI had 406./", "obj_npc_room_animated_slash_Other_10_gml_352_0");
				msgnextloc("\\m3\t\t*Then why can't you sell&\tanymore?!/", "obj_npc_room_animated_slash_Other_10_gml_353_0");
				msgnextloc("\\m2\t\t*What if someone asked for&\t400 bagels?/%", "obj_npc_room_animated_slash_Other_10_gml_354_0");
			}
			else
			{
				scr_speaker("kk");
				msgsetloc(0, "\\m2\t\t*Sorry^1, I'm out of bagels./%", "obj_npc_room_animated_slash_Other_10_gml_358_0");
			}
		}
		else
		{
			global.msc = 1147;
			scr_text(global.msc);
		}
	}
}
if (room == room_town_church)
{
	if (talked == 0)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* Having a wide-open space is great for us kids./", "obj_npc_room_animated_slash_Other_10_gml_374_0");
		msgnextloc("* Sometimes it's good to get your freak out./%", "obj_npc_room_animated_slash_Other_10_gml_375_0");
	}
	else
	{
		scr_speaker("no_name");
		msgsetloc(0, "* And sometimes..^1. It's bad to get your freak out./%", "obj_npc_room_animated_slash_Other_10_gml_379_0");
	}
}
if (room == room_dw_mansion_kitchen)
{
	if (x > 540)
	{
		if (global.flag[362] == 0)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* M-m-mouse!!/", "obj_npc_room_animated_slash_Other_10_gml_391_0");
			msgnextloc("* And it's n-not wearing a wig!!/%", "obj_npc_room_animated_slash_Other_10_gml_392_0");
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* Thanks for the help^1. We'll open up the \\cYEAST\\cW dining hall now./%", "obj_npc_room_animated_slash_Other_10_gml_405_0");
		}
	}
	if (x > 660)
	{
		if (global.flag[362] == 0)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (Ouch^1, ouch)/", "obj_npc_room_animated_slash_Other_10_gml_408_0");
			msgnextloc("* The mouse can't get me up here!!/", "obj_npc_room_animated_slash_Other_10_gml_409_0");
			msgnextloc("* Even if the (ouch^1, ouch) stove is burning my feet!/%", "obj_npc_room_animated_slash_Other_10_gml_410_0");
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (Ouch^1, ouch)/", "obj_npc_room_animated_slash_Other_10_gml_414_0");
			msgnextloc("* How do I get down from here?/%", "obj_npc_room_animated_slash_Other_10_gml_415_0");
		}
	}
	if (x > 780)
	{
		if (global.flag[362] == 0)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* Oh me^1, oh my^1! The kitchen is infested with..^1. vermin!!!/", "obj_npc_room_animated_slash_Other_10_gml_425_0");
			msgnextloc("* I knew we should have properly finished dumping all the cheese in that alleyway!/%", "obj_npc_room_animated_slash_Other_10_gml_426_0");
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* Queen's making us prepare a massive feast for her upcoming guests./", "obj_npc_room_animated_slash_Other_10_gml_430_0");
			msgnextloc("* ..^1. I wonder if people can really eat platters^1, though./%", "obj_npc_room_animated_slash_Other_10_gml_431_0");
		}
	}
}
if (room == room_dw_city_queen_drunk)
{
	if (x > 1000)
	{
		if (talked == 0)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* Queen told us to take out the garbage./", "obj_npc_room_animated_slash_Other_10_gml_455_0");
			msgnextloc("* I'd never seen a garbage that big before./%", "obj_npc_room_animated_slash_Other_10_gml_456_0");
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* Except for the dancing garbage that lives in the trash heap./%", "obj_npc_room_animated_slash_Other_10_gml_460_0");
		}
	}
	if (x > 1260)
	{
		if (talked == 0)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* It was a horrible statue^1, but the execution was very good./", "obj_npc_room_animated_slash_Other_10_gml_469_0");
			msgnextloc("* I would give it 2 stars.../", "obj_npc_room_animated_slash_Other_10_gml_470_0");
			msgnextloc("* One to cover each of the nipples./%", "obj_npc_room_animated_slash_Other_10_gml_471_0");
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* It's in a better place now./%", "obj_npc_room_animated_slash_Other_10_gml_475_0");
		}
	}
}
if (room == room_dw_city_intro)
{
	if ((scr_havechar(2) && scr_havechar(3)) && global.plot < 100)
	{
		if (talked == 0)
		{
			var nubert_check = global.flag[119] == 1;
			var sentenceEnd = nubert_check ? "/" : "/%";
			if (nubert_check)
				scr_smallface(0, "ralsei", 19, "right", "bottom", stringsetloc("Really, where!?", "obj_npc_room_animated_slash_Other_10_gml_489_0"));
			scr_speaker("no_name");
			msgsetloc(0, "* Oh boy^1, oh boy^1! I'm \\cBTrashy\\cW!/", "obj_npc_room_animated_slash_Other_10_gml_492_0");
			msgnextloc("* Did you know about adjusting your INVENTORY?/", "obj_npc_room_animated_slash_Other_10_gml_493_0");
			msgnextloc("* Trashcans like me can HOLD all sorts of things./", "obj_npc_room_animated_slash_Other_10_gml_494_0");
			msgnextloc("* Just like your STORAGE^1, if you get more than 12 ITEMs!/", "obj_npc_room_animated_slash_Other_10_gml_495_0");
			scr_anyface_next("susie", "4");
			msgnextloc("\\E4* Uh..^1. yeah^1, not now dude./", "obj_npc_room_animated_slash_Other_10_gml_497_0");
			scr_anyface_next("ralsei", "Q");
			msgnextloc("\\EQ* It was sort of an emotional moment.../", "obj_npc_room_animated_slash_Other_10_gml_499_0");
			scr_anyface_next("no_name", 0);
			msgnextsubloc("* Oh..^1. Oh^1, that's okay...~1", sentenceEnd, "obj_npc_room_animated_slash_Other_10_gml_501_0");
			if (nubert_check)
			{
				scr_anyface_next("susie", 0);
				msgnextloc("\\E7* Oh hell^1, is that Nubert over there!?\\f0/%", "obj_npc_room_animated_slash_Other_10_gml_506_0");
			}
		}
		else
		{
			scr_speaker("susie");
			msgsetloc(0, "* No time for this guy./%", "obj_npc_room_animated_slash_Other_10_gml_511_0");
		}
	}
	else if (talked == 0)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* You can hold a lot more in your STORAGE^1, you know./", "obj_npc_room_animated_slash_Other_10_gml_518_0");
		msgnextloc("* But^1, you won't be able to use it during BATTLE./", "obj_npc_room_animated_slash_Other_10_gml_519_0");
		msgnextloc("* Check it and make sure you have what you need!/", "obj_npc_room_animated_slash_Other_10_gml_520_0");
		msgnextloc("* ..^1. is what I wanted to say^1, but it already got said./%", "obj_npc_room_animated_slash_Other_10_gml_521_0");
		if (global.flag[309] >= 1)
		{
			msgsetloc(0, "* A funny little guy was looking for you to the WEST./", "obj_npc_room_animated_slash_Other_10_gml_524_0");
			msgnextloc("* He was muttering something about deals.../%", "obj_npc_room_animated_slash_Other_10_gml_525_0_b");
		}
		if (global.flag[309] >= 9)
		{
			msgsetloc(0, "* Some funny-looking guys have gathered to the WEST./", "obj_npc_room_animated_slash_Other_10_gml_529_0");
			msgnextloc("* They were muttering something about muttering something about deals.../%", "obj_npc_room_animated_slash_Other_10_gml_530_0");
		}
	}
	else
	{
		scr_speaker("no_name");
		msgsetloc(0, "* I'm Trashy.../%", "obj_npc_room_animated_slash_Other_10_gml_525_0");
	}
}
if (room == room_dw_cyber_queen_boxing)
{
	if (global.plot < 65)
	{
		if (talked == 0)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* I can't tell you how many of these I've cleaned up./%", "obj_npc_room_animated_slash_Other_10_gml_537_0");
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* It's not so bad^1, I like cleaning./%", "obj_npc_room_animated_slash_Other_10_gml_541_0");
		}
	}
	else if (talked == 0)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* I wish there was someone that liked cleaning as much as me./%", "obj_npc_room_animated_slash_Other_10_gml_548_0");
	}
	else
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (Sukkiri...)/%", "obj_npc_room_animated_slash_Other_10_gml_552_0");
	}
}
if (room == room_dw_city_big_3)
{
	if (talked == 0)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* All the shopkeepers went to the trash dump./", "obj_npc_room_animated_slash_Other_10_gml_562_0");
		msgnextloc("* So I thought I might steal something^1, but these items are pretty bad.../%", "obj_npc_room_animated_slash_Other_10_gml_563_0");
	}
	else
	{
		scr_speaker("no_name");
		msgsetloc(0, "* Feels like I'll get ripped off even if I don't pay.../%", "obj_npc_room_animated_slash_Other_10_gml_567_0");
	}
}
if (room == room_dw_cyber_intro_connector)
{
	if (extflag == "npc1")
	{
		if (talked == 0)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* The wires..^1. the wires.../%", "obj_npc_room_animated_slash_Other_10_gml_578_0");
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* .../%", "obj_npc_room_animated_slash_Other_10_gml_583_0");
		}
	}
	if (extflag == "npc2")
	{
		if (talked == 0)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* Everyone was.../%", "obj_npc_room_animated_slash_Other_10_gml_592_0");
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* .../%", "obj_npc_room_animated_slash_Other_10_gml_597_0");
		}
	}
}
if (room == room_dw_ralsei_castle_2f)
{
	scr_speaker("no_name");
	msgsetloc(0, "* I keep ending up in this situation.../", "obj_npc_room_animated_slash_Other_10_gml_605_0");
	msgnextloc("* Can't say I'm a fan...^1. Or can I?/%", "obj_npc_room_animated_slash_Other_10_gml_606_0");
}
if (room == room_dw_mansion_acid_tunnel_loop_rouxls)
{
	scr_speaker("no_name");
	msgsetloc(0, "* (Looks like it's completed its migration.)/%", "obj_npc_room_animated_slash_Other_10_gml_612_0");
}
if (room == room_dw_mansion_acid_tunnel_exit)
{
	scr_speaker("no_name");
	if (talked == 0)
	{
		msgsetloc(0, "* Oh boy^1, oh boy^1! Looks like you're almost at the END.../", "obj_npc_room_animated_slash_Other_10_gml_631_0");
		msgnextloc("* Did you RECRUIT everyone...? You might wanna check!/%", "obj_npc_room_animated_slash_Other_10_gml_632_0");
	}
	else
	{
		msgsetloc(0, "* You didn't RECRUIT me^1.&* But I'll be in your TOWN.../%", "obj_npc_room_animated_slash_Other_10_gml_635_0");
	}
}
if (room == room_castle_tutorial)
{
	if (sprite_index == spr_npc_sweet)
	{
		scr_miniface_init_sweet();
		scr_speaker("no_name");
		msgsetloc(0, "\\m1\t\t*This town's great!/", "obj_npc_room_animated_slash_Other_10_gml_611_0");
		msgnextloc("\\m1\t\t*Just^1, wish everyone else was&\there^1, too.../%", "obj_npc_room_animated_slash_Other_10_gml_612_0_b");
	}
	if (sprite_index == spr_npc_hatguy)
	{
		if (talked == 0)
		{
			scr_miniface_init_sweet();
			scr_speaker("no_name");
			msgsetloc(0, "\\m3\t\t*Yo^1, chief. If you \\cYrecruit\\cW&\tenough fans for us^1,/", "obj_npc_room_animated_slash_Other_10_gml_622_0");
			msgnextloc("\\m3\t\t*We might be able to make our&\tmusic shop again.../", "obj_npc_room_animated_slash_Other_10_gml_623_0");
			msgnextloc("\\m3\t\t*Hey^1, we might even give you a&\t\\cYdiscount\\cW!/%", "obj_npc_room_animated_slash_Other_10_gml_624_0");
		}
		else
		{
			scr_miniface_init_sweet();
			scr_speaker("no_name");
			msgsetloc(0, "\\m3\t\t*Ya hear that^1, chief? Keep up&\tthe recruiting.../%", "obj_npc_room_animated_slash_Other_10_gml_630_0");
		}
	}
	if (sprite_index == spr_npc_kk)
	{
		scr_miniface_init_sweet();
		scr_speaker("no_name");
		msgsetloc(0, "\\m2\t\t*I got to keep my box./%", "obj_npc_room_animated_slash_Other_10_gml_639_0");
	}
}
myinteract = 3;
mydialoguer = instance_create(0, 0, obj_dialoguer);
talked += 1;
