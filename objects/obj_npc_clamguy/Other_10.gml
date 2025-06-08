if (talked == 0)
{
	msgsetloc(0, "* Oh hey hey hey hey hey./", "obj_npc_clamguy_slash_Other_10_gml_5_0");
	msgnextloc("* Listen up. See that \\cYweird circle\\cW on the beach?/", "obj_npc_clamguy_slash_Other_10_gml_6_0");
	msgnextloc("* Yesterday I \\cYwaited\\cW on it^1, and \\cYsomething weird\\cW came out./", "obj_npc_clamguy_slash_Other_10_gml_7_0");
	msgnextloc("* Of course^1, it's not \\cYyesterday\\cW anymore^1, so too bad!/%", "obj_npc_clamguy_slash_Other_10_gml_8_0");
}
else
{
	msgsetloc(0, "* Oh hey hey hey hey hey./", "obj_npc_clamguy_slash_Other_10_gml_11_0");
	msgnextloc("* When that thing showed up^1, I called it weird./", "obj_npc_clamguy_slash_Other_10_gml_12_0");
	msgnextloc("* It sunk back into the water..^1. don't think it's coming back!/%", "obj_npc_clamguy_slash_Other_10_gml_13_0");
}
talked++;
myinteract = 3;
global.msc = 0;
global.typer = 5;
global.fc = 0;
global.fc = 0;
global.interact = 1;
mydialoguer = instance_create(0, 0, obj_dialoguer);
