function scr_litemname()
{
	global.litemname[0] = " ";
	for (i = 0; i < 8; i += 1)
	{
		itemid = global.litem[i];
		if (itemid == 0)
			global.litemname[i] = " ";
		if (itemid == 1)
			global.litemname[i] = stringsetloc("Hot Chocolate", "scr_litemname_slash_scr_litemname_gml_6_0");
		if (itemid == 2)
			global.litemname[i] = stringsetloc("Pencil", "scr_litemname_slash_scr_litemname_gml_7_0");
		if (itemid == 3)
			global.litemname[i] = stringsetloc("Bandage", "scr_litemname_slash_scr_litemname_gml_8_0");
		if (itemid == 4)
			global.litemname[i] = stringsetloc("Bouquet", "scr_litemname_slash_scr_litemname_gml_9_0");
		if (itemid == 5)
			global.litemname[i] = stringsetloc("Ball of Junk", "scr_litemname_slash_scr_litemname_gml_10_0");
		if (itemid == 6)
			global.litemname[i] = stringsetloc("Halloween Pencil", "scr_litemname_slash_scr_litemname_gml_11_0");
		if (itemid == 7)
			global.litemname[i] = stringsetloc("Lucky Pencil", "scr_litemname_slash_scr_litemname_gml_12_0");
		if (itemid == 8)
			global.litemname[i] = stringsetloc("Egg", "scr_litemname_slash_scr_litemname_gml_13_0");
		if (itemid == 9)
			global.litemname[i] = stringsetloc("Cards", "scr_litemname_slash_scr_litemname_gml_14_0");
		if (itemid == 10)
			global.litemname[i] = stringsetloc("Box of Heart Candy", "scr_litemname_slash_scr_litemname_gml_15_0");
		if (itemid == 11)
			global.litemname[i] = stringsetloc("Glass", "scr_litemname_slash_scr_litemname_gml_16_0");
		if (itemid == 12)
			global.litemname[i] = stringsetloc("Eraser", "scr_litemname_slash_scr_litemname_gml_17_0");
		if (itemid == 13)
			global.litemname[i] = stringsetloc("Mech. Pencil", "scr_litemname_slash_scr_litemname_gml_18_0");
		if (itemid == 14)
			global.litemname[i] = stringsetloc("Wristwatch", "scr_litemname_slash_scr_litemname_gml_19_0");
	}
}
