global.interact = 1;
image_speed_fake = 0.2;
scr_speaker("noone");
myid = global.flag[800 + seat];
seat0 = global.flag[800];
seat1 = global.flag[801];
seat2 = global.flag[802];
seat3 = global.flag[803];
aite = -1;
if (seat == 2)
	aite = seat3;
if (seat == 3)
	aite = seat2;
if (myid == 5 && aite == 6)
	_dialogue[0] = stringsetloc("* Sure is great to be here with my best friend Hathy./%", "obj_npc_cafe_slash_Other_10_gml_27_0");
if (myid == 6 && aite == 5)
	_dialogue[0] = stringsetloc("* (Hathy seems fine.)/%", "obj_npc_cafe_slash_Other_10_gml_32_0");
if (myid == 5 && aite == 22)
	_dialogue[0] = stringsetloc("* Sigh..^1. does this guy have to one-up me on everything!?/%", "obj_npc_cafe_slash_Other_10_gml_38_0");
if (myid == 22 && aite == 5)
	_dialogue[0] = stringsetloc("* I'll have a double Starfait. No^1, triple. Oh^1, hi^1, boss^1! (Smile)/%", "obj_npc_cafe_slash_Other_10_gml_43_0");
if (myid == 6 && aite == 23)
	_dialogue[0] = stringsetloc("* (Hathy is letting Head Hathy have a sip of her latte.)/%", "obj_npc_cafe_slash_Other_10_gml_50_0");
if (myid == 23 && aite == 6)
	_dialogue[0] = stringsetloc("* (Head Hathy doesn't seem so alone...)/%", "obj_npc_cafe_slash_Other_10_gml_55_0");
if (myid == 35 && aite == 30)
	_dialogue[0] = stringsetloc("* We don't get along..^1. but we can drink together./%", "obj_npc_cafe_slash_Other_10_gml_61_0");
if (myid == 30 && aite == 35)
	_dialogue[0] = stringsetloc("* I'll get you next time^1, pipo^1! ..^1. Want some more sugar?/%", "obj_npc_cafe_slash_Other_10_gml_66_0");
if (myid == 32 && aite == 34)
{
	_dialogue[0] = stringsetloc("* [Miaouw]/%", "obj_npc_cafe_slash_Other_10_gml_72_0");
	if (i_ex(obj_npc_castle_cafe))
	{
		with (obj_npc_castle_cafe)
			t_con = 1;
	}
}
if (myid == 34 && aite == 32)
	_dialogue[0] = stringsetloc("* [Brrrrrrrr....]/%", "obj_npc_cafe_slash_Other_10_gml_77_0");
if (myid == 33 && aite == 40)
	_dialogue[0] = stringsetloc("* (..^1. it seems annoyed that its energy drink has been crushed.)/%", "obj_npc_cafe_slash_Other_10_gml_83_0");
if (myid == 40 && aite == 33)
	_dialogue[0] = stringsetloc("* (It's crushing many of the surrounding drinks.)/%", "obj_npc_cafe_slash_Other_10_gml_88_0");
if (myid == 13 && aite == 36)
	_dialogue[0] = stringsetloc("* (I'm the dust off his shoulder.^1)&* (Sukkiri.)/%", "obj_npc_cafe_slash_Other_10_gml_100_0_b");
if (myid == 36 && aite == 13)
	_dialogue[0] = stringsetloc("* We'll make sure to clean our plates^1.&* (Sukkiri.)/%", "obj_npc_cafe_slash_Other_10_gml_105_0");
if (seat0 == 36 && seat1 == 36 && seat2 == 36 && seat3 == 36)
	_dialogue[0] = stringsetloc("* Boss^1, are you enjoying your \\cYButler Cafe\\c0?/%", "obj_npc_cafe_slash_Other_10_gml_111_0");
if (myid == 23 && aite == 40)
{
	if (global.flag[327] == 0)
		global.flag[327] = 1;
	_dialogue[0] = stringsetloc("* (..^1. it seems relaxed its partner is so quiet.)/%", "obj_npc_cafe_slash_Other_10_gml_100_0");
}
if (myid == 40 && aite == 23)
{
	if (global.flag[327] == 0)
		global.flag[327] = 1;
	_dialogue[0] = stringsetloc("* (...)/%", "obj_npc_cafe_slash_Other_10_gml_110_0");
}
if (myid == 40 && global.flag[327] == 1 && aite != 23)
{
	if (seat2 == 23 || seat3 == 23)
	{
		if (seat3 == 33 || seat2 == 33)
			_dialogue[0] = stringsetloc("* (..^1. looks like it's about to flip its table over.)/%", "obj_npc_cafe_slash_Other_10_gml_120_0");
		else
			_dialogue[0] = stringsetloc("* (..^1. it's staring at the southern seats and crushing its drink hard.)/%", "obj_npc_cafe_slash_Other_10_gml_124_0");
	}
}
for (j = 0; j < _dialogueboxes; j++)
	msgset(j, _dialogue[j]);
remanimspeed = image_speed_fake;
myinteract = 3;
mydialoguer = instance_create(0, 0, obj_dialoguer);
talked += 1;
