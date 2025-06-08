if (skip == 0)
{
	if (canttalk == 0 && global.interact == 0)
	{
		global.msc = 0;
		global.typer = 5;
		global.facechoice = 0;
		scr_speaker("noone");
		msgsetloc(0, "* (It appears to be some kind of forcefield.)/%", "obj_forcefield_slash_Other_10_gml_8_0");
		mydialoguer = instance_create(0, 0, obj_dialoguer);
		myinteract = 3;
		global.interact = 1;
	}
}
