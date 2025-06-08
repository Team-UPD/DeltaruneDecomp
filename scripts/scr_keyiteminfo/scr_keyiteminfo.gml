function scr_keyiteminfo(arg0)
{
	tempkeyitemdesc = stringsetloc("---", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_2_0");
	tempkeyitemname = stringsetloc(" ", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_3_0");
	tempkeyitemusable = 0;
	switch (arg0)
	{
		case 0:
			tempkeyitemdesc = stringsetloc("---", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_9_0");
			tempkeyitemname = stringsetloc(" ", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_10_0");
			break;
		case 1:
			tempkeyitemdesc = stringsetloc("It can be used to make calls.", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_13_0");
			tempkeyitemname = stringsetloc("Cell Phone", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_14_0");
			tempkeyitemusable = 1;
			break;
		case 2:
			tempkeyitemdesc = stringsetloc("Not too important, not too unimportant.", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_18_0");
			tempkeyitemname = stringsetloc("Egg", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_19_0");
			tempkeyitemusable = 1;
			break;
		case 3:
			tempkeyitemdesc = stringsetloc("Though broken, it seethes with power.#A master smith could fix it.", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_23_0");
			tempkeyitemname = stringsetloc("BrokenCake", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_24_0");
			break;
		case 4:
			tempkeyitemdesc = stringsetloc("It's the top part of a key.#A smith could fix all three parts.", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_27_0");
			tempkeyitemname = stringsetloc("Broken Key A", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_28_0");
			break;
		case 5:
			tempkeyitemdesc = stringsetloc("The key to a mysterious cell.#Something feels strange about it.", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_31_0");
			tempkeyitemname = stringsetloc("Door Key", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_32_0");
			break;
		case 6:
			tempkeyitemdesc = stringsetloc("It's the middle part of a key.#A smith could fix all three parts.", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_35_0");
			tempkeyitemname = stringsetloc("Broken Key B", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_36_0");
			break;
		case 7:
			tempkeyitemdesc = stringsetloc("It's the bottom part of a key.#A smith could fix all three parts.", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_39_0");
			tempkeyitemname = stringsetloc("Broken Key C", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_40_0");
			break;
		case 8:
			tempkeyitemdesc = stringsetloc("Hohoho! I'm a tough boy!#Treat me like one of your ITEMS!", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_43_0");
			if (global.plot >= 20)
				tempkeyitemdesc = stringsetloc("Hohoho! ROUXLS jumped out of your#pocket! How dadcrobatic! (Lesser)", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_46_0");
			if (global.plot >= 55)
				tempkeyitemdesc = stringsetloc("Hohoho! That game looked fun!#Let me be the stool next!", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_50_0");
			if (global.plot >= 60)
				tempkeyitemdesc = stringsetloc("Sounded like milk out there. Splat!#Were you three osmosing without me!?", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_54_0");
			if (global.plot >= 65)
				tempkeyitemdesc = stringsetloc("We fell! But don't worry. I'm a strong boy.#I won't be trounced by a mere bounce!", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_58_0");
			if (global.plot >= 66)
				tempkeyitemdesc = stringsetloc("Split up? We'll solve this mystery fast!#You? You can be the un-talking dog.", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_62_0");
			if (global.plot >= 70)
				tempkeyitemdesc = stringsetloc("Ho-ho! A soft cream is following you!#Can we make them a bad guy?", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_66_0");
			if (global.plot >= 75)
			{
				tempkeyitemdesc = stringsetloc("That golden statue... Could it be...#The illusory nipple technique!?", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_70_0_b");
				if (global.flag[418] == 1)
					tempkeyitemdesc = stringsetloc("Wow! Thanks for the free sample!#I couldn't eat another bite!!", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_74_0");
			}
			if (global.plot >= 79)
				tempkeyitemdesc = stringsetloc("The bluebird of crappiness.#Fly high, bluebird. Fly high.", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_79_0");
			if (global.plot >= 85)
				tempkeyitemdesc = stringsetloc("Did I miss something? I was doing my#calisthetics. Stay handsome.", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_83_0");
			if (global.plot >= 90)
				tempkeyitemdesc = stringsetloc("Hey! Thanks for the tape! I was hungry!#Push my tummy to hear a cool song!", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_87_0");
			if (global.plot >= 99)
				tempkeyitemdesc = stringsetloc("Hoho! It's me, Lancer! Release me and#I will release you!", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_91_0");
			if (scr_sideb_get_phase() >= 1 && global.flag[915] >= 1.5)
			{
				tempkeyitemdesc = stringsetloc("(Innocent boys are fast asleep.)", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_95_0");
				if (scr_sideb_get_phase() >= 3)
					tempkeyitemdesc = stringsetloc("A stone statue.#Strangely, it looks like Lancer...", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_99_0");
			}
			if (global.plot >= 200)
			{
				tempkeyitemdesc = stringsetloc("Hoho! What a terrific boy's adventure.#Time to kick off my feet and relax...", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_105_0");
				if (room == room_dw_castle_restaurant)
					tempkeyitemdesc = stringsetloc("Oo la la! Who is that handsome#mustachioed boy! I think I'm in love!", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_109_0");
				if (room == room_cc_lancer || room == room_dw_ralsei_castle_2f)
					tempkeyitemdesc = stringsetloc("(huff, puff) There, I got back into your#pocket! Now you can use my power!", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_114_0");
			}
			tempkeyitemname = stringsetloc("Lancer", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_48_0");
			tempkeyitemusable = 1;
			break;
		case 9:
			tempkeyitemdesc = stringsetloc("Thou gazeth upon a man most handsometh.#This daringst genius, adoredeth beyondth all hey let me speakst", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_52_0");
			tempkeyitemname = stringsetloc("Rouxls Kaard", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_53_0");
			if (global.plot >= 200)
				tempkeyitemdesc = stringsetloc("Oh, milord! Tis I, your humblest servante,#righte here where I never lefteth!", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_126_0");
			break;
		case 10:
			tempkeyitemdesc = stringsetloc("A data disk from a strange machine.#Didn't someone want this?", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_56_0");
			tempkeyitemname = stringsetloc("EmptyDisk", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_57_0");
			break;
		case 11:
			tempkeyitemdesc = stringsetloc("A strange disk. You can feel it#smiling in your hand.", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_60_0");
			tempkeyitemname = stringsetloc("LoadedDisk", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_61_0");
			break;
		case 12:
			tempkeyitemdesc = stringsetloc("A shady-looking program that can#open certain doors.", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_64_0");
			tempkeyitemname = stringsetloc("KeyGen", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_65_0");
			break;
		case 13:
			var crystal_amount = 0;
			if (global.flag[241] >= 6)
				crystal_amount++;
			if (global.flag[309] >= 9)
				crystal_amount++;
			tempkeyitemusable = 1;
			tempkeyitemdesc = stringsetsubloc("A sharp shadow moves like water in the hand.#You have collected [~1].", crystal_amount, "scr_keyiteminfo_slash_scr_keyiteminfo_gml_70_0");
			tempkeyitemname = stringsetloc("ShadowCrystal", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_71_0");
			break;
		case 14:
			tempkeyitemname = stringsetloc("Starwalker", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_123_0");
			tempkeyitemdesc = stringsetloc("The original                     #         (Starwalker)", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_124_0");
			break;
		case 15:
			tempkeyitemname = stringsetloc("PureCrystal", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_132_0");
			tempkeyitemdesc = stringsetloc("The shadow purified by the cat", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_133_0");
			break;
	}
}
