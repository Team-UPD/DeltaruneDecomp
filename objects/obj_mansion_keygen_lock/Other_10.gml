if (unlocked == false)
{
	scr_speaker("no_name");
	if (scr_keyitemcheck(12) == 0)
	{
		msgsetloc(0, "* It has a lock that seems impossible to open./%", "obj_mansion_keygen_lock_slash_Other_10_gml_5_0");
		myinteract = 3;
	}
	if (scr_keyitemcheck(12) == 1)
	{
		unlocked = true;
		scr_keyitemremove(12);
		msgsetloc(0, "* (Kris used the KEYGEN.)/%", "obj_mansion_keygen_lock_slash_Other_10_gml_9_0");
		global.flag[309] = 4;
		con = 1;
	}
	global.interact = 1;
	mydialoguer = instance_create(0, 0, obj_dialoguer);
}
