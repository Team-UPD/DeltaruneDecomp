function scr_itemdesc_oldtype(arg0)
{
	global.msg[0] = stringsetloc("* It could not be./%", "scr_itemdesc_oldtype_slash_scr_itemdesc_oldtype_gml_2_0");
	switch (arg0)
	{
		case 0:
			global.msg[0] = stringsetloc("* An emptiness filled your hands./%", "scr_itemdesc_oldtype_slash_scr_itemdesc_oldtype_gml_6_0");
			break;
		case 1:
			global.msg[0] = stringsetloc("* \"Dark Candy\" - Heals 60 HP&* Black and red star that&  tastes like marshmallows./%", "scr_itemdesc_oldtype_slash_scr_itemdesc_oldtype_gml_9_0");
			break;
		case 2:
			global.msg[0] = stringsetloc("* \"Life Dew\" - Revive Ally (Weak)&* Glowing dew...&* It refreshes your SOUL./%", "scr_itemdesc_oldtype_slash_scr_itemdesc_oldtype_gml_12_0");
			break;
	}
}
