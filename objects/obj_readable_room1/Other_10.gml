myinteract = 3;
global.msc = 0;
global.typer = 5;
if (global.darkzone == 1)
	global.typer = 6;
global.fe = 0;
global.fc = 0;
global.interact = 1;
with (obj_darkcontroller)
	charcon = 0;
global.msg[0] = stringsetloc("* Suddenly^1, your body seizes up^1.&* What are you looking at?/%", "obj_readable_room1_slash_Other_10_gml_13_0");
if (scr_debug())
	global.msg[0] = stringset("* [NO TEXT] (obj_readable_room1)/%");
if (room == room_krisroom)
{
	if (y < 150)
	{
		if (global.chapter == 1)
		{
			global.msg[0] = stringsetloc("* There are CDs under the bed^1.&* Classical^1, jazz^1, religious ska.../", "obj_readable_room1_slash_Other_10_gml_21_0");
			global.msg[1] = stringsetloc("* There's also a game console^1.&* It has one normal controller^1, and one knock-off one./%", "obj_readable_room1_slash_Other_10_gml_22_0");
		}
		if (global.chapter == 2)
		{
			msgsetloc(0, "* Underneath the bed is an old cartridge of \"Cat Petters RPG\"./", "obj_readable_room1_slash_Other_10_gml_28_0");
			msgnextloc("* \"catti `& catty\" can be seen faintly written on it in worn gel pen./%", "obj_readable_room1_slash_Other_10_gml_29_0");
		}
	}
	else
	{
		if (global.chapter == 1)
			global.msg[0] = stringsetloc("* It's a computer desk^1.&* There are many boxes under it filled with old books./%", "obj_readable_room1_slash_Other_10_gml_36_0");
		if (global.chapter == 2)
		{
			msgsetloc(0, "* On the computer's desktop is a folder called \"EPIC games Stuff!!!!\"/", "obj_readable_room1_slash_Other_10_gml_42_0");
			msgnextloc("* It's a poorly-drawn design for a game.../", "obj_readable_room1_slash_Other_10_gml_43_0");
			msgnextloc("* Seems the last boss is a creature with giant rainbow wings./", "obj_readable_room1_slash_Other_10_gml_44_0");
			msgnextloc("* Doesn't seem like this game ever saw the light of day.../%", "obj_readable_room1_slash_Other_10_gml_45_0");
		}
	}
	if (x > 100)
	{
		if (global.chapter == 1)
		{
			global.msg[0] = stringsetloc("* The drawer is mostly empty^1, except for.../", "obj_readable_room1_slash_Other_10_gml_54_0");
			global.msg[1] = stringsetloc("* A school cross country shirt with a tear in it./%", "obj_readable_room1_slash_Other_10_gml_55_0");
			if (global.filechoice == 1)
				global.msg[1] = stringsetloc("* A very old school ID with an embarrassing haircut./%", "obj_readable_room1_slash_Other_10_gml_56_0");
			if (global.filechoice == 2)
			{
				global.msg[1] = stringsetloc("* A coupon book^1.&* Every coupon is for half-off a large pizza./", "obj_readable_room1_slash_Other_10_gml_59_0");
				global.msg[2] = stringsetloc("* All the coupons expired before the book's print date./%", "obj_readable_room1_slash_Other_10_gml_60_0");
			}
			if (read > 0)
				global.msg[0] = stringsetloc("* There's nothing useful in the drawer./%", "obj_readable_room1_slash_Other_10_gml_64_0");
		}
		if (global.chapter == 2)
		{
			global.msc = 1049;
			scr_text(global.msc);
		}
	}
	if (x > 136)
	{
		if (global.chapter == 1)
			global.msg[0] = stringsetloc("* It's a beautiful day outside./%", "obj_readable_room1_slash_Other_10_gml_80_0");
		if (global.chapter == 2)
			msgsetloc(0, "* Even after a long night^1, the sunrise is the same as always./%", "obj_readable_room1_slash_Other_10_gml_86_0");
	}
	if (x > 192)
		global.msg[0] = stringsetloc("* Clothes drawer./%", "obj_readable_room1_slash_Other_10_gml_91_0");
	if (x > 220)
	{
		global.msg[0] = stringsetloc("* Your bed./%", "obj_readable_room1_slash_Other_10_gml_96_0");
		if (global.chapter == 1)
		{
			if (global.tempflag[10] == 1 && global.plot < 10)
			{
				global.msc = 402;
				scr_text(global.msc);
			}
			if (global.plot >= 250)
			{
				global.msc = 400;
				scr_text(global.msc);
			}
		}
		if (global.chapter == 2)
		{
			if (global.tempflag[39] == 1 && global.plot < 10)
			{
				global.msc = 402;
				scr_text(global.msc);
			}
		}
	}
	if (x > 250)
		global.msg[0] = stringsetloc("* It's stained./%", "obj_readable_room1_slash_Other_10_gml_112_0");
}
if (room == room_debug_loc)
{
	global.msg[0] = stringsetloc("* The door is locked./%", "obj_readable_room1_slash_Other_10_gml_120_0");
	if (x > 120)
	{
		if (global.chapter == 1)
			global.msg[0] = stringsetloc("* It's only you./%", "obj_readable_room1_slash_Other_10_gml_127_0");
		if (global.chapter == 2)
			msgsetloc(0, "* (It's what they call \"you.\")/%", "obj_readable_room1_slash_Other_10_gml_133_0");
	}
	if (x > 160)
	{
		if (global.chapter == 1)
			global.msg[0] = stringsetloc("* There are crayons in the drawer^1. Their labels have long faded^1, and there's no green./%", "obj_readable_room1_slash_Other_10_gml_141_0");
		if (global.chapter == 2)
		{
			msgsetloc(0, "* (..^1. How to Draw Dragons is at the bottom of the drawer.)/", "obj_readable_room1_slash_Other_10_gml_147_0");
			msgnextloc("* (The purple character on the cover is dressed..^1. immodestly.)/", "obj_readable_room1_slash_Other_10_gml_148_0_b");
			msgnextloc("* (...)/", "obj_readable_room1_slash_Other_10_gml_148_0");
			msgnextloc("* (Your brother will never return this book.)/%", "obj_readable_room1_slash_Other_10_gml_150_0");
		}
	}
	if (x > 220)
		global.msg[0] = stringsetloc("* A cactus^1.&* There's not much to say about it./%", "obj_readable_room1_slash_Other_10_gml_169_0");
	if (x > 320)
	{
		if (global.chapter == 1)
		{
			global.msg[0] = stringsetloc("* There are many books./", "obj_readable_room1_slash_Other_10_gml_177_0");
			global.msg[1] = stringsetloc("* Tales of Snails - A Story Book./", "obj_readable_room1_slash_Other_10_gml_178_0");
			global.msg[2] = stringsetloc("* Snails Do Not Have Tails -&A Scientific Refutation./", "obj_readable_room1_slash_Other_10_gml_179_0");
			global.msg[3] = stringsetloc("* Can Snails Help Your Garden? Um, Not Really./", "obj_readable_room1_slash_Other_10_gml_180_0");
			global.msg[4] = stringsetloc("* And a signed copy of The History of Humans and Monsters, by Gerson Boom./%", "obj_readable_room1_slash_Other_10_gml_181_0");
			if (read > 0)
				global.msg[0] = stringsetloc("* There's no time to read anything right now./%", "obj_readable_room1_slash_Other_10_gml_184_0");
		}
		if (global.chapter == 2)
			msgsetloc(0, "* (There's no time to read books. Just generally.)/%", "obj_readable_room1_slash_Other_10_gml_175_0");
	}
}
if (room == room_krishallway)
{
	global.msg[0] = stringsetloc("* The door is locked./%", "obj_readable_room1_slash_Other_10_gml_120_0");
	if (x > 120)
	{
		if (global.chapter == 1)
			global.msg[0] = stringsetloc("* It's only you./%", "obj_readable_room1_slash_Other_10_gml_127_0");
		if (global.chapter == 2)
			msgsetloc(0, "* (It's what they call \"you.\")/%", "obj_readable_room1_slash_Other_10_gml_196_0");
		if (x < 160)
		{
			with (obj_event_manager)
				trigger_event((0 << 0), (28 << 0));
		}
	}
	if (x > 160)
	{
		if (global.chapter == 1)
			global.msg[0] = stringsetloc("* There are crayons in the drawer^1. Their labels have long faded^1, and there's no green./%", "obj_readable_room1_slash_Other_10_gml_141_0");
		if (global.chapter == 2)
		{
			msgsetloc(0, "* (..^1. How to Draw Dragons is at the bottom of the drawer.)/", "obj_readable_room1_slash_Other_10_gml_210_0");
			msgnextloc("* (The purple character on the cover is dressed..^1. immodestly.)/", "obj_readable_room1_slash_Other_10_gml_211_0_b");
			msgnextloc("* (...)/", "obj_readable_room1_slash_Other_10_gml_148_0");
			msgnextloc("* (Your brother will never return this book.)/%", "obj_readable_room1_slash_Other_10_gml_213_0");
		}
	}
	if (x > 220)
		global.msg[0] = stringsetloc("* A cactus^1.&* There's not much to say about it./%", "obj_readable_room1_slash_Other_10_gml_169_0");
	if (x > 320)
	{
		if (global.chapter == 1)
		{
			global.msg[0] = stringsetloc("* There are many books./", "obj_readable_room1_slash_Other_10_gml_177_0");
			global.msg[1] = stringsetloc("* Tales of Snails - A Story Book./", "obj_readable_room1_slash_Other_10_gml_178_0");
			global.msg[2] = stringsetloc("* Snails Do Not Have Tails -&A Scientific Refutation./", "obj_readable_room1_slash_Other_10_gml_179_0");
			global.msg[3] = stringsetloc("* Can Snails Help Your Garden? Um, Not Really./", "obj_readable_room1_slash_Other_10_gml_180_0");
			global.msg[4] = stringsetloc("* And a signed copy of The History of Humans and Monsters, by Gerson Boom./%", "obj_readable_room1_slash_Other_10_gml_181_0");
			if (read > 0)
				global.msg[0] = stringsetloc("* There's no time to read anything right now./%", "obj_readable_room1_slash_Other_10_gml_184_0");
		}
		if (global.chapter == 2)
			msgsetloc(0, "* (There's no time to read books. Just generally.)/%", "obj_readable_room1_slash_Other_10_gml_253_0");
	}
}
if (room == room_torhouse)
{
	if (x > 190)
		global.msg[0] = stringsetloc("* There's a photo on the fridge^1. It's of you^1, your mother, and your brother./%", "obj_readable_room1_slash_Other_10_gml_200_0");
	if (x > 220)
	{
		if (instance_exists(obj_ch2_scene30b))
		{
			scr_speaker("no_name");
			msgsetloc(0, "* It's a sink. You could wash your hands here./", "obj_readable_room1_slash_Other_10_gml_272_0");
			msgnextloc("* ..^1. but^1, isn't the sink in the bathroom better?/%", "obj_readable_room1_slash_Other_10_gml_273_0_b");
		}
		else
		{
			global.msg[0] = stringsetloc("* There is some white fur stuck in the drain./%", "obj_readable_room1_slash_Other_10_gml_211_0");
		}
	}
	if (x > 260)
	{
		global.msg[0] = stringsetloc("* There's some cinnamony batter caked on the stovetop./%", "obj_readable_room1_slash_Other_10_gml_217_0");
		if (global.plot >= 250)
			global.msg[0] = stringsetloc("* (It's a butterscotch-cinnamon pie.^1)&* (It's still cooling.)/%", "obj_readable_room1_slash_Other_10_gml_220_0");
	}
	if (x > 300)
		global.msg[0] = stringsetloc("* (Cookie cutters for gingerbread monsters and gingerbread humans.)/%", "obj_readable_room1_slash_Other_10_gml_226_0");
	if (x > 340)
	{
		global.msg[0] = stringsetloc("* It's a trashcan^1.&* Somehow^1, it's emitting a pleasant floral scent./%", "obj_readable_room1_slash_Other_10_gml_231_0");
		if (global.flag[262] >= 4)
			global.msg[0] = stringsetloc("* It's a trashcan^1.&* Somehow^1, its floral scent has increased./%", "obj_readable_room1_slash_Other_10_gml_234_0");
	}
	if (x > 369)
		global.msg[0] = stringsetloc("* It's a landline phone^1.&* But you already have a cell phone./%", "obj_readable_room1_slash_Other_10_gml_240_0");
	if (x > 440)
	{
		if (global.chapter == 1)
			global.msg[0] = stringsetloc("* It's the TV^1.&* Doesn't seem to even be plugged in anymore./%", "obj_readable_room1_slash_Other_10_gml_245_0");
		else
			msgsetloc(0, "* (It's the TV^1.)&* (Looks like it's plugged in, but it's dusty.)/%", "obj_readable_room1_slash_Other_10_gml_320_0");
	}
	if (x > 560)
		global.msg[0] = stringsetloc("* It's a book of hymns./%", "obj_readable_room1_slash_Other_10_gml_251_0");
}
if (room == room_torbathroom)
{
	if (global.chapter == 1)
	{
		if (x >= 100)
		{
			global.msg[0] = stringsetloc("* On the shower ledge^1, there's a small container of apple-scented shampoo./", "obj_readable_room1_slash_Other_10_gml_263_0");
			global.msg[1] = stringsetloc("* ... and a gallon-sized container of pet shampoo./%", "obj_readable_room1_slash_Other_10_gml_264_0");
		}
		if (x >= 160 && x <= 190)
		{
			global.msc = 355;
			scr_text(global.msc);
		}
		if (x >= 190)
		{
			global.msg[0] = stringsetloc("* You looked inside the sink cupboard^1.&* There's.../", "obj_readable_room1_slash_Other_10_gml_273_0");
			global.msg[1] = stringsetloc("* A can of Ice-E's Cool Boys Body Spray \"Spray For The Boys,\" Flamin' Hot Pizza Flavor./", "obj_readable_room1_slash_Other_10_gml_274_0");
			global.msg[2] = stringsetloc("* It seems to be almost entirely full./%", "obj_readable_room1_slash_Other_10_gml_275_0");
		}
	}
	if (global.chapter == 2)
	{
		if (x >= 100)
		{
			if (global.plot == 210)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (No need for it.)/%", "obj_readable_room1_slash_Other_10_gml_350_0_b");
			}
			else if (global.plot > 210)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (The apple-scented shampoo feels lighter than usual.)/%", "obj_readable_room1_slash_Other_10_gml_354_0");
			}
			else
			{
				global.msg[0] = stringsetloc("* On the shower ledge^1, there's a small container of apple-scented shampoo./", "obj_readable_room1_slash_Other_10_gml_357_0_b");
				global.msg[1] = stringsetloc("* ... and a gallon-sized container of pet shampoo./%", "obj_readable_room1_slash_Other_10_gml_358_0");
			}
		}
		if (x >= 160 && x <= 190)
		{
			if (global.plot >= 210)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (No need for it.)/%", "obj_readable_room1_slash_Other_10_gml_367_0");
			}
			else
			{
				global.msc = 355;
				scr_text(global.msc);
			}
			with (obj_event_manager)
				trigger_event((0 << 0), (25 << 0));
		}
		if (x >= 190)
		{
			if (global.plot < 210)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (It is not yet time to wash your hands.)/%", "obj_readable_room1_slash_Other_10_gml_380_0");
			}
			if (global.plot == 210)
			{
				global.msc = 1087;
				scr_text(global.msc);
			}
			if (global.plot >= 211)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (Your hands are clean.)/%", "obj_readable_room1_slash_Other_10_gml_392_0");
			}
		}
	}
}
if (room == room_schoollobby)
{
	if (x >= 140 && x < 240)
	{
		if (tempvar == 0)
			global.msg[0] = stringsetloc("* The locker is locked./%", "obj_readable_room1_slash_Other_10_gml_335_0");
		if (tempvar == 1)
			global.msg[0] = stringsetloc("* The locker's lock is locked./%", "obj_readable_room1_slash_Other_10_gml_336_0");
		if (tempvar == 2)
			global.msg[0] = stringsetloc("* The lock's locker is locked./%", "obj_readable_room1_slash_Other_10_gml_337_0");
		if (tempvar == 3)
			global.msg[0] = stringsetloc("* The locker's lock's locker is locked./%", "obj_readable_room1_slash_Other_10_gml_338_0");
		if (tempvar >= 4)
			global.msg[0] = stringsetloc("* The locker is locked./%", "obj_readable_room1_slash_Other_10_gml_339_0");
		with (obj_readable_room1)
			tempvar += 1;
	}
	if (x == 240)
		global.msg[0] = stringsetloc("* (The locker is covered in Jockington memorabilia.)/%", "obj_readable_room1_slash_Other_10_gml_344_0");
	if (x >= 280)
	{
		global.msg[0] = stringsetloc("* (Are you ready for the Sadie Hawkman's dance?)/", "obj_readable_room1_slash_Other_10_gml_349_0");
		global.msg[1] = stringsetloc("* (At this dance^1, all the chaperones wear giant hawk heads...)/", "obj_readable_room1_slash_Other_10_gml_350_0");
		global.msg[2] = stringsetloc("* (... and screech at any students that make contact while dancing.)/%", "obj_readable_room1_slash_Other_10_gml_351_0");
	}
	if (x < 140)
	{
		global.msg[0] = stringsetloc("* (You look through the frosted window.)/", "obj_readable_room1_slash_Other_10_gml_356_0");
		global.msg[1] = stringsetloc("* (A blurry yellow object is teaching a bunch of blurry bored-looking objects.)/%", "obj_readable_room1_slash_Other_10_gml_357_0");
	}
	if (x >= 520)
	{
		global.msg[0] = stringsetloc("* (You ran the water fountain.^1)&* (It's lukewarm.)/%", "obj_readable_room1_slash_Other_10_gml_362_0");
		if (read == 1)
			global.msg[0] = stringsetloc("* (You ran the water fountain.^1)&* (It's tepid.)/%", "obj_readable_room1_slash_Other_10_gml_363_0");
		if (read >= 2)
			global.msg[0] = stringsetloc("* (You ran the water fountain.^1)&* (It's refreshingly cool.)/%", "obj_readable_room1_slash_Other_10_gml_364_0");
		if (global.plot < 8)
		{
			global.msg[0] = stringsetloc("* (You drank from the water fountain.)/", "obj_readable_room1_slash_Other_10_gml_368_0");
			scr_susface(1, 1);
			global.msg[2] = stringsetloc("* Heheh^1, people put their mouth on that^1, ya know./%", "obj_readable_room1_slash_Other_10_gml_370_0");
			if (read >= 1)
			{
				scr_susface(0, 9);
				global.msg[1] = stringsetloc("* That wasn't ENCOURAGEMENT^1, dumbass!/%", "obj_readable_room1_slash_Other_10_gml_375_0");
			}
		}
	}
	if (x >= 560)
	{
		global.msg[0] = stringsetloc("* Do you like^1, breathing^1? Moving fast^1, with or without^1, legs?/", "obj_readable_room1_slash_Other_10_gml_382_0");
		global.msg[1] = stringsetloc("* But usually^1, with legs?/", "obj_readable_room1_slash_Other_10_gml_383_0");
		global.msg[2] = stringsetloc("* Join the Cross Country Team with Jockington^1, and Noelle!/%", "obj_readable_room1_slash_Other_10_gml_384_0");
	}
	if (x >= 690)
		global.msg[0] = stringsetloc("* (Locker^1. It's locked.)/%", "obj_readable_room1_slash_Other_10_gml_390_0");
	if (x == 760)
		global.msg[0] = stringsetloc("* (This used to be your brother's locker.)/%", "obj_readable_room1_slash_Other_10_gml_396_0");
	if (x == 780)
		global.msg[0] = stringsetloc("* (It's your locker.^1)&* (It's empty.)/%", "obj_readable_room1_slash_Other_10_gml_400_0");
}
if (room == room_alphysclass)
{
	global.msg[0] = stringsetloc("* (You checked the time.)/", "obj_readable_room1_slash_Other_10_gml_409_0");
	global.msg[1] = stringsetloc("* (... It seems to be time for class.)/%", "obj_readable_room1_slash_Other_10_gml_410_0");
	if (global.plot >= 0)
	{
		global.msg[0] = stringsetloc("* (You checked the time.)/", "obj_readable_room1_slash_Other_10_gml_414_0");
		global.msg[1] = stringsetloc("* (... It seems to not be time for class.)/%", "obj_readable_room1_slash_Other_10_gml_415_0");
	}
	if (x > 240)
	{
		global.fe = 1;
		global.fc = 11;
		global.typer = 20;
		global.msg[0] = stringsetloc("* Um^1, Kris^1, the hope is that you.../", "obj_readable_room1_slash_Other_10_gml_423_0");
		global.msg[1] = stringsetloc("\\E0* ... choose someone in the class?/%", "obj_readable_room1_slash_Other_10_gml_424_0");
	}
	if (x < 200)
	{
		if (global.chapter == 1)
		{
			global.msg[0] = stringsetloc("* (The computer's wallpaper is a rotating slideshow of nature images.)/", "obj_readable_room1_slash_Other_10_gml_431_0");
			global.msg[1] = stringsetloc("* (... and^1, rarely, an image of two buff superheroes embracing^1, blushing.)/%", "obj_readable_room1_slash_Other_10_gml_432_0");
			if (global.plot >= 250)
			{
				global.msg[0] = stringsetloc("* (The computer is turned off.)/", "obj_readable_room1_slash_Other_10_gml_436_0");
				global.msg[1] = stringsetloc("* (Everything felt peaceful for a moment.)/%", "obj_readable_room1_slash_Other_10_gml_437_0");
			}
		}
		if (global.chapter == 2)
		{
			msgsetloc(0, "* (The computer wallpaper is updated.)/", "obj_readable_room1_slash_Other_10_gml_511_0");
			msgnextloc("* (The buff embracing heroes are now edited to be 4 inches apart.)/", "obj_readable_room1_slash_Other_10_gml_512_0");
			msgnextloc("* (There's dialogue about proper distancing at the school dance.)/", "obj_readable_room1_slash_Other_10_gml_513_0");
			msgnextloc("* (You wonder if your mother had some influence on this change.)/%", "obj_readable_room1_slash_Other_10_gml_514_0");
		}
	}
	if (x < 150)
		global.msg[0] = stringsetloc("* (It's a bunch of roses.)/%", "obj_readable_room1_slash_Other_10_gml_453_0");
	if (x < 80)
	{
		global.msg[0] = stringsetloc("* (Looks like motivational quotes from various literature.)/", "obj_readable_room1_slash_Other_10_gml_459_0");
		global.msg[1] = stringsetloc("* \"Try your best^1, Astral Wolf^1!\"&* \"Even in your darkest hour...!\"/", "obj_readable_room1_slash_Other_10_gml_460_0");
		global.msg[2] = stringsetloc("* (... that one seems to be from a video game.)/%", "obj_readable_room1_slash_Other_10_gml_461_0");
	}
}
if (room == room_torielclass)
{
	if (y <= (room_height / 2))
	{
		if (x >= 100)
		{
			global.msg[0] = stringsetloc("* (\"Ms. Toriel\" is written in cursive on the dry-erase board.)/", "obj_readable_room1_slash_Other_10_gml_473_0");
			global.msg[1] = stringsetloc("* (Seems like it hasn't been erased in a very long time.)/%", "obj_readable_room1_slash_Other_10_gml_474_0");
		}
		if (x >= 130)
		{
			if (global.chapter == 1)
			{
				global.msg[0] = stringsetloc("* (It's a computer.)/", "obj_readable_room1_slash_Other_10_gml_480_0");
				global.msg[1] = stringsetloc("* (Its desktop wallpaper is you and your brother dressed up for Halloween 8 years ago.)/%", "obj_readable_room1_slash_Other_10_gml_481_0");
			}
			if (global.chapter == 2)
			{
				msgsetloc(0, "* (The computer wallpaper is updated.)/", "obj_readable_room1_slash_Other_10_gml_554_0");
				msgnextloc("* (It's a picture of your brother and you playing video games.)/", "obj_readable_room1_slash_Other_10_gml_555_0");
				msgnextloc("* (Your brother is using the knockoff controller.)/%", "obj_readable_room1_slash_Other_10_gml_556_0");
			}
		}
		if (x >= 170)
		{
			if (global.chapter == 1)
			{
				global.msc = 350;
				scr_text(global.msc);
			}
			if (global.chapter == 2)
			{
				msgsetloc(0, "* (You uncapped the scented green marker.)/", "obj_readable_room1_slash_Other_10_gml_570_0");
				msgnextloc("* (It's almost dry^1, but that gives it a refined^1, aged apple bouquet.)/%", "obj_readable_room1_slash_Other_10_gml_571_0");
			}
		}
		if (x >= 198)
		{
			if (global.chapter == 1)
				global.msg[0] = stringsetloc("* (Some kind of teacher food.)/%", "obj_readable_room1_slash_Other_10_gml_510_0");
			if (global.chapter == 2)
				msgsetloc(0, "* (It's an orange. It's unknown if it's safe for teachers to eat this.)/%", "obj_readable_room1_slash_Other_10_gml_583_0");
		}
		if (x >= 204)
		{
			global.msg[0] = stringsetloc("* (It's a poster of several basic shapes.^1)&* (Circle, Oval, Square...)/", "obj_readable_room1_slash_Other_10_gml_521_0");
			global.msg[1] = stringsetloc("* (Hyperdodecahedron...)/%", "obj_readable_room1_slash_Other_10_gml_522_0");
		}
		if (x >= 230)
			global.msg[0] = stringsetloc("* (Kids' books.^1)&* (Some of them used to be yours.)/%", "obj_readable_room1_slash_Other_10_gml_526_0");
		if (x >= 256)
			global.msg[0] = stringsetloc("* (It's a primitive drawing of your mom.)/%", "obj_readable_room1_slash_Other_10_gml_530_0");
	}
	else if (x <= (room_width / 2))
	{
		global.msg[0] = stringsetloc("* (Some kind of primitive sculpture.)&* (Who knows what it represents?)/%", "obj_readable_room1_slash_Other_10_gml_537_0");
	}
	else
	{
		if (global.chapter == 1)
			global.msg[0] = stringsetloc("* (The Throne of the Gods.)/%", "obj_readable_room1_slash_Other_10_gml_543_0");
		if (global.chapter == 2)
			msgsetloc(0, "* (The Throne of the Gods grows higher.)&* (Is this hubris...?)/%", "obj_readable_room1_slash_Other_10_gml_616_0");
	}
}
if (room == room_schooldoor)
	global.msg[0] = stringsetloc("* (The door is locked.)/%", "obj_readable_room1_slash_Other_10_gml_626_0");
if (room == room_school_unusedroom)
{
	if (x < 80)
		global.msg[0] = stringsetloc("* (The door is locked.)/%", "obj_readable_room1_slash_Other_10_gml_631_0");
	if (x > 100)
		global.msg[0] = stringsetloc("* (It's a worn-down stuffed animal.)/%", "obj_readable_room1_slash_Other_10_gml_632_0");
	if (x > 160 && y < 100)
		global.msg[0] = stringsetloc("* (It's a lightswitch.)/%", "obj_readable_room1_slash_Other_10_gml_633_0");
	if (x > 160 && y > 100)
		global.msg[0] = stringsetloc("* (It's a checkerboard.^1)&* (There are pawns strewn on it.)/%", "obj_readable_room1_slash_Other_10_gml_634_0");
	if (x > 220)
		global.msg[0] = stringsetloc("* (Playing cards spill out of a deck in the closet.)/%", "obj_readable_room1_slash_Other_10_gml_635_0");
	if (x > 250)
	{
		global.msg[0] = stringsetloc("* (It's a yellowed, poorly-drawn picture of a green turtle.)/", "obj_readable_room1_slash_Other_10_gml_638_0");
		global.msg[1] = stringsetloc("* (It's signed 'Alvin.')/%", "obj_readable_room1_slash_Other_10_gml_639_0");
	}
	if (global.chapter == 2)
	{
		if (x > 160 && y > 100)
			msgsetloc(0, "* (You stared at the checkerboard from the doorway.)/%", "obj_readable_room1_slash_Other_10_gml_644_0");
		if (x > 220)
			msgsetloc(0, "* (Managed to cram everything into the closet^1. Even the rug.)/%", "obj_readable_room1_slash_Other_10_gml_645_0");
	}
}
if (room == room_hospital_lobby)
{
	if (x <= 160)
	{
		if (global.chapter == 1)
		{
			global.msg[0] = stringsetloc("* (It's one of those sliding bead toys that naturally spawns inside doctors' offices.)/", "obj_readable_room1_slash_Other_10_gml_586_0");
			global.msg[1] = stringsetloc("* (The beads march grimly along their set path.)/%", "obj_readable_room1_slash_Other_10_gml_587_0");
		}
		if (global.chapter == 2)
		{
			if (scr_sideb_get_phase() > 0)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (It's a toy with beads on a track.)/", "obj_readable_room1_slash_Other_10_gml_667_0_b");
				msgnextloc("* (One of the blue beads is broken and torn off.)/%", "obj_readable_room1_slash_Other_10_gml_668_0");
			}
			else
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (The beads of the toy march on.)/%", "obj_readable_room1_slash_Other_10_gml_672_0");
			}
		}
	}
	if (x >= 160)
	{
		if (global.chapter == 1)
		{
			global.msc = 360;
			scr_text(global.msc);
		}
		if (global.chapter == 2)
		{
			global.msc = 1155;
			scr_text(global.msc);
		}
	}
}
if (room == room_castle_town || room == room_dw_castle_area_2)
{
	global.msg[0] = stringsetloc("* (It looks like a shop^1, but the door is locked^1, and no one's inside...)/%", "obj_readable_room1_slash_Other_10_gml_598_0");
	if (read >= 1)
		global.msg[0] = stringsetloc("* (It's locked.)/%", "obj_readable_room1_slash_Other_10_gml_601_0");
	with (obj_readable_room1)
		read += 1;
}
if (room == room_dw_castle_west_cliff)
{
	if (global.chapter == 1)
	{
		global.typer = 31;
		global.fc = 2;
		global.fe = 1;
		global.msg[0] = stringsetloc("* Come to think of it^1, how did Lancer get up there...?/", "obj_readable_room1_slash_Other_10_gml_614_0");
		global.msg[1] = stringsetloc("\\E6* I suppose he rode his bike up the side of the cliff...?/%", "obj_readable_room1_slash_Other_10_gml_615_0");
	}
	if (global.chapter == 2)
	{
		scr_speaker("none");
		msgsetloc(0, "* (The rubble on the ground seems to have been dusted and polished.)/", "obj_readable_room1_slash_Other_10_gml_716_0");
		msgnextloc("* (Someone around here really cares about the details.)/%", "obj_readable_room1_slash_Other_10_gml_717_0");
		if (global.plot >= 10)
		{
			if (obj_mainchara.x > 280 && obj_mainchara.x < 360)
			{
				if (global.plot >= 200 && global.flag[309] < 9)
					global.tempflag[36] = 3;
				if (global.tempflag[36] == 1 || global.tempflag[36] == 2)
				{
					global.msc = 1240;
					scr_text(global.msc);
				}
				else
				{
					scr_speaker("no_name");
					msgsetloc(0, "* (There's a hole in the wall...)/", "obj_readable_room1_slash_Other_10_gml_740_0");
					msgnextloc("* (There's nothing inside.)/%", "obj_readable_room1_slash_Other_10_gml_741_0");
				}
			}
		}
	}
}
if (room == room_dw_castle_east_door)
{
	if (global.chapter == 2)
	{
		scr_speaker("none");
		msgsetloc(0, "* (It seems to be locked.^1)&* (It may never open again.)/%", "obj_readable_room1_slash_Other_10_gml_727_0");
	}
}
if (global.chapter == 1)
{
}
if (room == room_cc_clover)
{
	global.msg[0] = stringsetloc("* (It's a bed for three people^1, or one three-headed person.)/%", "obj_readable_room1_slash_Other_10_gml_662_0");
	if (x > (room_width / 2))
	{
		if (y < (room_height / 2))
		{
			global.msg[0] = stringsetloc("* (It's a giant baseball.^1)&* (For parties.)/%", "obj_readable_room1_slash_Other_10_gml_667_0");
			if (read >= 1)
			{
				global.msg[0] = stringsetloc("* (Actually^1, seems the giant baseball is a soccer ball that's been painted over.)/", "obj_readable_room1_slash_Other_10_gml_670_0");
				global.msg[1] = stringsetloc("* (It would be easier to draw that way.)/%", "obj_readable_room1_slash_Other_10_gml_671_0");
			}
		}
		else
		{
			global.msg[0] = stringsetloc("* (It's a tree.^1)&* (For parties.)/%", "obj_readable_room1_slash_Other_10_gml_676_0");
		}
	}
}
if (room == room_cc_lancer)
{
	if (y <= 220)
	{
		if (x < 200)
		{
			if (global.flag[411] == 0)
				global.flag[411] = 1;
			if (i_ex(obj_npc_room))
			{
				scr_speaker("lancer");
				msgsetloc(0, "\\E1* Wow!^1! It's better than I remember!!!!!/", "obj_readable_room1_slash_Other_10_gml_789_0");
				msgnextloc("\\E2* I even have my own bed now!!!/", "obj_readable_room1_slash_Other_10_gml_790_0");
				msgnextloc("\\E3* Now I don't have to sleep in a hole anymore!!!/", "obj_readable_room1_slash_Other_10_gml_791_0_b");
				scr_anyface_next("ralsei", "K");
				msgnextloc("\\EK* I thought you..^1. already had a bed./", "obj_readable_room1_slash_Other_10_gml_793_0_b");
				scr_anyface_next("lancer", "3");
				msgnextloc("\\E3* No^1, that was for the bike./%", "obj_readable_room1_slash_Other_10_gml_795_0");
			}
			else
			{
				scr_speaker("no one");
				msgsetloc(0, "* (It's a bikeless bed.)/%", "obj_readable_room1_slash_Other_10_gml_812_0");
			}
		}
		if (x > 300 && x < 350)
			global.msg[0] = stringsetloc("* (It's a hole^1. Presumably dug for fun.)/%", "obj_readable_room1_slash_Other_10_gml_698_0");
		if (x > 350 && x < 400)
		{
			global.msc = 430;
			scr_text(global.msc);
		}
		if (x >= 400)
			global.msg[0] = stringsetloc("* (It's some kind of digging implement.)/%", "obj_readable_room1_slash_Other_10_gml_707_0");
	}
	else
	{
		if (x < 200)
		{
			global.msg[0] = stringsetloc("* (You found 20 Rupys in the hole!)/", "obj_readable_room1_slash_Other_10_gml_714_0");
			global.msg[1] = stringsetloc("* (Unfortunately^1, that's not a useful currency here...)/%", "obj_readable_room1_slash_Other_10_gml_715_0");
		}
		if (x > 250 && x < 320)
			global.msg[0] = stringsetloc("* (It's a hole made recreationally.)/%", "obj_readable_room1_slash_Other_10_gml_719_0");
		if (x > 320)
			global.msg[0] = stringsetloc("* (There's salsa buried in the ground here.)/%", "obj_readable_room1_slash_Other_10_gml_723_0");
	}
}
if (room == room_hospital_rudy)
{
	if (x <= 75 && y < 160)
	{
		if (global.chapter == 1)
		{
			global.msg[0] = stringsetloc("* (It's an angel doll.^1)&* (Its lack of facial features is unsettling.)/", "obj_readable_room1_slash_Other_10_gml_734_0");
			scr_rudface(1, 0);
			global.msg[2] = stringsetloc("* That angel^1?&* Noelle n' Dess made it in youth group./", "obj_readable_room1_slash_Other_10_gml_736_0");
			global.msg[3] = stringsetloc("\\E2* It's kind of like a good luck charm to me now./", "obj_readable_room1_slash_Other_10_gml_737_0");
			global.msg[4] = stringsetloc("\\E4* Oh^1, right^1, you and Azzy tried to make one too.../", "obj_readable_room1_slash_Other_10_gml_738_0");
			global.msg[5] = stringsetloc("\\E7* But you wasted the whole time making huge wings for it!/%", "obj_readable_room1_slash_Other_10_gml_739_0");
			if (read >= 1)
				global.msg[0] = stringsetloc("* (It's an angel doll.^1)&* (Its lack of facial features is unsettling.)/%", "obj_readable_room1_slash_Other_10_gml_742_0");
		}
		if (global.chapter == 2)
		{
			if (read == 0)
			{
				scr_speaker("susie");
				msgsetloc(0, "\\EC* ..^1. so why do you collect creepy dolls?/", "obj_readable_room1_slash_Other_10_gml_855_0_b");
				scr_anyface_next("rudy", "0");
				msgnextloc("\\E0* Hey^1, Noelle and her sister made that. Respect it!/", "obj_readable_room1_slash_Other_10_gml_857_0");
				scr_anyface_next("susie", "K");
				msgnextloc("\\E0* (Noelle's sister...)/%", "obj_readable_room1_slash_Other_10_gml_859_0");
			}
			else
			{
				scr_speaker("susie");
				msgsetloc(0, "\\EC* (...)/%", "obj_readable_room1_slash_Other_10_gml_863_0");
			}
		}
	}
	if (x <= 75 && y > 160)
	{
		if (global.chapter == 1)
		{
			if (global.flag[255] < 2)
			{
				global.typer = 55;
				global.fc = 15;
				global.fe = 4;
				global.msg[0] = stringsetloc("* Oh^1, so you're just here to use the sink^1, huh?/", "obj_readable_room1_slash_Other_10_gml_754_0");
				global.msg[1] = stringsetloc("\\E7* Come on^1, Kris^1!&* Be a little friendlier!/%", "obj_readable_room1_slash_Other_10_gml_755_0");
			}
			else
			{
				global.msg[0] = stringsetloc("* (It's a sink.)/", "obj_readable_room1_slash_Other_10_gml_759_0");
				scr_rudface(1, 2);
				global.msg[2] = stringsetloc("* Hey^1, Kris^1, is that sink really more interesting than me?/%", "obj_readable_room1_slash_Other_10_gml_761_0");
			}
		}
		if (global.chapter == 2)
		{
			if (global.flag[461] == 0)
				global.flag[461] = 1;
			var sinkcheck = global.flag[278] == 1;
			if (sinkcheck)
			{
				scr_speaker("rudy");
				msgsetloc(0, "\\E2* Dammit all^1, Kris^1! You really love that sink^1, huh?/", "obj_readable_room1_slash_Other_10_gml_895_0");
				msgnextloc("\\E0* That's Sink 2^1, Rudy 0./", "obj_readable_room1_slash_Other_10_gml_896_0");
				msgnextloc("\\E2* Don't worry^1, I'm gonna pull it back^1! You wait!/%", "obj_readable_room1_slash_Other_10_gml_897_0_b");
			}
			else if (read == 0)
			{
				scr_speaker("susie");
				msgsetloc(0, "\\E0* ..^1. hey^1, Kris^1, why are you checking the sink?/", "obj_readable_room1_slash_Other_10_gml_903_0");
				scr_anyface_next("rudy", "7");
				msgnextloc("\\E7* That's what I'M asking^1, sweetheart!/%", "obj_readable_room1_slash_Other_10_gml_905_0_b");
			}
			else
			{
				scr_speaker("rudy");
				msgsetloc(0, "\\E0* Practicing for tonight's.../", "obj_readable_room1_slash_Other_10_gml_909_0");
				msgnextloc("\\E2* Handwashing marathon^1, Kris?/%", "obj_readable_room1_slash_Other_10_gml_910_0");
			}
		}
	}
	if (x >= 95 && x <= 105)
	{
		global.msg[0] = stringsetloc("* (Patient Name:)&* (Rudolph \"Rudy\" Holiday)/", "obj_readable_room1_slash_Other_10_gml_771_0");
		scr_rudface(1, 2);
		global.msg[2] = stringsetloc("* Hey Kris^1, you forget my name or something!?/%", "obj_readable_room1_slash_Other_10_gml_773_0");
		if (read >= 1)
		{
			scr_rudface(1, 2);
			global.msg[2] = stringsetloc("* Kris^1, you jealous you don't have your own wall plaque?/", "obj_readable_room1_slash_Other_10_gml_777_0");
			global.msg[3] = stringsetloc("* Amazing what's being done with our taxpayer dollars^1, huh?/%", "obj_readable_room1_slash_Other_10_gml_778_0");
		}
	}
	if (x == 205)
	{
		if (global.chapter == 1)
		{
			global.msg[0] = stringsetloc("* (It's a bunch of roses in a glass container.)/", "obj_readable_room1_slash_Other_10_gml_784_0");
			scr_rudface(1, 4);
			global.msg[2] = stringsetloc("* Hey^1, I'm happy your dad brought me flowers^1, but.../", "obj_readable_room1_slash_Other_10_gml_786_0");
			global.msg[3] = stringsetloc("\\E2* Roses!^1? What is this^1, man^1? Beauty and the Beast?/", "obj_readable_room1_slash_Other_10_gml_787_0");
			global.msg[4] = stringsetloc("\\E7* That ain't gonna work^1, man^1! We're both beasts!/%", "obj_readable_room1_slash_Other_10_gml_788_0");
			if (read >= 1)
			{
				global.msg[0] = stringsetloc("* (It's a bunch of roses.^1)&* (They seem healthy.)/", "obj_readable_room1_slash_Other_10_gml_791_0");
				scr_rudface(1, 0);
				global.msg[2] = stringsetloc("* Kris^1, I love your dad^1, but.../", "obj_readable_room1_slash_Other_10_gml_793_0");
				global.msg[3] = stringsetloc("\\E7* Asgore^1, if you wanna go to prom with me^1, just ask!/%", "obj_readable_room1_slash_Other_10_gml_794_0");
			}
		}
		if (global.chapter == 2)
		{
			if (read == 0)
			{
				scr_speaker("susie");
				msgsetloc(0, "\\EA* Woah^1, the hell is bringing you flowers?/", "obj_readable_room1_slash_Other_10_gml_952_0");
				scr_anyface_next("rudy", "3");
				msgnextloc("\\E3* Hey^1, what's wrong with a married man getting flowers?/", "obj_readable_room1_slash_Other_10_gml_954_0");
				scr_anyface_next("susie", "K");
				msgnextloc("\\EK* ..^1. So your^1, uh^1, wife gave them to you?/", "obj_readable_room1_slash_Other_10_gml_956_0");
				scr_anyface_next("rudy", 2);
				msgnextloc("\\E2* Nah^1, HAHAHA^1! I'm messin with ya^1! Kris's dad did!/", "obj_readable_room1_slash_Other_10_gml_958_0");
				scr_anyface_next("susie", "K");
				msgnextloc("\\EK* (Not gonna try to understand this.)/%", "obj_readable_room1_slash_Other_10_gml_960_0");
			}
			else
			{
				scr_speaker("rudy");
				msgsetloc(0, "\\E7* Flowers? I'm trying to heal^1, man^1! Not get hayfever!/", "obj_readable_room1_slash_Other_10_gml_964_0");
				scr_anyface_next("susie", 12);
				msgnextloc("\\EC* ..^1. Should Kris tell him to stop?/", "obj_readable_room1_slash_Other_10_gml_966_0");
				scr_anyface_next("rudy", 2);
				msgnextloc("\\E2* What? Hell no^1! When did I say that? Hahaha!/%", "obj_readable_room1_slash_Other_10_gml_968_0");
			}
		}
	}
	if (x > 215)
	{
		global.msg[0] = stringsetloc("* (It's a get well soon card from your mom.^1)&* (It's signed inside.)/", "obj_readable_room1_slash_Other_10_gml_801_0");
		scr_rudface(1, 0);
		global.msg[2] = stringsetloc("* Hey^1, Kris^1, you KNOW you signed the inside^1, right?/", "obj_readable_room1_slash_Other_10_gml_803_0");
		global.msg[3] = stringsetloc("\\E2* Why are you staring at it like you haven't seen it before?/", "obj_readable_room1_slash_Other_10_gml_804_0");
		global.msg[4] = stringsetloc("\\E7* Is your penmanship that good??? Was I not moved enough???/%", "obj_readable_room1_slash_Other_10_gml_805_0");
	}
	if (x > 230)
		global.msg[0] = stringsetloc("* (It's a chair.)/%", "obj_readable_room1_slash_Other_10_gml_813_0");
}
if (room == room_hospital_hallway)
	global.msg[0] = stringsetloc("* (It's a diagram showing a bunch of lines and a circle.)/%", "obj_readable_room1_slash_Other_10_gml_819_0");
if (room == room_hospital_room2)
{
	if (y >= 160)
	{
		global.msg[0] = stringsetloc("* (It's a regular sink.)/%", "obj_readable_room1_slash_Other_10_gml_826_0");
		if (tempvar >= 1)
		{
			global.msg[0] = stringsetloc("* (It's a clone of the other sink.)/", "obj_readable_room1_slash_Other_10_gml_829_0");
			global.msg[1] = stringsetloc("* (Perhaps there was originally one tall sink that was cut in half to create both of them.)/%", "obj_readable_room1_slash_Other_10_gml_830_0");
		}
		with (obj_readable_room1)
		{
			if (y >= 160)
				tempvar += 1;
		}
	}
	else
	{
		if (x <= 140)
		{
			global.msg[0] = stringsetloc("* (You looked inside the cupboard.)/", "obj_readable_room1_slash_Other_10_gml_843_0");
			global.msg[1] = stringsetloc("* (... a very small obligatory piano is hiding inside.)/%", "obj_readable_room1_slash_Other_10_gml_844_0");
		}
		if (x >= 150)
		{
			global.msg[0] = stringsetloc("* (It's a classic 1-to-10 pain scale^1, using ICE-E as a model.)/", "obj_readable_room1_slash_Other_10_gml_848_0");
			global.msg[1] = stringsetloc("* (At 0 pain^1, he's happy.^1)&* (At 10 pain^1, he's happy and sweating.)/%", "obj_readable_room1_slash_Other_10_gml_849_0");
			if (x < 200)
			{
				with (obj_event_manager)
					trigger_event((0 << 0), (6 << 0), (935 << 0));
			}
		}
		if (x >= 200)
		{
			if (global.chapter == 1)
			{
				global.msg[0] = stringsetloc("* This castle's WHITE WIZARDs relegated me to this HEALING CHAMBER.../", "obj_readable_room1_slash_Other_10_gml_855_0");
				global.msg[1] = stringsetloc("* But my BLOOD is BOILING FOR BATTLE!!!/%", "obj_readable_room1_slash_Other_10_gml_856_0");
			}
			if (global.chapter == 2)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (Looks like she's resting her voice.)/%", "obj_readable_room1_slash_Other_10_gml_1036_0");
			}
		}
	}
}
if (room == room_library)
{
	if (x < 80)
	{
		if (global.chapter == 1)
		{
			global.msg[0] = stringsetloc("* \"Lord of the Hammer\"/", "obj_readable_room1_slash_Other_10_gml_875_0");
			global.msg[1] = stringsetloc("* (First in the award-winning fiction series by lauded historian Gerson Boom.)/%", "obj_readable_room1_slash_Other_10_gml_876_0");
		}
		if (global.chapter == 2)
		{
			if (scr_havechar(2))
			{
				if (read == 0)
				{
					scr_speaker("no_name");
					msgsetloc(0, "* (It's the Lord of the Hammer series.)/", "obj_readable_room1_slash_Other_10_gml_1062_0");
					scr_anyface_next("susie", "Y");
					msgnextloc("\\EY* Hahaha^1, Kris^1, you READ that nerdy stuff? Heh!/", "obj_readable_room1_slash_Other_10_gml_1064_0");
					msgnextloc("\\EA* Giant swords^1, hammers^1, bloody battles.../", "obj_readable_room1_slash_Other_10_gml_1065_0");
					msgnextloc("\\EK* ..^1. uh^1, so if there's any cool parts^1, you'd tell me^1, right?/%", "obj_readable_room1_slash_Other_10_gml_1066_0");
				}
				else
				{
					scr_speaker("susie");
					msgsetloc(0, "\\EK* Heh^1, can't believe you read things with^1, uh..^1. words./%", "obj_readable_room1_slash_Other_10_gml_1070_0");
				}
			}
			else
			{
				global.msg[0] = stringsetloc("* \"Lord of the Hammer\"/", "obj_readable_room1_slash_Other_10_gml_875_0");
				global.msg[1] = stringsetloc("* (First in the award-winning fiction series by lauded historian Gerson Boom.)/%", "obj_readable_room1_slash_Other_10_gml_876_0");
			}
		}
		if (y > 80)
		{
			if (global.chapter == 1)
			{
				global.msg[0] = stringsetloc("* (It's an unlabelled book. You look inside...)/", "obj_readable_room1_slash_Other_10_gml_881_0");
				global.msg[1] = stringsetloc("* oh.... i accidentally returned my personal journal instead of my book.../", "obj_readable_room1_slash_Other_10_gml_882_0");
				global.msg[2] = stringsetloc("* oh no.... they're putting it into their catalogue.../", "obj_readable_room1_slash_Other_10_gml_883_0");
				global.msg[3] = stringsetloc("* oh no... i have to take it out every time i want to write a new entry.../%", "obj_readable_room1_slash_Other_10_gml_884_0");
			}
			if (global.chapter == 2)
			{
				global.msc = 1159;
				scr_text(global.msc);
			}
		}
	}
	if (x > 70)
	{
		if (global.chapter == 1)
		{
			global.msg[0] = stringsetloc("* \"Please remember my name. Please. I wrote a book to help you remember.\"/", "obj_readable_room1_slash_Other_10_gml_892_0");
			global.msg[1] = stringsetloc("* (By Hots Fireguy)/%", "obj_readable_room1_slash_Other_10_gml_893_0");
		}
		if (global.chapter == 2)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (It's a book of magic tricks.)/", "obj_readable_room1_slash_Other_10_gml_1110_0");
			msgnextloc("* (Most of them require orbs or floating hands.)/%", "obj_readable_room1_slash_Other_10_gml_1111_0_b");
		}
		if (y > 80)
		{
			var have_susie = global.chapter == 2 && scr_havechar(2);
			if (have_susie)
			{
				if (read == 0)
				{
					scr_speaker("no_name");
					msgsetloc(0, "* (There's a book here.^1)&* (You licked the page...)/", "obj_readable_room1_slash_Other_10_gml_1124_0");
					scr_anyface_next("susie", 0);
					msgnextloc("* Hey^1, Kris^1, what the HELL are you doing?/", "obj_readable_room1_slash_Other_10_gml_1126_0_b");
					msgnextloc("\\E5* There's a thing called sharing^1, dumbass. Heard of it?/%", "obj_readable_room1_slash_Other_10_gml_1127_0");
				}
				else
				{
					scr_speaker("susie");
					msgsetloc(0, "\\E2* Look^1, the books are public for a reason./%", "obj_readable_room1_slash_Other_10_gml_1131_0");
				}
			}
			else
			{
				global.msg[0] = stringsetloc("* (There's a book here.^1)&* (You lick the page...^1)&* (It's delicious!)/", "obj_readable_room1_slash_Other_10_gml_897_0");
				global.msg[1] = stringsetloc("* (This must be what they meant by flavor text.)/%", "obj_readable_room1_slash_Other_10_gml_898_0");
			}
		}
	}
	if (x > 110)
	{
		global.msg[0] = stringsetloc("* (Computer Lab.^1)&* (Please surf the web responsibly.)/", "obj_readable_room1_slash_Other_10_gml_905_0");
		global.msg[1] = stringsetloc("* (In fact^1, maybe don't do it at all.)/%", "obj_readable_room1_slash_Other_10_gml_906_0");
	}
	if (x > 135)
	{
		if (global.chapter == 1)
		{
			global.msg[0] = stringsetloc("* (You looked through the window to the computer lab...)/", "obj_readable_room1_slash_Other_10_gml_911_0");
			global.msg[1] = stringsetloc("* (There seems to be a dog inside working at a computer...)/", "obj_readable_room1_slash_Other_10_gml_912_0");
			global.msg[2] = stringsetloc("* (Seems like it's making a game...)/", "obj_readable_room1_slash_Other_10_gml_913_0");
			global.msg[3] = stringsetloc("* (Seems like you shouldn't interrupt it...)/", "obj_readable_room1_slash_Other_10_gml_914_0");
			global.msg[4] = stringsetloc("* (Seems like when the game's finished^1, you can go in...)/", "obj_readable_room1_slash_Other_10_gml_915_0");
			global.msg[5] = stringsetloc("* (You just have to trust the dog...)/%", "obj_readable_room1_slash_Other_10_gml_916_0");
			if (read >= 1)
			{
				global.msg[0] = stringsetloc("* (You looked through the window to the computer lab...)/", "obj_readable_room1_slash_Other_10_gml_920_0");
				global.msg[1] = stringsetloc("* (Now the dog is just playing the maracas...)/", "obj_readable_room1_slash_Other_10_gml_921_0");
				global.msg[2] = stringsetloc("* (It's not doing any work...)/", "obj_readable_room1_slash_Other_10_gml_922_0");
				global.msg[3] = stringsetloc("* (This might take a while...)/%", "obj_readable_room1_slash_Other_10_gml_923_0");
			}
		}
		if (global.chapter == 2)
		{
			if (global.plot <= 205)
				global.msg[0] = stringsetloc("* No reason to go back in there./%", "obj_readable_room1_slash_Other_10_gml_1172_0_b");
		}
	}
	if (x > 190)
	{
		if (global.chapter >= 1)
		{
			scr_speaker("no_name");
			global.msg[0] = stringsetloc("* (There's a crude drawing of an ice-cube wearing a headband.)/", "obj_readable_room1_slash_Other_10_gml_931_0");
			global.msg[1] = stringsetloc("* (\"The TeenZone: Where Teen's Can Be Kid's.\")/", "obj_readable_room1_slash_Other_10_gml_932_0");
			global.msg[2] = stringsetloc("* (A feeling of immense relief washes over you.)/%", "obj_readable_room1_slash_Other_10_gml_933_0");
		}
	}
	if (x > 220)
	{
		if (global.chapter == 1)
		{
			scr_speaker("no_name");
			global.msc = 185;
			scr_text(global.msc);
		}
		if (global.chapter >= 2)
		{
			if (scr_havechar(2))
			{
				scr_speaker("susie");
				msgsetloc(0, "* (Kris^1, we could go anywhere...)/", "obj_readable_room1_slash_Other_10_gml_1193_0");
				msgnextloc("\\E1* (And you brought us to the Teen Zone.)/%", "obj_readable_room1_slash_Other_10_gml_1194_0");
			}
			else
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (It's the weekly cartoon review.)/", "obj_readable_room1_slash_Other_10_gml_1198_0");
				msgnextloc("* (Just looking at cartoon criticism is sapping your energy rapidly.)/%", "obj_readable_room1_slash_Other_10_gml_1199_0");
			}
		}
	}
}
if (room == room_graveyard)
{
	global.msg[0] = stringsetloc("* GERSON&* RENOWNED HISTORIAN, AUTHOR, AND TEACHER/%", "obj_readable_room1_slash_Other_10_gml_948_0");
	if (x >= 150)
		global.msg[0] = stringsetloc("* CRYSTAL&* A SNOWY GEMSTONE FOR A PROUD MOTHER/%", "obj_readable_room1_slash_Other_10_gml_951_0");
	if (x >= 200)
		global.msg[0] = stringsetloc("* MUTTLER&* A BIG BONE FOR THE LEADER OF THE PACK/%", "obj_readable_room1_slash_Other_10_gml_955_0");
	if (x >= 290)
	{
		if (global.chapter == 1)
			global.msg[0] = stringsetloc("* SHYRA&* A KARAOKE MICROPHONE FOR A BRAVE SINGER/%", "obj_readable_room1_slash_Other_10_gml_961_0");
		if (global.chapter == 2)
		{
			scr_speaker("susie");
			msgsetloc(0, "* ..^1. So^1, uh^1, this is your idea of hanging out^1, Kris?/", "obj_readable_room1_slash_Other_10_gml_1237_0");
			msgnextloc("\\EK* Going to the graveyard?/", "obj_readable_room1_slash_Other_10_gml_1238_0");
			msgnextloc("\\E2* ..^1. works for me I guess./%", "obj_readable_room1_slash_Other_10_gml_1239_0");
		}
	}
}
if (room == room_townhall)
{
	if (x >= 180)
		global.msg[0] = stringsetloc("* (It's a painting of the town.)/%", "obj_readable_room1_slash_Other_10_gml_983_0");
	if (x >= 240)
		global.msg[0] = stringsetloc("* (It's a small pine tree.)/%", "obj_readable_room1_slash_Other_10_gml_988_0");
	if (y >= 160)
		global.msg[0] = stringsetloc("* (It's a chair.^1)&* (Maybe it's into politics.)/%", "obj_readable_room1_slash_Other_10_gml_991_0");
}
if (room == room_beach)
{
	global.msc = 192;
	scr_text(global.msc);
}
if (room == room_diner)
	global.msg[0] = stringsetloc("* (Rave reviews and autographs.^1)&* (... from various normal townspeople.)/%", "obj_readable_room1_slash_Other_10_gml_1003_0");
if (room == room_flowershop_1f)
{
	if (y > 100)
	{
		if (x < 100)
			global.msg[0] = stringsetloc("* (It's a cash register.^1)&* (There's not much change inside.)/%", "obj_readable_room1_slash_Other_10_gml_1010_0");
		if (x < 70)
			global.msg[0] = stringsetloc("* (It's a flower.)/%", "obj_readable_room1_slash_Other_10_gml_1011_0");
		if (x < 50)
			global.msg[0] = stringsetloc("* (It's some kind of catalogue..^1. There's a car magazine underneath.)/%", "obj_readable_room1_slash_Other_10_gml_1012_0");
	}
	if (y < 80)
	{
		if (x == 140)
			global.msg[0] = stringsetloc("* (It's an expertly trimmed arrangement.)/%", "obj_readable_room1_slash_Other_10_gml_1017_0");
		if (x != 140)
			global.msg[0] = stringsetloc("* (There are various flowers inside.)/%", "obj_readable_room1_slash_Other_10_gml_1018_0");
	}
}
if (room == room_flowershop_2f)
{
	if (y < 50)
		global.msg[0] = stringsetloc("* (It's a door.^1)&* (It's locked.)/%", "obj_readable_room1_slash_Other_10_gml_1027_0");
	if (y > 60)
	{
		global.msg[0] = stringsetloc("* (Various bags of soil.)/%", "obj_readable_room1_slash_Other_10_gml_1031_0");
		if (x >= 60)
			global.msg[0] = stringsetloc("* (It's a dirty watering can.)/%", "obj_readable_room1_slash_Other_10_gml_1032_0");
		if (x >= 180)
			global.msg[0] = stringsetloc("* (There is some dirty fur stuck in the drain.)/%", "obj_readable_room1_slash_Other_10_gml_1034_0");
		if (x >= 260)
			global.msg[0] = stringsetloc("* (It's a small TV.)&* (On top are some superhero comics.)/%", "obj_readable_room1_slash_Other_10_gml_1037_0");
	}
	if (y > 120)
	{
		if (x < 160)
		{
			global.msg[0] = stringsetloc("* (It's a note.)&* (It says...)/", "obj_readable_room1_slash_Other_10_gml_1044_0");
			global.msg[1] = stringsetloc("* No rent received. Again.&* Stop giving away flowers.&* Start selling them./", "obj_readable_room1_slash_Other_10_gml_1045_0");
			global.msg[2] = stringsetloc("* You have one month.& &         - C/%", "obj_readable_room1_slash_Other_10_gml_1046_0");
		}
		else
		{
			if (read == 0)
			{
				global.msg[0] = stringsetloc("* (It's an air mattress.^1)&* (It's certainly not king-sized...)/", "obj_readable_room1_slash_Other_10_gml_1052_0");
				scr_asgface(1, 4);
				global.msg[2] = stringsetloc("* Kris^1, do you want to sleep over?/", "obj_readable_room1_slash_Other_10_gml_1054_0");
				global.msg[3] = stringsetloc("\\E1* You could use that air mattress^1, and I could.../", "obj_readable_room1_slash_Other_10_gml_1055_0");
				global.msg[4] = stringsetloc("\\E2* Er^1, use those bags of soil..^1.&* Perhaps not./%", "obj_readable_room1_slash_Other_10_gml_1056_0");
			}
			if (read >= 1)
				global.msg[0] = stringsetloc("* (It's an air mattress.^1)&* (It's certainly not king-sized...)/%", "obj_readable_room1_slash_Other_10_gml_1060_0");
		}
	}
	if (x == 225)
	{
		global.msc = 210;
		scr_text(global.msc);
	}
}
if (room == room_alphysalley)
{
	if (x <= 130)
	{
		if (global.chapter == 1)
			global.msg[0] = stringsetloc("* (It's a saucer of milk.)/%", "obj_readable_room1_slash_Other_10_gml_1077_0");
		if (global.chapter == 2)
		{
			scr_speaker("susie");
			msgsetloc(0, "\\E7* Hey Kris^1, this free milk? It's amazing./", "obj_readable_room1_slash_Other_10_gml_1353_0");
			msgnextloc("\\E2* It just magically refreshes itself over night./%", "obj_readable_room1_slash_Other_10_gml_1354_0");
		}
	}
	else
	{
		if (global.chapter == 1)
		{
			global.msg[0] = stringsetloc("* (It's a dirty trash can.)/%", "obj_readable_room1_slash_Other_10_gml_1091_0");
			if (y <= 100)
				global.msg[0] = stringsetloc("* (It's a trash can full of well-kept flowers.)/%", "obj_readable_room1_slash_Other_10_gml_1094_0");
		}
		if (global.chapter == 2)
		{
			scr_speaker("bratty");
			msgsetloc(0, "\\E3* (Um^1, HEY? That's MY trash from other people's houses.)/", "obj_readable_room1_slash_Other_10_gml_1371_0");
			msgnextloc("\\E6* (Like^1, PRIVACY much? God^1, living with Azzy made you weird.)/%", "obj_readable_room1_slash_Other_10_gml_1372_0");
		}
	}
}
if (room == room_town_south)
{
	if (x <= 100)
	{
		if (global.chapter == 1)
		{
			global.msg[0] = stringsetloc("* (Police tape is blocking the way.)/", "obj_readable_room1_slash_Other_10_gml_1111_0");
			global.msg[1] = stringsetloc("* (The tape simply reads \"NGAHHHHH!!!\")/%", "obj_readable_room1_slash_Other_10_gml_1112_0");
		}
		if (global.chapter == 2)
		{
			if (read == 0)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (There's more police tape.)/", "obj_readable_room1_slash_Other_10_gml_1393_0");
				msgnextloc("* (It says \"NGAHHHH!!^1! I MEAN IT!!!\")/", "obj_readable_room1_slash_Other_10_gml_1394_0");
				msgnextloc("* (It's not clear what is meant by that.)/%", "obj_readable_room1_slash_Other_10_gml_1395_0");
			}
			else
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (There's a lot of police tape.)/%", "obj_readable_room1_slash_Other_10_gml_1399_0");
			}
		}
	}
	if (x > 200 && x < 300)
	{
		if (read == 0)
		{
			snd_play(snd_knock);
			global.msg[0] = stringsetloc("* (You knocked on the door to the Police Station.)/", "obj_readable_room1_slash_Other_10_gml_1119_0");
			global.msg[1] = stringsetloc("* (...)/", "obj_readable_room1_slash_Other_10_gml_1120_0");
			global.msg[2] = stringsetloc("* (Someone's coming up to the window.)/%", "obj_readable_room1_slash_Other_10_gml_1121_0");
			with (obj_town_event)
				con = 50;
		}
		else
		{
			global.msg[0] = stringsetloc("* (Seems like the police aren't really feelin' it right now...)/%", "obj_readable_room1_slash_Other_10_gml_1126_0");
		}
	}
}
if (room == room_town_mid)
{
	if (x > 260)
	{
		global.msg[0] = stringsetloc("* (Here at ICE-E'S PEZZA, You're Family.)/", "obj_readable_room1_slash_Other_10_gml_1136_0");
		global.msg[1] = stringsetloc("* (... Is Going to Love it!)/%", "obj_readable_room1_slash_Other_10_gml_1137_0");
	}
	if (x >= 300)
	{
		global.msg[0] = stringsetloc("* (The entrance is locked.^1)&* (No one's inside.)/", "obj_readable_room1_slash_Other_10_gml_1141_0");
		global.msg[1] = stringsetloc("* (Seems like all of the employees are outside in costume.)/%", "obj_readable_room1_slash_Other_10_gml_1142_0");
	}
	if (x >= 360)
		global.msg[0] = stringsetloc("* (Ice E's P\"E\"ZZA, You're number \"#1\" Spot for a piping hot pe\"E\"ce of PEZZA.)/%", "obj_readable_room1_slash_Other_10_gml_1146_0");
	if (x >= 1240)
	{
		snd_play(snd_knock);
		if (global.chapter == 1)
		{
			global.msg[0] = stringsetloc("* (Knock knock knock...)/", "obj_readable_room1_slash_Other_10_gml_1154_0");
			global.msg[1] = stringsetloc("* (...)/", "obj_readable_room1_slash_Other_10_gml_1444_0");
			global.msg[2] = stringsetloc("* (No response...^1)&* (... but the distant trousle of bones.)/%", "obj_readable_room1_slash_Other_10_gml_1156_0");
		}
		if (global.chapter == 2)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (Knock knock knock.)/", "obj_readable_room1_slash_Other_10_gml_1451_0");
			msgnextloc("* (Faintly...^1. faintly^1, a trousle..^1. growing further away...)/%", "obj_readable_room1_slash_Other_10_gml_1452_0");
		}
		if (x >= 1500)
		{
			if (global.chapter == 1)
			{
				global.msg[1] = stringsetloc("* Ooo^1, are you the human that lives at the top of town?/", "obj_readable_room1_slash_Other_10_gml_1170_0");
				global.msg[2] = stringsetloc("* Wow^1, my mommy told me about you.../", "obj_readable_room1_slash_Other_10_gml_1171_0");
				global.msg[3] = stringsetloc("* Does it hurt to be made of blood???/%", "obj_readable_room1_slash_Other_10_gml_1172_0");
			}
			if (global.chapter == 2)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (Knock knock knock)/", "obj_readable_room1_slash_Other_10_gml_1483_0");
				msgnextloc("* Oooo^1, is that a humannnn?!/", "obj_readable_room1_slash_Other_10_gml_1467_0");
				msgnextloc("* If humans are made of bones.../", "obj_readable_room1_slash_Other_10_gml_1468_0");
				msgnextloc("* Where does skeletons come from...?/%", "obj_readable_room1_slash_Other_10_gml_1469_0");
			}
		}
		if (x >= 1640)
		{
			if (global.chapter == 1)
			{
				global.msg[1] = stringsetloc("* Huh..^1. that sounds like the knock of a beginner./", "obj_readable_room1_slash_Other_10_gml_1187_0");
				global.msg[2] = stringsetloc("* Come back when you've gotten better at knocking!/%", "obj_readable_room1_slash_Other_10_gml_1188_0");
			}
			if (global.chapter == 2)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (Knock knock knock)/", "obj_readable_room1_slash_Other_10_gml_1483_0");
				msgnextloc("* Hmm..^1. that knocking..^1. it's amateur!/", "obj_readable_room1_slash_Other_10_gml_1484_0");
				msgnextloc("* You've still got a long way to go!/%", "obj_readable_room1_slash_Other_10_gml_1485_0");
			}
		}
		if (x >= 1860)
		{
			if (global.chapter == 1)
			{
				global.msg[1] = stringsetloc("* OY^1, Snowy^1, whaddid I TELL YAH about knockin' the door so hahd!/", "obj_readable_room1_slash_Other_10_gml_1204_0");
				global.msg[2] = stringsetloc("* Don't^1!&* Do^1!&* It!/", "obj_readable_room1_slash_Other_10_gml_1205_0");
				global.msg[3] = stringsetloc("* It's REALLY gonna hurt yah face^1! We don't have arms^1, yah know!/%", "obj_readable_room1_slash_Other_10_gml_1206_0");
			}
			if (global.chapter == 2)
			{
				var visitedshelter = global.flag[315] == 1;
				if (!visitedshelter)
				{
					scr_speaker("no_name");
					msgsetloc(0, "* (Knock knock knock)/", "obj_readable_room1_slash_Other_10_gml_1504_0");
					scr_anyface_next("susie", "C");
					msgnextloc("\\EC* Hey^1, uh^1, Kris..^1. what are you doing?/", "obj_readable_room1_slash_Other_10_gml_1506_0");
					msgnextloc("\\E1* We're going to your house^1, right?/%", "obj_readable_room1_slash_Other_10_gml_1507_0");
				}
				else
				{
					scr_speaker("no_name");
					msgsetloc(0, "* (Knock knock knock)/", "obj_readable_room1_slash_Other_10_gml_1510_0");
					msgnextloc("* (Yo^1, uhh^1, Kris..^1. haha. Is that you? Haha...)/", "obj_readable_room1_slash_Other_10_gml_1511_0");
					msgnextloc("* (We're not hanging out if Susie's with you!)/", "obj_readable_room1_slash_Other_10_gml_1512_0");
					msgnextloc("* (Kris..^1. Susie sucks^1! Why didn't you stop her^1, haha...)/%", "obj_readable_room1_slash_Other_10_gml_1513_0");
				}
			}
		}
	}
}
if (room == room_town_north)
{
	if (x <= 250)
		global.msg[0] = stringsetloc("* (It's an ornate gate.^1)&* (It appears to be locked.)/%", "obj_readable_room1_slash_Other_10_gml_1236_0");
	if (x >= 500 && x <= 570)
	{
		if (global.chapter == 1)
		{
			global.fc = 16;
			global.typer = 5;
			global.fe = 6;
			global.msg[0] = stringsetloc("* Aww^1, Kris^1, like^1, if you wanna come in.../", "obj_readable_room1_slash_Other_10_gml_1245_0");
			global.msg[1] = stringsetloc("\\E4* Our cat-flap^1, is like^1, always open to you.../%", "obj_readable_room1_slash_Other_10_gml_1246_0");
		}
		if (global.chapter == 2)
		{
			msgsetloc(0, "* (There's a cat flap.)/", "obj_readable_room1_slash_Other_10_gml_1539_0");
			msgnextloc("* (It's locked.)/", "obj_readable_room1_slash_Other_10_gml_1540_0");
			msgnextloc("* (Somehow.)/%", "obj_readable_room1_slash_Other_10_gml_1541_0");
		}
	}
	if (x >= 580)
	{
		global.msg[0] = stringsetloc("* (Various cat-themed junk is piled up inside the house.)/", "obj_readable_room1_slash_Other_10_gml_1258_0");
		global.msg[1] = stringsetloc("* (It seems to be a bit of a cat-sty...)/%", "obj_readable_room1_slash_Other_10_gml_1259_0");
	}
	if (x >= 650)
	{
		global.msg[0] = stringsetloc("* (It's a broken grill.)/", "obj_readable_room1_slash_Other_10_gml_1263_0");
		global.msg[1] = stringsetloc("* (... It smells like burnt cat food.)/%", "obj_readable_room1_slash_Other_10_gml_1264_0");
	}
	if (x >= 800)
	{
		global.msg[0] = stringsetloc("* (There's some kind of scratching noise coming from inside...)/%", "obj_readable_room1_slash_Other_10_gml_1268_0");
		if (global.chapter == 2 && x > 900)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (There's some kind of scratching and hissing from inside.)/%", "obj_readable_room1_slash_Other_10_gml_1563_0");
		}
	}
	if (x >= 1090 && x <= 1130)
	{
		snd_play(snd_knock);
		if (global.chapter == 1)
		{
			global.msg[0] = stringsetloc("* (Knock knock knock...)/", "obj_readable_room1_slash_Other_10_gml_1276_0");
			global.msg[1] = stringsetloc("* Ah, I'm afraid no one's home right now^1, darling./", "obj_readable_room1_slash_Other_10_gml_1277_0");
			global.msg[2] = stringsetloc("* Now^1, why don't you prance on home?/%", "obj_readable_room1_slash_Other_10_gml_1278_0");
			if (read >= 1)
			{
				global.msg[1] = stringsetloc("* I'm telling you^1, they're not home right now./", "obj_readable_room1_slash_Other_10_gml_1282_0");
				global.msg[2] = stringsetloc("* ... Ah^1, you just wanted to talk to me...?/", "obj_readable_room1_slash_Other_10_gml_1283_0");
				global.msg[3] = stringsetloc("* .../", "obj_readable_room1_slash_Other_10_gml_1284_0");
				global.msg[4] = stringsetloc("* My apologies^1, beautiful^1.&* I'm afraid I'm a bit of a nobody./%", "obj_readable_room1_slash_Other_10_gml_1285_0");
			}
		}
		if (global.chapter == 2)
		{
			global.msc = 1055;
			scr_text(global.msc);
		}
	}
	if (x == 1427 && y == 38 && global.chapter == 2)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (There's a door behind the flower shop.)/", "obj_readable_room1_slash_Other_10_gml_1617_0");
		msgnextloc("* (... but there's flowers blocking the way.)/%", "obj_readable_room1_slash_Other_10_gml_1618_0");
	}
}
if (room == room_town_shelter)
	global.msg[0] = stringsetloc("* (It's locked.)/%", "obj_readable_room1_slash_Other_10_gml_1302_0");
if (room == room_lw_icee_pizza)
{
	if (x > 40 && x < 80)
	{
		global.msc = 1022;
		scr_text(global.msc);
	}
	if (y > 110 && y < 130)
	{
		if (x > 50)
		{
			msgsetloc(0, "* (There's some condiments at the table.)/", "obj_readable_room1_slash_Other_10_gml_1615_0");
			msgnextloc("* ICE-E's \"Original\" Parmajohn Che\"E\"ese!/%", "obj_readable_room1_slash_Other_10_gml_1616_0");
		}
		if (x > 230)
		{
			msgsetloc(0, "* (There's some condiments at the table.)/", "obj_readable_room1_slash_Other_10_gml_1621_0");
			msgnextloc("* ICE-E'S Squeezable Pasta Now With New \"Shape\"/%", "obj_readable_room1_slash_Other_10_gml_1622_0");
		}
	}
	if (y < 70 && x > 220 && x < 260)
	{
		msgsetloc(0, "* (Try our new CHOCCOLATE PEZZA)/", "obj_readable_room1_slash_Other_10_gml_1629_0");
		msgnextloc("* (Melts in your pants not in your mouth)/%", "obj_readable_room1_slash_Other_10_gml_1630_0");
	}
}
if (room == room_lw_conbini)
{
	if (x > 120 && y < 90)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (Various frozen bagels and treats.)/", "obj_readable_room1_slash_Other_10_gml_1640_0");
		scr_anyface_next("susie", "2");
		msgnextloc("\\E2* Hey Kris^1, wanna see if we can fit inside?/", "obj_readable_room1_slash_Other_10_gml_1642_0");
		msgnextloc("\\E5* If you just crouch down under the waffles -/", "obj_readable_room1_slash_Other_10_gml_1643_0");
		msgnextloc("\\EK* Damn^1, think someone's looking./%", "obj_readable_room1_slash_Other_10_gml_1644_0");
	}
	if (x > 240 && x < 250 && y < 90)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (It looks like a normal basket of fruit^1, but when you reach in...)/", "obj_readable_room1_slash_Other_10_gml_1651_0");
		msgnextloc("* (..^1. It's incredibly deep and holds all sorts of things.)/%", "obj_readable_room1_slash_Other_10_gml_1652_0");
	}
	if (x > 200 && x < 210 && y < 80)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* LOOSE EGGS $1/", "obj_readable_room1_slash_Other_10_gml_1659_0");
		msgnextloc("* (It's too much responsibility for an egg.)/%", "obj_readable_room1_slash_Other_10_gml_1660_0");
		if (global.flag[439] == 1)
			msgsetloc(0, "* (Seems like there's more eggs here than usual.)/%", "obj_readable_room1_slash_Other_10_gml_1684_0");
		if (scr_litemcheck(8) && global.flag[439] == 0)
		{
			scr_litemremove(8);
			global.writersnd[1] = snd_egg;
			msgsetloc(0, "* (It's a pile of eggs.)/", "obj_readable_room1_slash_Other_10_gml_1691_0_b");
			msgnextloc("* (...)/", "obj_readable_room1_slash_Other_10_gml_1692_0");
			msgnextloc("\\S1* (You put the Egg into the eggpile.)/", "obj_readable_room1_slash_Other_10_gml_1693_0");
			scr_anyface_next("susie", 0);
			msgnextloc("* ... did you just^1, uh^1, reverse-steal that egg?/%", "obj_readable_room1_slash_Other_10_gml_1695_0_b");
			scr_keyitemremove(2);
			skip = 0;
			global.flag[439] = 1;
		}
	}
	if (x > 280 && x < 310 && y < 90)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (Grapes^1, melons^1, oranges^1, and the scent of fresh pineapples...)/%", "obj_readable_room1_slash_Other_10_gml_1667_0");
	}
	if (x > 265 && x < 280 && y < 90)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (It looks like a normal palm tree^1, but it's chock-full of useful groceries.)/%", "obj_readable_room1_slash_Other_10_gml_1674_0");
	}
	if (x > 425 && x < 445 && y < 90)
	{
		if (read == 0)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (It's a rack of candy^1, jerky^1, and various nuts.)/", "obj_readable_room1_slash_Other_10_gml_1683_0");
			scr_anyface_next("susie", 10);
			msgnextloc("\\EA* See? Jerky is candy. ..^1. And^1, uh^1, peanuts too./", "obj_readable_room1_slash_Other_10_gml_1685_0");
			scr_anyface_next("sans", "5");
			msgnextloc("\\E5* actually they're a legume./", "obj_readable_room1_slash_Other_10_gml_1687_0");
			scr_anyface_next("susie", 1);
			msgnextloc("\\E1* Peanuts?/", "obj_readable_room1_slash_Other_10_gml_1689_0");
			scr_anyface_next("sans", "2");
			msgnextloc("\\E2* jerky./%", "obj_readable_room1_slash_Other_10_gml_1691_0");
		}
		else
		{
			scr_speaker("susie");
			msgsetloc(0, "* How about we don't look at anything.../", "obj_readable_room1_slash_Other_10_gml_1695_0");
			msgnextloc("\\E1* That's gonna make him say something stupid./", "obj_readable_room1_slash_Other_10_gml_1696_0");
			scr_anyface_next("sans", "5");
			msgnextloc("\\E5* ..^1. pickings are looking slim^1, ma'am./%", "obj_readable_room1_slash_Other_10_gml_1698_0");
		}
	}
	if (x > 140 && y > 150)
	{
		if (read == 0)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* Ice-E's Pizza Pin-Ups Mangazine./", "obj_readable_room1_slash_Other_10_gml_1708_0");
			msgnextloc("* HOt and fresh chease^1, pepperonie^1, Just like in your Dream's.../%", "obj_readable_room1_slash_Other_10_gml_1709_0");
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* Hot Piza Picks! Now with 3 Pixels Or MOre, In Hot and Spicy REsolution!/%", "obj_readable_room1_slash_Other_10_gml_1716_0");
		}
	}
	if (x > 170 && y > 150)
	{
		if (read == 0)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* There're some car magazines on the racks./", "obj_readable_room1_slash_Other_10_gml_1726_0");
			msgnextloc("* It might be fun to look at them^1,/", "obj_readable_room1_slash_Other_10_gml_1727_0");
			msgnextloc("* But there's other people around.../%", "obj_readable_room1_slash_Other_10_gml_1728_0");
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* It's a fluffy dog magazine^1. The inside has samples like fragrance ads.../", "obj_readable_room1_slash_Other_10_gml_1734_0");
			msgnextloc("* But it's all different dog fur for you to touch./", "obj_readable_room1_slash_Other_10_gml_1735_0");
			scr_anyface_next("susie", "5");
			msgnextloc("\\E5* Hey^1, don't hog the ads!!/%", "obj_readable_room1_slash_Other_10_gml_1737_0");
		}
	}
	if (x > 200 && y > 150)
		msgsetloc(0, "* It's a zine for Jockington fans. Seems popular./%", "obj_readable_room1_slash_Other_10_gml_1746_0");
	if (x > 240 && y > 150)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* It's a bunch of cards and heart shaped chocolates./", "obj_readable_room1_slash_Other_10_gml_1753_0");
		msgnextloc("* \"Get well soon!\"&* \"I'm glad your bike crashed\"/%", "obj_readable_room1_slash_Other_10_gml_1755_0");
	}
	if (x > 400 && x < 420 && y < 80)
	{
		snd_play(snd_bell);
		global.interact = 0;
		myinteract = 0;
		with (obj_mainchara)
			onebuffer = 3;
		exit;
	}
	if (x > 400 && x < 415 && y > 160)
	{
		scr_speaker("sans");
		msgsetloc(0, "\\E2* that stuff? it's used. half off./", "obj_readable_room1_slash_Other_10_gml_1774_0");
		scr_anyface_next("susie", 0);
		msgnextloc("* ..^1. What is it?/", "obj_readable_room1_slash_Other_10_gml_1776_0");
		scr_anyface_next("sans", 5);
		msgnextloc("\\E5* trash./%", "obj_readable_room1_slash_Other_10_gml_1778_0");
	}
	if (x > 435 && x < 445 && y > 150)
	{
		if (read == 0)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (You can't reach the top^1, rendering it impossible to get a basket.)/", "obj_readable_room1_slash_Other_10_gml_1787_0");
			msgnextloc("* (You'll never be able to buy something in this state...)/%", "obj_readable_room1_slash_Other_10_gml_1788_0");
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (One was the Throne of God's^1, this is the Throne of Evil's.)/%", "obj_readable_room1_slash_Other_10_gml_1792_0");
		}
	}
}
if (room == room_lw_police)
{
	if (x > 110 && x < 130 && y > 60 && y < 80)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (You skimmed a news article about Undyne.)/", "obj_readable_room1_slash_Other_10_gml_1806_0");
		msgnextloc("* New Police Chief Undyne's Explosive Debut/", "obj_readable_room1_slash_Other_10_gml_1807_0");
		msgnextloc("* ..^1. passionate young rookie..^1. becomes the new police chief./", "obj_readable_room1_slash_Other_10_gml_1808_0");
		msgnextloc("* Though energetic^1, it may be hard to live up to the legacy.../", "obj_readable_room1_slash_Other_10_gml_1809_0");
		msgnextloc("* ..^1. after Asgore Dreemurr was removed from the force.../", "obj_readable_room1_slash_Other_10_gml_1810_0");
		msgnextloc("* (..^1. there's no need to read any more.)/%", "obj_readable_room1_slash_Other_10_gml_1811_0");
	}
	if (x > 80 && x < 90 && y < 150 && y > 140)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (Photos of Chief Undyne and Deputy Napstablook.)/", "obj_readable_room1_slash_Other_10_gml_1818_0");
		msgnextloc("* (Undyne is rescuing all of Catti's family from a tree.)/", "obj_readable_room1_slash_Other_10_gml_1819_0");
		msgnextloc("* (..^1. Napstablook is also stuck in the tree somehow.)/%", "obj_readable_room1_slash_Other_10_gml_1820_0");
	}
	if (x > 60 && x < 70 && y > 170)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (Well-cared-for flowers.)/%", "obj_readable_room1_slash_Other_10_gml_1827_0");
	}
}
if (room == room_dw_castle_rooms_kris)
{
	if (x > 150 && x < 200)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* It's a wardrobe full of all sorts of different clothes./", "obj_readable_room1_slash_Other_10_gml_1837_0");
		msgnextloc("* You could wear whatever you want./%", "obj_readable_room1_slash_Other_10_gml_1838_0");
	}
	if (x > 200 && x < 280)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* It's a shelf./", "obj_readable_room1_slash_Other_10_gml_1845_0");
		msgnextloc("* All sorts of keepsakes could be put here./%", "obj_readable_room1_slash_Other_10_gml_1846_0");
	}
	if (x > 310 && x < 390)
	{
		if (global.flag[207] >= 2)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* It's a trash can./", "obj_readable_room1_slash_Other_10_gml_1855_0");
			scr_anyface_next("ralsei", 3);
			msgnextloc("\\E3* Here^1, Kris^1! In case I make another manual.../", "obj_readable_room1_slash_Other_10_gml_1857_0");
			msgnextloc("\\E2* You can throw it directly in here!/%", "obj_readable_room1_slash_Other_10_gml_1858_0");
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* It's a stand for your Manual./", "obj_readable_room1_slash_Other_10_gml_1861_0");
			scr_anyface_next("ralsei", 2);
			msgnextloc("\\E2* I thought you might want to keep it here in case you want to read it!/%", "obj_readable_room1_slash_Other_10_gml_1863_0");
		}
	}
	if (x > 390 && x < 500 && y < 280)
	{
		if (global.flag[409] == 0)
			global.flag[409] = 1;
		if (global.flag[252] == 1)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* It's a bed that's been carefully crafted./", "obj_readable_room1_slash_Other_10_gml_1875_0");
			msgnextloc("* It's suitable for a bed inspector./%", "obj_readable_room1_slash_Other_10_gml_1876_0");
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* It's your bed./", "obj_readable_room1_slash_Other_10_gml_1880_0");
			msgnextloc("* It feels incredibly soft. Like sleeping on a dream.../%", "obj_readable_room1_slash_Other_10_gml_1881_0");
		}
	}
	if (x > 450 && y > 360)
	{
		var haveSusie = scr_havechar(2);
		var sentenceEnd = haveSusie ? "/" : "/%";
		scr_speaker("no_name");
		msgsetsubloc(0, "* It's some decorative moss. Looks delicious.~1", sentenceEnd, "obj_readable_room1_slash_Other_10_gml_1921_0_b");
		if (haveSusie)
		{
			scr_anyface_next("susie", "K");
			msgnextloc("\\EK* Why the hell does YOUR room get moss!?/%", "obj_readable_room1_slash_Other_10_gml_1925_0_b");
		}
	}
}
if (room == room_dw_castle_rooms_susie)
{
	if (x > 140 && x < 250)
	{
		if (global.flag[410] == 0)
			global.flag[410] = 1;
		scr_speaker("susie");
		msgsetloc(0, "\\E2* Cool^1, spike bed./", "obj_readable_room1_slash_Other_10_gml_1896_0");
		msgnextloc("\\EA* Now I can stab myself during the night./", "obj_readable_room1_slash_Other_10_gml_1897_0");
		msgnextloc("\\E2* Finally some convenience./%", "obj_readable_room1_slash_Other_10_gml_1898_0");
	}
	if (x > 250 && x < 315)
	{
		if (read == 0)
		{
			scr_speaker("susie");
			msgsetloc(0, "\\E7* Damn^1, there's everything in here!/", "obj_readable_room1_slash_Other_10_gml_1907_0");
			msgnextloc("* Pinecones^1, chalk^1, moss^1, jars of salsa^1,/", "obj_readable_room1_slash_Other_10_gml_1908_0");
			msgnextloc("* Pieces of ice^1, black crumbs from the toaster^1, jawbreakers.../", "obj_readable_room1_slash_Other_10_gml_1909_0");
			msgnextloc("\\E2* ..^1. Oh^1, and like actual food^1, too./%", "obj_readable_room1_slash_Other_10_gml_1910_0");
		}
		else
		{
			scr_speaker("susie");
			msgsetloc(0, "\\E5* Hey Kris^1, stop eye-bogarting my snacks./%", "obj_readable_room1_slash_Other_10_gml_1913_0");
		}
	}
	if (x > 340 && x < 430)
	{
		scr_speaker("ralsei");
		msgsetloc(0, "\\E0* Susie^1, you didn't get to read the manual.../", "obj_readable_room1_slash_Other_10_gml_1921_0");
		msgnextloc("\\E2* So I put it over here for you./", "obj_readable_room1_slash_Other_10_gml_1922_0");
		scr_anyface_next("susie", 21);
		msgnextloc("\\EL* Cool^1, I'll read it before bed./", "obj_readable_room1_slash_Other_10_gml_1924_0");
		msgnextloc("\\E2* That'll put me to sleep./%", "obj_readable_room1_slash_Other_10_gml_1925_0");
	}
	if (x > 430 && x < 500)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* It's a clothes drawer full of spikey and dangerous clothing./", "obj_readable_room1_slash_Other_10_gml_1932_0");
		msgnextloc("* All the clothes are ripping each other up into shreds./", "obj_readable_room1_slash_Other_10_gml_1933_0");
		scr_anyface_next("susie", "2");
		msgnextloc("\\E2* Hell yeah!!^1! Jealous^1, Kris!?/%", "obj_readable_room1_slash_Other_10_gml_1935_0");
	}
}
if (room == room_dw_ralsei_castle_1f)
{
	if (x > 350 && x < 450)
		msgsetloc(0, "* (2F : LIVING QUARTERS)/%", "obj_readable_room1_slash_Other_10_gml_1943_0");
	if (x > 570 && x < 680)
		msgsetloc(0, "* (The door is locked.)/%", "obj_readable_room1_slash_Other_10_gml_1948_0");
	if (x > 950 && x < 1050)
		msgsetloc(0, "* (BF : LIVING QUARTERS FOR BAD GUYS)/%", "obj_readable_room1_slash_Other_10_gml_1953_0");
}
if (room == room_dw_ralsei_castle_2f)
{
	if (x > 1040 && x < 1150)
	{
		if (read == 0)
		{
			scr_speaker("susie");
			msgsetloc(0, "\\EA* Hey Ralsei^1, what's up here?/", "obj_readable_room1_slash_Other_10_gml_1964_0");
			scr_anyface_next("ralsei", 2);
			msgnextloc("\\E2* Oh^1, just more rooms I'm renovating!/", "obj_readable_room1_slash_Other_10_gml_1966_0");
			scr_anyface_next("susie", 2);
			msgnextloc("\\E2* ..^1. so is your room up there?/", "obj_readable_room1_slash_Other_10_gml_1968_0");
			scr_anyface_next("ralsei", 26);
			msgnextloc("\\EQ* Er^1, yes^1! I still^1, um^1, haven't dusted it though.../", "obj_readable_room1_slash_Other_10_gml_1970_0");
			scr_anyface_next("susie", 2);
			msgnextloc("\\E2* Yeah^1, like we need to see your nerdy glasses collection anyway./%", "obj_readable_room1_slash_Other_10_gml_1972_0");
		}
		else
		{
			scr_speaker("ralsei");
			msgsetloc(0, "\\EG* Sorry^1, work in progress!/%", "obj_readable_room1_slash_Other_10_gml_1976_0");
		}
	}
}
if (room == room_dw_mansion_east_1f_e)
{
	if (y < 170 && visible == 0)
	{
		with (obj_ch2_room_mansion_east_1f_e)
			con = 1;
		snd_play(snd_impact);
		instance_create(x, y, obj_shake);
		scr_speaker("no_name");
		msgsetloc(0, "* (A secret switch...!)/", "obj_readable_room1_slash_Other_10_gml_2031_0");
		msgnextloc("* (You heard something opening.)/%", "obj_readable_room1_slash_Other_10_gml_2032_0");
		selfdestruct = true;
	}
	else
	{
		scr_speaker("no_name");
		msgsetloc(0, "* I'm the hacker. I got the feeling there's a secret backdoor in this room..^1. but.../", "obj_readable_room1_slash_Other_10_gml_1989_0");
		msgnextloc("* Where could it be...? Hmmmmmmmmm..../%", "obj_readable_room1_slash_Other_10_gml_1990_0");
	}
}
if (room == room_dw_mansion_east_1f_secret)
{
	if (global.flag[340] == 1 && read == 0)
		read = 1;
	if (read == 0)
	{
		with (obj_ch2_room_mansion_east_1f_secret)
			con = 1;
		instance_create(0, 0, obj_shake);
		snd_play(snd_impact);
		snd_play(snd_bwaap);
		skip = true;
	}
	else
	{
		if (read < 20)
			snd_play_pitch(snd_bwaap, 1 + (read / 10));
		else
			snd_play_pitch(snd_bwaap, 3);
		skip = true;
	}
}
if (room == room_dw_cyber_battle_maze_2)
{
	if (y > 150 && read == 0)
	{
		with (obj_ch2_room_cyber_battle_maze_2)
			southcon = 1;
	}
	if (y < 370 && read == 0)
	{
		with (obj_ch2_room_cyber_battle_maze_2)
			northcon = 1;
	}
}
if (room == room_dw_city_susie_ralsei_fun_1)
{
	if (scr_havechar(4))
	{
		if (global.flag[369] == 0)
		{
			scr_speaker("noelle");
			msgsetloc(0, "\\EL* (S..^1. Susie...!^1! She's right there...!!)/", "obj_readable_room1_slash_Other_10_gml_2019_0");
			msgnextloc("\\E6* (But I..^1. I can't get the courage to say anything...)/", "obj_readable_room1_slash_Other_10_gml_2020_0");
			msgnextloc("\\E2* (...?)/", "obj_readable_room1_slash_Other_10_gml_2021_0");
			msgnextloc("\\E3* (Who's that person she's with^1, anyway...?)/", "obj_readable_room1_slash_Other_10_gml_2022_0");
			msgnextloc("\\E2* (It looks kind of like...)/", "obj_readable_room1_slash_Other_10_gml_2023_0");
			msgnextloc("\\EE* (Ahhh^1, they're looking over here^1! Let's go!!)/%", "obj_readable_room1_slash_Other_10_gml_2025_0");
			global.flag[369] = 1;
		}
		else
		{
			scr_speaker("noelle");
			msgsetloc(0, "\\EE* (Let's get out of here!)/%", "obj_readable_room1_slash_Other_10_gml_2030_0");
		}
		mydialoguer = instance_create(0, 0, obj_dialoguer);
		mydialoguer.side = 1;
		read += 1;
		exit;
	}
	else if (scr_havechar(2))
	{
		scr_speaker("susie");
		msgsetloc(0, "\\EA* ..^1. hey Kris^1, ever think about using these cones?/", "obj_readable_room1_slash_Other_10_gml_2043_0");
		scr_anyface_next("ralsei", "K");
		msgnextloc("\\EK* ..^1. using them?/", "obj_readable_room1_slash_Other_10_gml_2045_0");
		scr_anyface_next("susie", "A");
		msgnextloc("\\EA* For ice cream./%", "obj_readable_room1_slash_Other_10_gml_2047_0");
	}
	else
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (Just some cones of the non-ice-cream persuasion.)/%", "obj_readable_room1_slash_Other_10_gml_2051_0");
	}
}
if (room == room_dw_city_treasure)
{
	scr_speaker("no_name");
	msgsetloc(0, "* (It's a poster for Queen Clean brand cleaning agent.)/", "obj_readable_room1_slash_Other_10_gml_2087_0");
	msgnextloc("* (\"I Don't Know What This Does\")/%", "obj_readable_room1_slash_Other_10_gml_2088_0");
	hasNoelle = 0;
	if (instance_exists(obj_caterpillarchara))
	{
		with (obj_caterpillarchara)
		{
			if (name == "noelle")
				other.hasNoelle = 1;
		}
	}
	if (hasNoelle == 1)
	{
		if (global.flag[445] == 0)
		{
			global.flag[445] = 1;
			if (global.flag[915] < 1.5)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\E5* (Queen..^1. She says she wants me to be happy^1, but...)/", "obj_readable_room1_slash_Other_10_gml_2071_0");
				msgnextloc("\\E3* (Why would I want to eat a casserole made of wires?)/", "obj_readable_room1_slash_Other_10_gml_2072_0");
				msgnextloc("\\EA* (And why can't I... Just... Refuse?)/", "obj_readable_room1_slash_Other_10_gml_2073_0");
				msgnextloc("\\E3* (Sometimes I feel like...)/", "obj_readable_room1_slash_Other_10_gml_2074_0");
				msgnextloc("\\E8* (Kris and Dad are the only ones I can say no to...)/%", "obj_readable_room1_slash_Other_10_gml_2075_0");
			}
		}
		if (global.flag[915] >= 1.5 && global.flag[916] == 0)
		{
			scr_anyface_next("noelle", "B");
			scr_speaker("noelle");
			msgsetloc(0, "\\Ee* .../%", "obj_readable_room1_slash_Other_10_gml_2093_0");
		}
	}
}
if (room == room_dw_city_spamton_shop_exterior)
{
	if (global.flag[309] == 0)
	{
		var haveNoelle = scr_havechar(4) && global.flag[446] == 0;
		var sentenceEnd = haveNoelle ? "/" : "/%";
		scr_speaker("no_name");
		msgsetsubloc(0, "* (The door is locked.)~1", sentenceEnd, "obj_readable_room1_slash_Other_10_gml_2101_0");
		if (haveNoelle)
		{
			global.flag[446] = 1;
			scr_anyface_next("noelle", "B");
			msgnextloc("\\EB* Kris...? Wh-why did you bring me here...?/", "obj_readable_room1_slash_Other_10_gml_2106_0");
			msgnextloc("\\E4* No one's home..^1. no^1, no one's around at all./", "obj_readable_room1_slash_Other_10_gml_2107_0");
			msgnextloc("\\E4* It's..^1. it's so creepy.../", "obj_readable_room1_slash_Other_10_gml_2108_0");
			msgnextloc("\\Ee* .../", "obj_readable_room1_slash_Other_10_gml_2109_0");
			msgnextloc("\\Ed* (At the same time^1, it's kind of nostalgic...)/%", "obj_readable_room1_slash_Other_10_gml_2110_0");
		}
	}
	else
	{
		global.msc = 1081;
		scr_text(global.msc);
	}
}
if (room == room_dw_castle_area_2_transformed)
{
	if (x > 1050 && x < 1080 && y >= 760)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* Mama Miba^1! Welcome to TOP Bakery!/", "obj_readable_room1_slash_Other_10_gml_2124_0");
		msgnextloc("* Our special chefs spin baked goods at the TOP of their class!/%", "obj_readable_room1_slash_Other_10_gml_2125_0");
	}
}
if (room == room_dw_castle_restaurant)
{
	if (x > 200 && x < 300)
	{
		myinteract = 0;
		with (obj_npc_room)
		{
			if (sprite_index == spr_lancer_lt_mustache)
				event_user(0);
		}
		exit;
	}
	if (x > 300 && x < 400)
	{
		myinteract = 0;
		with (obj_npc_hammerguy)
			event_user(0);
		exit;
	}
}
if (room == room_dw_castle_east_door)
{
	if (sprite_index == spr_tasque_idle_overworld)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (Seems like it's gone stray without its master...)/%", "obj_readable_room1_slash_Other_10_gml_2160_0");
	}
	if (sprite_index == spr_maus_idle)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (Squeak...)/%", "obj_readable_room1_slash_Other_10_gml_2165_0");
	}
	if (sprite_index == spr_npc_poppup)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* TANJOUBY.../%", "obj_readable_room1_slash_Other_10_gml_2170_0");
	}
	if (sprite_index == spr_traffic_car_side_legs_small_left)
	{
		skip = 1;
		snd_play(snd_smallcar_yelp);
	}
}
if (room == room_dw_castle_dojo)
{
	if (global.flag[412] == 0)
		global.flag[412] = 1;
	scr_speaker("no_name");
	global.msg[0] = stringsetloc("* (It's a bed for three people^1, or one three-headed person.)/%", "obj_readable_room1_slash_Other_10_gml_2177_0");
}
if (room == room_dw_mansion_b_east_b)
{
	if (x < 1400)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* There's nothing interesting./%", "obj_readable_room1_slash_Other_10_gml_2185_0");
	}
	else
	{
		if (scr_keyitemcheck(10) == 0 && instance_exists(obj_npc_room_animated))
		{
			global.msc = 1131;
			scr_text(global.msc);
		}
		if (scr_keyitemcheck(10) == 1 && scr_keyitemcheck(11) == 0)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (...)/%", "obj_readable_room1_slash_Other_10_gml_2199_0");
		}
		if (scr_keyitemcheck(11) == 1 && global.flag[309] < 8)
		{
			global.msc = 1133;
			scr_text(global.msc);
		}
		if (global.flag[309] == 8)
		{
			if (read == 0)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (You tapped the mechanism.)/", "obj_readable_room1_slash_Other_10_gml_2216_0");
				msgnextloc("* (..^1. Nothing happened.)/", "obj_readable_room1_slash_Other_10_gml_2217_0");
				msgnextloc("* (You shook the mechanism.)/", "obj_readable_room1_slash_Other_10_gml_2218_0");
				msgnextloc("* (You hit it.)/", "obj_readable_room1_slash_Other_10_gml_2219_0");
				msgnextloc("* (You kicked it.)/", "obj_readable_room1_slash_Other_10_gml_2220_0");
				msgnextloc("* (...)/", "obj_readable_room1_slash_Other_10_gml_2221_0");
				msgnextloc("* (Nothing happened.)/%", "obj_readable_room1_slash_Other_10_gml_2222_0");
			}
			else
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (...)/%", "obj_readable_room1_slash_Other_10_gml_2227_0");
			}
		}
	}
}
if (room == room_dw_cyber_tasque_battle)
{
	if (global.flag[330] == 1)
	{
		msgsetloc(0, "* (Nothing happened.)/%", "obj_readable_room1_slash_Other_10_gml_2238_0");
	}
	else
	{
		snd_play(snd_impact);
		instance_create(0, 0, obj_shake);
		msgsetloc(0, "* (Click!)&* (You found a hidden switch!)/%", "obj_readable_room1_slash_Other_10_gml_2244_0");
		global.flag[330] = 1;
	}
}
if (room == room_dw_cyber_virovirokun_fight)
{
	if (global.flag[333] == 1)
	{
		msgsetloc(0, "* (Nothing happened.)/%", "obj_readable_room1_slash_Other_10_gml_2254_0");
	}
	else
	{
		snd_play(snd_impact);
		instance_create(0, 0, obj_shake);
		msgsetloc(0, "* (Sounds like a forcefield powering down..^1. or something.)/%", "obj_readable_room1_slash_Other_10_gml_2260_0");
		global.flag[333] = 1;
	}
}
if (room == room_dw_cyber_battle_maze_2)
{
	if (global.flag[332] == 1)
	{
		msgsetloc(0, "* (Nothing happened.)/%", "obj_readable_room1_slash_Other_10_gml_2269_0");
	}
	else
	{
		snd_play(snd_impact);
		instance_create(0, 0, obj_shake);
		msgsetloc(0, "* (Sounds like a forcefield powering down..^1. or something.)/%", "obj_readable_room1_slash_Other_10_gml_2275_0");
		global.flag[332] = 1;
	}
}
if (room == room_dw_cyber_keyboard_puzzle_1)
{
	if (global.plot >= 100)
	{
		msgsetloc(0, "* (Nubert's gone.)/", "obj_readable_room1_slash_Other_10_gml_2284_0");
		msgnextloc("* (Looks like Nubert's screen is moving up in the world...)/%", "obj_readable_room1_slash_Other_10_gml_2285_0");
	}
}
if (room == room_dw_cyber_maze_tasque)
{
	if (global.flag[367] == 1)
		msgsetloc(0, "* (It seems to be stuck.)/%", "obj_readable_room1_slash_Other_10_gml_2291_0");
	else
		msgsetloc(0, "* (It seems to be stupid.)/%", "obj_readable_room1_slash_Other_10_gml_2367_0_b");
}
if (room == room_dw_mansion_b_west_1f)
{
	scr_speaker("no_name");
	msgsetloc(0, "* The door rattles but doesn't open./%", "obj_readable_room1_slash_Other_10_gml_2373_0");
}
if (room == room_dw_mansion_b_west_2f)
{
	if (global.flag[373] == 0)
	{
		global.flag[373] = 1;
		snd_play(snd_shadowpendant);
		msgsetloc(0, "* (Sounds like a forcefield powering down.)/%", "obj_readable_room1_slash_Other_10_gml_2303_0");
	}
	else if (global.flag[373] == 1)
	{
		msgsetloc(0, "* (Nothing happened.)/%", "obj_readable_room1_slash_Other_10_gml_2307_0");
	}
}
if (room == room_lw_computer_lab)
{
	if (x > 40 && x < 60 && y > 40 && y < 50)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (The closet is spacious and full of old electronics.)/", "obj_readable_room1_slash_Other_10_gml_2318_0");
		msgnextloc("* (A large person could easily fit inside.)/%", "obj_readable_room1_slash_Other_10_gml_2319_0");
	}
	if (x > 150 && x < 170 && y > 115 && y < 130)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (Looks like the library's state-of-the-art public laptop.)/", "obj_readable_room1_slash_Other_10_gml_2326_0");
		msgnextloc("* (Someone left it on.)/%", "obj_readable_room1_slash_Other_10_gml_2327_0");
	}
	if (x > 220 && x < 250 && y > 40 && y < 50)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (It's full of many backup devices^1, like extra mice^1, extra keyboards^1, or extra maracas.)/%", "obj_readable_room1_slash_Other_10_gml_2334_0");
	}
	if (x > 70 && x < 95 && y > 90 && y < 150)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (It's a computer. The monitor is flickering brightly.)/%", "obj_readable_room1_slash_Other_10_gml_2341_0");
	}
	if (x > 220 && x < 240 && y > 100 && y < 110)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (It's a computer.)/", "obj_readable_room1_slash_Other_10_gml_2348_0");
		msgnextloc("* (A dolphin screensaver is advertising some kind of malware.)/%", "obj_readable_room1_slash_Other_10_gml_2349_0");
	}
	if (x > 220 && x < 240 && y > 120 && y < 140)
	{
		if (global.flag[309] < 9)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (It's a computer.)/", "obj_readable_room1_slash_Other_10_gml_2360_0");
			msgnextloc("* (Someone tried to check their email^1, but the Internet is down.)/%", "obj_readable_room1_slash_Other_10_gml_2361_0");
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (It's a computer.)/", "obj_readable_room1_slash_Other_10_gml_2366_0");
			msgnextloc("* (... It's nothing but a blue screen. Looks like it crashed.)/%", "obj_readable_room1_slash_Other_10_gml_2367_0");
		}
	}
	if (x > 120 && x < 140 && y > 25 && y < 40)
	{
		if (read == 0)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (Various posters talking about Internet safety.)/%", "obj_readable_room1_slash_Other_10_gml_2377_0");
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (You suddenly thought about how your day might have been different...)/", "obj_readable_room1_slash_Other_10_gml_2381_0");
			msgnextloc("* (..^1. If the poster with that orange cat was still on the wall.)/%", "obj_readable_room1_slash_Other_10_gml_2382_0");
		}
	}
	if (x > 30 && x < 40 && y > 170 && x < 190)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (It's a trashcan. You get the feeling it doesn't have any friends.)/", "obj_readable_room1_slash_Other_10_gml_2390_0");
		msgnextloc("* (It's hard to explain why you feel this way about a trashcan.)/%", "obj_readable_room1_slash_Other_10_gml_2391_0");
	}
	if (x > 230 && x < 250 && y > 170 && y < 190)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (It's a recycling bin.)/", "obj_readable_room1_slash_Other_10_gml_2398_0");
		msgnextloc("* (Looks like someone accidentally printed off a lot of useless emails.)/%", "obj_readable_room1_slash_Other_10_gml_2399_0");
	}
}
if (room == room_dw_mansion_east_1f_a)
{
	scr_speaker("no_name");
	msgsetloc(0, "* Please respect the pottery./%", "obj_readable_room1_slash_Other_10_gml_2406_0");
}
if (room == room_dw_mansion_lightner_hallway)
{
	global.msc = 1189;
	scr_text(global.msc);
}
if (room == room_lw_library_upstairs)
{
	if (x > 230 && x < 250)
	{
		global.msc = 1149;
		scr_text(global.msc);
	}
	if (x > 200 && x < 215)
	{
		global.msc = 1151;
		scr_text(global.msc);
	}
}
if (room == room_dw_city_big_2)
{
	if (extflag == "ferris")
	{
		if (i_ex(obj_caterpillarchara))
		{
			with (obj_caterpillarchara)
				sprite_index = usprite;
		}
		scr_speaker("no_name");
		msgsetloc(0, "* (It's an advertisement for a giant ferris wheel.)/%", "obj_readable_room1_slash_Other_10_gml_2484_0");
		if (read == 0)
		{
			if (scr_havechar(2) && global.flag[319] > 0 && scr_sideb_get_phase() == 0)
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (It's an advertisement for a giant ferris wheel.)/", "obj_readable_room1_slash_Other_10_gml_2492_0");
				scr_anyface_next("ralsei", "1");
				msgnextloc("\\E1* (Susie is surely thinking of her ride with Noelle...)/", "obj_readable_room1_slash_Other_10_gml_2494_0");
				scr_anyface_next("susie", "K");
				msgnextloc("\\EK* (The hell is a ferris^1, anyway?)/", "obj_readable_room1_slash_Other_10_gml_2496_0");
				msgnextloc("\\EC* (Some kind of tank with giant wheels?)/%", "obj_readable_room1_slash_Other_10_gml_2497_0");
			}
			else if (scr_havechar(4) && global.flag[440] == 0)
			{
				global.flag[440] = 1;
				global.msc = 1191;
				scr_text(global.msc);
			}
		}
	}
	if (extflag == "weird")
	{
		if (read < 4)
		{
			if (global.facing == 3)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\Ec* (Why are they..^1. staring into my eyes like that?)/%", "obj_readable_room1_slash_Other_10_gml_2512_0");
			}
			if (global.facing == 0 || global.facing == 2)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\Ec* (What are they looking at?)/%", "obj_readable_room1_slash_Other_10_gml_2517_0");
			}
			if (global.facing == 1)
			{
				scr_speaker("noelle");
				msgsetloc(0, "\\Ec* (I..^1. I can't see what they're doing^1, but...)/", "obj_readable_room1_slash_Other_10_gml_2522_0");
				msgnextloc("\\Ec* (Aren't they staring at me...?)/%", "obj_readable_room1_slash_Other_10_gml_2523_0");
			}
		}
		else
		{
			scr_speaker("noelle");
			msgsetloc(0, "\\Ec* (Why don't they step on the switch...?)/%", "obj_readable_room1_slash_Other_10_gml_2529_0");
		}
	}
}
if (room == room_dw_cyber_maze_queenscreen)
{
}
if (room == room_dw_mansion_east_2f_transformed_new)
{
	if (extflag == "shortcut")
	{
		scr_speaker("noone");
		msgsetloc(0, "* Left: Shortcut to 1F/%", "obj_readable_room1_slash_Other_10_gml_2545_0");
	}
}
if (room == room_dw_mansion_east_3f_projection)
{
	scr_speaker("no_name");
	msgsetloc(0, "* (It's a video of someone creating a strange pillar of smoke.)/", "obj_readable_room1_slash_Other_10_gml_2553_0");
	msgnextloc("* (There's so much smoke^1, it's hard to tell who it is.)/%", "obj_readable_room1_slash_Other_10_gml_2554_0");
}
if (room == room_dw_city_moss)
{
	if (x < 150)
	{
		if (scr_sideb_get_phase() == 0)
		{
			var haveSusie = scr_havechar(2);
			var haveNoelle = scr_havechar(4);
			if (read == 0 && global.flag[920] == 0)
			{
				if (i_ex(obj_npc_dumpster))
				{
					with (obj_npc_dumpster)
						moss_con = 1;
					exit;
				}
			}
			else
			{
				if (haveNoelle)
				{
					scr_speaker("noelle");
					msgsetloc(0, "\\E4* (I guess marimos and stuff are kind of cute...?)/", "obj_readable_room1_slash_Other_10_gml_2578_0");
					msgnextloc("\\E8* (..^1. What the heck am I saying?)/%", "obj_readable_room1_slash_Other_10_gml_2579_0");
				}
				if (haveSusie)
				{
					scr_speaker("no_name");
					msgsetloc(0, "* (Moss. There's not enough to eat.)/%", "obj_readable_room1_slash_Other_10_gml_2585_0");
				}
			}
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (It's some moss...)/%", "obj_readable_room1_slash_Other_10_gml_2591_0");
		}
	}
	else
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (The room between..^1. There is a room between.)/%", "obj_readable_room1_slash_Other_10_gml_2596_0");
	}
}
if (room == room_dw_city_man)
{
	if (global.flag[917] < 3)
	{
		global.msc = 1173;
		scr_text(global.msc);
	}
	else
	{
		scr_speaker("no_name");
		msgsetloc(0, "* Well^1, there was not a man here./%", "obj_readable_room1_slash_Other_10_gml_2609_0");
	}
}
if (room == room_dw_city_spamton_alley)
{
	if (x > 110)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (Buy Queen Clean^1! The most popular cleaning flavors!)/%", "obj_readable_room1_slash_Other_10_gml_2618_0");
	}
	if (x > 250)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (Queen Clean^1! Made of 100`% acid!)/%", "obj_readable_room1_slash_Other_10_gml_2624_0");
	}
	if (x > 750)
	{
		if (read == 0)
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (The poster is torn^1, revealing a faded one underneath.)/", "obj_readable_room1_slash_Other_10_gml_2632_0");
			msgnextloc("* BIG SHOT AUTOS^1! TAKE A RIDE AROUND TOWN IN OUR SPECIAL/", "obj_readable_room1_slash_Other_10_gml_2633_0");
			msgnextloc("* (The rest is cut off.)/%", "obj_readable_room1_slash_Other_10_gml_2634_0");
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (It's a torn poster.)/%", "obj_readable_room1_slash_Other_10_gml_2638_0");
		}
	}
}
if (room == room_dw_city_mice)
{
	scr_speaker("no_name");
	if (x == 320 && y == 180)
	{
		if (global.plot < 72)
			msgsetloc(0, "* (It's a hole for mice to enter into.)/%", "obj_readable_room1_slash_Other_10_gml_2665_0");
		else
			msgsetloc(0, "* (There are mice inside scampering pleasingly.)/%", "obj_readable_room1_slash_Other_10_gml_2670_0");
	}
	if (x == 254 && y == 151)
	{
		msgsetloc(0, "* (Mice will rotate 90 degrees when they collide with the block.)/", "obj_readable_room1_slash_Other_10_gml_2633_0_b");
		msgnextloc("* (Citizens must push blocks to get mice in the holes. Use the bell to reset.)/%", "obj_readable_room1_slash_Other_10_gml_2634_0_b");
	}
	if (x == 200)
	{
		if (global.plot < 72)
			msgsetloc(0, "* (It's a hole for mice to come from.)/%", "obj_readable_room1_slash_Other_10_gml_2651_0");
		else
			msgsetloc(0, "* (The hole is empty.)/%", "obj_readable_room1_slash_Other_10_gml_2656_0");
	}
}
if (room == room_dw_city_mice2)
{
	scr_speaker("no_name");
	if (x == 758)
	{
		msgsetloc(0, "* (It's a citizen's duty to properly rotate and release mice using the traffic signs.)/", "obj_readable_room1_slash_Other_10_gml_2640_0");
		msgnextsubloc("* ~1: Engage and Disengage.&* ~2 ~3: Rotate.&* ~4: Release./%", scr_get_input_name(4), scr_get_input_name(3), scr_get_input_name(1), scr_get_input_name(0), "obj_readable_room1_slash_Other_10_gml_2641_0");
	}
	else if (x == 524)
	{
		if (global.plot < 77 || i_ex(obj_forcefield))
			msgsetloc(0, "* (It's a hole for mice to come from.)/%", "obj_readable_room1_slash_Other_10_gml_2651_0");
		else
			msgsetloc(0, "* (The hole is empty.)/%", "obj_readable_room1_slash_Other_10_gml_2656_0");
	}
	else if (x == 684)
	{
		if (global.flag[368] == 0)
			msgsetloc(0, "* (It's a hole for mice to enter into.)/%", "obj_readable_room1_slash_Other_10_gml_2665_0");
		else
			msgsetloc(0, "* (There are mice inside scampering pleasingly.)/%", "obj_readable_room1_slash_Other_10_gml_2670_0");
	}
	else
	{
		skip = 1;
	}
}
if (room == room_dw_mansion_dining3)
{
	if (read == 0)
	{
		scr_speaker("susie");
		msgsetloc(0, "\\E0* It's locked.../", "obj_readable_room1_slash_Other_10_gml_2681_0");
		msgnextloc("\\E1* What's with this giant empty room anyway!?/%", "obj_readable_room1_slash_Other_10_gml_2682_0");
		if (instance_exists(obj_controller_dining3))
			obj_controller_dining3.con = 1;
	}
	else
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (The door is locked.)/%", "obj_readable_room1_slash_Other_10_gml_2688_0");
	}
}
if (room == room_dw_mansion_darkbulb_1)
{
	if (global.plot < 120)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (These Darkbulbs will cast a bright shadow on the ground.)/", "obj_readable_room1_slash_Other_10_gml_2698_0");
		msgnextloc("* (Fill in the space with dark to unlock the way.)/%", "obj_readable_room1_slash_Other_10_gml_2699_0");
	}
	else
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (The other 2 puzzle rooms have been removed unceremoniously by a giant hand.)/", "obj_readable_room1_slash_Other_10_gml_2703_0");
		msgnextloc("* (We ask our guests for their understanding and kinda hope they weren't in there.)/%", "obj_readable_room1_slash_Other_10_gml_2704_0");
	}
}
if (room == room_dw_mansion_darkbulb_2)
{
	scr_speaker("no_name");
	msgsetloc(0, "* (This puzzle is for staff only^1! Guests^1, please head back to your rooms.)/%", "obj_readable_room1_slash_Other_10_gml_2711_0");
}
if (room == room_dw_mansion_darkbulb_3)
{
	scr_speaker("no_name");
	msgsetloc(0, "* (Staff^1! If you're stuck^1, please don't call for help.)/", "obj_readable_room1_slash_Other_10_gml_2717_0");
	msgnextloc("* (No one can hear you. Not in this beloved death trap of a mansion...)/%", "obj_readable_room1_slash_Other_10_gml_2718_0");
}
if (room == room_dw_mansion_dining_storage)
{
	scr_speaker("no_name");
	msgsetloc(0, "* (The supreme table.)/", "obj_readable_room1_slash_Other_10_gml_2724_0");
	msgnextloc("* (You won't be able to use this without the \\cYThrone of the Gods\\cW...)/%", "obj_readable_room1_slash_Other_10_gml_2725_0");
}
if (room == room_dw_mansion_noelle_room)
{
	if (x > 230)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (There are all sorts of clothes inside.)/", "obj_readable_room1_slash_Other_10_gml_2734_0");
		scr_anyface_next("susie", 0);
		msgnextloc("\\E0* (..^1. huh^1, never seen Noelle wear anything like this...?)/%", "obj_readable_room1_slash_Other_10_gml_2736_0");
	}
	if (x > 300)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (There are catalogues of search results.)/", "obj_readable_room1_slash_Other_10_gml_2743_0");
		msgnextloc("* (Seems like most things couldn't be made into objects...)/%", "obj_readable_room1_slash_Other_10_gml_2744_0");
	}
	if (x > 430)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (It's a calendar.)/", "obj_readable_room1_slash_Other_10_gml_2751_0");
		msgnextloc("* (Every page is the last month^1, every day is the twenty-fifth.)/%", "obj_readable_room1_slash_Other_10_gml_2752_0");
	}
	if (x > 570)
	{
		if (global.flag[413] == 0)
			global.flag[413] = 1;
		var inspected_all = global.flag[409] == 1 && global.flag[410] == 1 && global.flag[411] == 1 && global.flag[412] == 1 && global.flag[413] == 1;
		if (global.flag[252] == 1 && inspected_all)
		{
			if (global.flag[414] == 0)
				global.flag[414] = 1;
			scr_speaker("no_name");
			msgsetloc(0, "* (Noelle's bed.)/", "obj_readable_room1_slash_Other_10_gml_2768_0");
			msgnextloc("* (You retained the title of Bed Inspector.)/", "obj_readable_room1_slash_Other_10_gml_2769_0");
			scr_anyface_next("susie", 20);
			msgnextloc("\\EK* (What the hell are you doing?)/%", "obj_readable_room1_slash_Other_10_gml_2771_0");
		}
		else
		{
			global.msc = 1195;
			scr_text(global.msc);
		}
	}
	if (x > 820)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (It's a wardrobe.)/%", "obj_readable_room1_slash_Other_10_gml_2783_0");
	}
}
if (room == room_dw_mansion_traffic)
{
	if (extflag == "trafficjam")
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (Seems like a mouse-induced traffic jam.)/%", "obj_readable_room1_slash_Other_10_gml_2792_0");
	}
}
if (room == room_dw_city_traffic_1)
{
	scr_speaker("no_name");
	msgsetloc(0, "* Welcome to Cyber City^1! Pedestrians need to press the switch to cross traffic!/%", "obj_readable_room1_slash_Other_10_gml_2837_0");
}
if (room == room_dw_city_baseball)
{
	scr_speaker("no_name");
	msgsetloc(0, "* (It's a ball throwing game. Prizes are seated under the counter.)/%", "obj_readable_room1_slash_Other_10_gml_2862_0");
	if (x >= 1300 && x < 1450)
	{
		msgsetloc(0, "* (It's a ball throwing game.)/%", "obj_readable_room1_slash_Other_10_gml_2865_0");
		if (global.plot == 95 && scr_havechar(2) && read == 0)
		{
			scr_speaker("susie");
			msgsetloc(0, "\\E0* ..^1. Hey^1, Noelle. One thing we gotta get straight./", "obj_readable_room1_slash_Other_10_gml_2869_0");
			scr_anyface_next("noelle", 21);
			msgnextloc("\\EL* Y-y-y-yes?/", "obj_readable_room1_slash_Other_10_gml_2871_0");
			scr_anyface_next("susie", 34);
			msgnextloc("\\EY* Where the hell'd you put that cool box?/", "obj_readable_room1_slash_Other_10_gml_2873_0");
			scr_anyface_next("noelle", 24);
			msgnextloc("\\EO* Umm^1, I..^1. I just sort of..^1. I.../", "obj_readable_room1_slash_Other_10_gml_2875_0");
			scr_anyface_next("susie", 10);
			msgnextloc("\\EA* Whatever. Just make us another one./", "obj_readable_room1_slash_Other_10_gml_2877_0");
			scr_anyface_next("noelle", 22);
			msgnextloc("\\EM* ..^1. um..^1. o-okay^1, sure!/%", "obj_readable_room1_slash_Other_10_gml_2879_0");
		}
	}
}
if (room == room_dw_mansion_bridges)
{
	scr_speaker("no_name");
	msgsetloc(0, "* (This castle looks like it has worn many seiges...)/%", "obj_readable_room1_slash_Other_10_gml_2843_0");
	if (!i_ex(obj_chaseenemy))
		msgsetloc(0, "* (It seems that peace has returned to the castle...)/%", "obj_readable_room1_slash_Other_10_gml_2890_0");
}
if (room == room_dw_castle_cafe)
{
	scr_speaker("no_name");
	msgsetloc(0, "* (The jukebox is broken.)&* (Feels like you might never find a working one...)/%", "obj_readable_room1_slash_Other_10_gml_2897_0");
}
if (room == room_dw_city_mansion_front)
{
	scr_speaker("no_name");
	msgsetloc(0, "* (It's closed.)/%", "obj_readable_room1_slash_Other_10_gml_2904_0");
}
if (room == room_dw_city_postbaseball_1)
{
	if (global.flag[450] == 0)
	{
		var have_noelle = true;
		if (i_ex(obj_caterpillarchara))
		{
			with (obj_caterpillarchara)
			{
				if (name == "noelle")
					have_noelle = image_alpha == 1;
			}
		}
		if (have_noelle)
		{
			if (read == 0)
			{
				scr_speaker("ralsei");
				msgsetloc(0, "\\E2* Look Kris^1! Another teacup ride!/", "obj_readable_room1_slash_Other_10_gml_2912_0");
				msgnextloc("\\ED* But there's only 3 seats.../", "obj_readable_room1_slash_Other_10_gml_2913_0");
				scr_anyface_next("noelle", 27);
				msgnextloc("\\ER* (M-maybe two of us could..^1. sh-share one?)/", "obj_readable_room1_slash_Other_10_gml_2915_0");
				scr_anyface_next("susie", 20);
				msgnextloc("\\EK* Damn^1, guess we gotta take the stairs./%", "obj_readable_room1_slash_Other_10_gml_2917_0");
			}
			else
			{
				scr_speaker("no_name");
				msgsetloc(0, "* (Deer and teacups..^1. a dangerous combination.)/%", "obj_readable_room1_slash_Other_10_gml_2922_0");
			}
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* (There doesn't seem to be a reason to ride this.)/%", "obj_readable_room1_slash_Other_10_gml_2970_0");
		}
	}
	if (global.flag[450] == 1)
	{
		if (i_ex(obj_room_dw_city_postbaseball))
			obj_room_dw_city_postbaseball.rodeteacup = -3;
		global.flag[450] = 2;
		myinteract = 0;
		read = 0;
		exit;
	}
	if (global.flag[450] == 2)
	{
		scr_speaker("susie");
		msgsetloc(0, "\\EK* Hell no^1, like we're doing that again./%", "obj_readable_room1_slash_Other_10_gml_2939_0");
	}
}
if (room == room_dw_city_split)
{
	skip = 1;
	if (read > 3)
		snd_play_pitch(snd_pombark, choose(1, 1, 1, 1, 1, 1, 1, random_range(0.6, 1.6)));
	else
		snd_play(snd_pombark);
}
if (room == room_dw_city_traffic_4)
{
	skip = 1;
	snd_play(snd_bigcar_yelp);
}
if (room == room_dw_mansion_prefountain)
{
	global.msc = 1232;
	scr_text(global.msc);
}
if (room == room_dw_city_traffic_3)
{
	snd_play(snd_knock);
	scr_speaker("no_name");
	msgsetloc(0, "* (Knock^1, knock^1, knock)/", "obj_readable_room1_slash_Other_10_gml_3015_0");
	msgnextloc("* You found the only knockable door in the city./", "obj_readable_room1_slash_Other_10_gml_3016_0");
	msgnextloc("* This here is my pride and joy.../%", "obj_readable_room1_slash_Other_10_gml_3017_0");
}
if (skip == 0)
	mydialoguer = instance_create(0, 0, obj_dialoguer);
read += 1;
if (skip == 1)
{
	global.interact = 0;
	skip = 0;
}
