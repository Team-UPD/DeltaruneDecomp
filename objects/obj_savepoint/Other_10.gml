global.msc = 0;
global.typer = 5;
if (global.darkzone == 1)
	global.typer = 6;
global.fc = 0;
global.fe = 0;
global.interact = 1;
nodialogue = 1;
if (room == room_castle_town)
{
	nodialogue = 0;
	global.msg[0] = stringsetloc("* In front of you^1, a castle looms beneath the empty town./", "obj_savepoint_slash_Other_10_gml_17_0");
	global.msg[1] = stringsetloc("* A black geyser emerges from it^1, piercing endlessly into the sky./", "obj_savepoint_slash_Other_10_gml_18_0");
	global.msg[2] = stringsetloc("* The power of this place shines within you./%", "obj_savepoint_slash_Other_10_gml_19_0");
	if (scr_havechar(3))
	{
		global.msg[0] = stringsetloc("* Ralsei^1, the lonely prince^1, is now your ally./", "obj_savepoint_slash_Other_10_gml_23_0");
		global.msg[1] = stringsetloc("* The power of fluffy boys shines within you./%", "obj_savepoint_slash_Other_10_gml_24_0");
	}
}
if (room == room_dw_castle_area_2)
{
	nodialogue = 0;
	scr_speaker("no_name");
	msgsetloc(0, "* You look upon the castle you first saw yesterday.../", "obj_savepoint_slash_Other_10_gml_30_0");
	msgnextloc("* You are filled with the power of immediate nostalgia./%", "obj_savepoint_slash_Other_10_gml_31_0");
}
if (room == room_dw_castle_area_2_transformed)
{
	if (global.plot < 200)
	{
		if (talked == 0)
		{
			nodialogue = 0;
			scr_speaker("no_name");
			msgsetloc(0, "* The castle town has transformed from the power of friendship./", "obj_savepoint_slash_Other_10_gml_41_0");
			msgnextloc("* You are filled with the power of friendship-based architecture./%", "obj_savepoint_slash_Other_10_gml_42_0");
		}
		else
		{
			nodialogue = 1;
		}
	}
	else
	{
		nodialogue = 0;
		if (global.flag[469] == 0)
		{
			global.flag[469] = 1;
			scr_speaker("no_name");
			msgsetloc(0, "* (You touched the light...)/", "obj_savepoint_slash_Other_10_gml_59_0");
			msgnextloc("* (You thought about how you \\cRcan't go back to the Cyber World\\cW anymore.)/", "obj_savepoint_slash_Other_10_gml_60_0_b");
			msgnextloc("* (You considered this carefully!)/%", "obj_savepoint_slash_Other_10_gml_61_0_b");
		}
		else
		{
			scr_speaker("no_name");
			msgsetloc(0, "* After a long day^1, the town has grown once again./", "obj_savepoint_slash_Other_10_gml_50_0");
			msgnextloc("* You are filled with a certain power.../%", "obj_savepoint_slash_Other_10_gml_51_0");
		}
	}
}
if (room == room_dw_cyber_savepoint)
{
	nodialogue = 0;
	if (global.plot < 65)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* A green field extends before you..^1. And^1, in the distance^1, a city shines brightly./", "obj_savepoint_slash_Other_10_gml_60_0");
		msgnextloc("* You are filled with the power of a new adventure./%", "obj_savepoint_slash_Other_10_gml_61_0");
	}
	else
	{
		scr_speaker("no_name");
		msgsetloc(0, "* A green field extends before you..^1. You've seen this already./", "obj_savepoint_slash_Other_10_gml_65_0");
		msgnextloc("* You are filled with the power of pointless backtracking./%", "obj_savepoint_slash_Other_10_gml_66_0");
	}
}
if (room == room_dw_cyber_queen_boxing)
{
	nodialogue = 0;
	scr_speaker("no_name");
	msgsetloc(0, "* The game is wrecked. You are filled with the power of videogame violence./%", "obj_savepoint_slash_Other_10_gml_73_0");
}
if (room == room_dw_cyber_musical_shop)
{
	nodialogue = 0;
	scr_speaker("no_name");
	msgsetloc(0, "* Crash^1! Boom^1! Bang^1! There's a terrific noise coming from the building nearby.../", "obj_savepoint_slash_Other_10_gml_79_0");
	msgnextloc("* You are filled with the power of noise music./%", "obj_savepoint_slash_Other_10_gml_80_0");
}
if (room == room_dw_city_entrance)
{
	nodialogue = 0;
	if (scr_havechar(4))
	{
		scr_speaker("no_name");
		msgsetloc(0, "* Noelle is with you now./", "obj_savepoint_slash_Other_10_gml_88_0");
		msgnextloc("* You are still filled with the power from the cat sign./%", "obj_savepoint_slash_Other_10_gml_89_0");
	}
	else if (scr_havechar(2) && scr_havechar(3))
	{
		scr_speaker("no_name");
		msgsetloc(0, "* You are mostly filled with the power of fluffy boys and mean girls./", "obj_savepoint_slash_Other_10_gml_93_0");
		msgnextloc("* The cat sign still comprises about one percent of it./%", "obj_savepoint_slash_Other_10_gml_94_0");
	}
	else
	{
		scr_speaker("no_name");
		msgsetloc(0, "* You have neither fluffy boys nor mean girls with you now./", "obj_savepoint_slash_Other_10_gml_98_0");
		msgnextloc("* Reluctantly^1, you are filled with the power from the cat sign./%", "obj_savepoint_slash_Other_10_gml_99_0");
	}
}
if (room == room_dw_city_hacker)
{
	nodialogue = 0;
	if (scr_havechar(4))
	{
		scr_speaker("no_name");
		msgsetloc(0, "* Noelle has joined your party./", "obj_savepoint_slash_Other_10_gml_108_0");
		msgnextloc("* You are filled with the power of not knowing what a sugarplum is./%", "obj_savepoint_slash_Other_10_gml_109_0");
	}
	else
	{
		scr_speaker("no_name");
		msgsetloc(0, "* Noelle is no longer in your party. All of you are filled with the power.../", "obj_savepoint_slash_Other_10_gml_113_0");
		msgnextloc("* Of not knowing what a sugarplum is./%", "obj_savepoint_slash_Other_10_gml_114_0");
	}
}
if (room == room_dw_city_savepoint)
{
	nodialogue = 0;
	if (global.plot < 100)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* Energetic music wafts from the boxes./", "obj_savepoint_slash_Other_10_gml_123_0");
		msgnextloc("* You are filled with the power of musical bagels./%", "obj_savepoint_slash_Other_10_gml_124_0");
	}
	else
	{
		scr_speaker("no_name");
		msgsetloc(0, "* You are filled with the power of silence./%", "obj_savepoint_slash_Other_10_gml_128_0");
	}
}
if (room == room_dw_city_berdly)
{
	nodialogue = 0;
	scr_speaker("no_name");
	msgsetloc(0, "* After defeating Berdly^1, a certain scent hangs in the air.../", "obj_savepoint_slash_Other_10_gml_135_0");
	msgnextloc("* You are filled with the power of chicken nuggets./%", "obj_savepoint_slash_Other_10_gml_136_0");
}
if (room == room_dw_mansion_lightner_hallway)
{
	nodialogue = 0;
	scr_speaker("no_name");
	msgsetloc(0, "* You have escaped from your second personalized room of the day./", "obj_savepoint_slash_Other_10_gml_142_0");
	msgnextloc("* You are filled with the power of vacation homes./%", "obj_savepoint_slash_Other_10_gml_143_0");
}
if (room == room_dw_mansion_entrance)
{
	nodialogue = 0;
	scr_speaker("no_name");
	msgsetloc(0, "* Looking at these legs fills you with a certain power./%", "obj_savepoint_slash_Other_10_gml_33_0");
}
if (room == room_dw_mansion_east_3f)
{
	nodialogue = 0;
	scr_speaker("no_name");
	msgsetloc(0, "* Susie has gone into a book hole with Berdly./", "obj_savepoint_slash_Other_10_gml_155_0");
	msgnextloc("* You are filled with the power of book holes./%", "obj_savepoint_slash_Other_10_gml_156_0");
}
if (room == room_dw_mansion_acid_tunnel_exit)
{
	nodialogue = 0;
	scr_speaker("no_name");
	msgsetloc(0, "* Everyone is together^1, but the wind blows coldly.../", "obj_savepoint_slash_Other_10_gml_162_0");
	msgnextloc("* You are filled with a certain power./%", "obj_savepoint_slash_Other_10_gml_163_0");
}
if (room == room_dw_mansion_b_central)
	nodialogue = 1;
if (scr_sideb_get_phase() > 0)
	nodialogue = 1;
if (scr_sideb_get_phase() == 2 && scr_havechar(4))
{
	nodialogue = 0;
	scr_speaker("no_name");
	msgsetloc(0, "* You and Noelle were filled with power./%", "obj_savepoint_slash_Other_10_gml_177_0");
}
if (scr_sideb_get_phase() == 4)
{
	if (room == room_dw_castle_area_2_transformed)
	{
		nodialogue = 0;
		scr_speaker("no_name");
		msgsetloc(0, "* After a long day^1, you have returned to the castle town./", "obj_savepoint_slash_Other_10_gml_187_0");
		msgnextloc("* But^1, you still feel the power in your hands.../%", "obj_savepoint_slash_Other_10_gml_188_0");
	}
}
myinteract = 3;
if (nodialogue == 0)
	mydialoguer = instance_create(0, 0, obj_dialoguer);
talked += 1;
snd_play(snd_power);
for (i = 0; i < 5; i += 1)
{
	if (global.hp[i] < global.maxhp[i])
		global.hp[i] = global.maxhp[i];
}
