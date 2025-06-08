function scr_fusion_info(arg0)
{
	ingredient[0] = 8;
	ingredienttype[0] = "item";
	ingredient[1] = 8;
	ingredienttype[1] = "item";
	result = 22;
	resulttype = "item";
	resultdesc = stringsetloc("Heal 60 HPx2", "scr_fusion_info_slash_scr_fusion_info_gml_11_0");
	switch (arg0)
	{
		case 1:
			ingredient[0] = 8;
			ingredienttype[0] = "item";
			ingredient[1] = 8;
			ingredienttype[1] = "item";
			result = 22;
			resulttype = "item";
			resultdesc = stringsetloc("Heal 60 HPx2", "scr_fusion_info_slash_scr_fusion_info_gml_23_0");
			break;
		case 2:
			ingredient[0] = 1;
			ingredienttype[0] = "armor";
			ingredient[1] = 1;
			ingredienttype[1] = "armor";
			result = 8;
			resulttype = "armor";
			resultdesc = stringsetloc("$ Gained +5%", "scr_fusion_info_slash_scr_fusion_info_gml_34_0");
			break;
		case 3:
			ingredient[0] = 3;
			ingredienttype[0] = "armor";
			ingredient[1] = 4;
			ingredienttype[1] = "armor";
			result = 9;
			resulttype = "armor";
			resultdesc = stringsetloc("Graze Area+", "scr_fusion_info_slash_scr_fusion_info_gml_56_0");
			break;
		case 4:
			ingredient[0] = 10;
			ingredienttype[0] = "armor";
			ingredient[1] = 5;
			ingredienttype[1] = "armor";
			result = 13;
			resulttype = "armor";
			resultdesc = stringsetloc("Attack+", "scr_fusion_info_slash_scr_fusion_info_gml_56_0_b");
			break;
		case 5:
			ingredient[0] = 12;
			ingredienttype[0] = "armor";
			ingredient[1] = 27;
			ingredienttype[1] = "item";
			result = 15;
			resulttype = "armor";
			resultdesc = stringsetloc("Graze TP+", "scr_fusion_info_slash_scr_fusion_info_gml_67_0");
			break;
		case 6:
			ingredient[0] = 13;
			ingredienttype[0] = "weapon";
			ingredient[1] = 15;
			ingredienttype[1] = "key";
			result = 11;
			resulttype = "weapon";
			resultdesc = stringsetloc("Trance", "scr_fusion_info_slash_scr_fusion_info_gml_45_0");
			break;
	}
}
