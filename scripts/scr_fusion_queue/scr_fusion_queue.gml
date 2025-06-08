function scr_fusion_queue(arg0)
{
	scr_fusion_info(arg0);
	fusionIngredient1[fusioncount] = ingredient[0];
	fusionIngredient2[fusioncount] = ingredient[1];
	fusionIngredientName1[fusioncount] = "--";
	fusionIngredientName2[fusioncount] = "--";
	fusionIngredientType1[fusioncount] = ingredienttype[0];
	fusionIngredientType2[fusioncount] = ingredienttype[1];
	fusionDesc[fusioncount] = resultdesc;
	fusionResult[fusioncount] = result;
	fusionResultType[fusioncount] = resulttype;
	fusionResultName[fusioncount] = "--";
	fusionResultTopComment[fusioncount] = "--";
	fusionHaveIngredient1[fusioncount] = 0;
	fusionHaveIngredient2[fusioncount] = 0;
	fusionCanMake[fusioncount] = 0;
	if (fusionIngredientType1[fusioncount] == "item")
	{
		scr_iteminfo(fusionIngredient1[fusioncount]);
		fusionIngredientName1[fusioncount] = itemnameb;
		if (scr_itemcheck(fusionIngredient1[fusioncount]))
			fusionHaveIngredient1[fusioncount] = 1;
	}
	if (fusionIngredientType1[fusioncount] == "weapon")
	{
		scr_weaponinfo(fusionIngredient1[fusioncount]);
		fusionIngredientName1[fusioncount] = weaponnametemp;
		if (scr_weaponcheck_inventory(fusionIngredient1[fusioncount]))
			fusionHaveIngredient1[fusioncount] = 1;
	}
	if (fusionIngredientType1[fusioncount] == "armor")
	{
		scr_armorinfo(fusionIngredient1[fusioncount]);
		fusionIngredientName1[fusioncount] = armornametemp;
		if (scr_armorcheck_inventory(fusionIngredient1[fusioncount]))
			fusionHaveIngredient1[fusioncount] = 1;
	}
	if (fusionIngredientType1[fusioncount] == "key")
	{
		scr_keyiteminfo(fusionIngredient1[fusioncount]);
		fusionIngredientName1[fusioncount] = tempkeyitemname;
		if (scr_keyitemcheck(fusionIngredient1[fusioncount]))
			fusionHaveIngredient1[fusioncount] = 1;
	}
	identicalcheck = 0;
	if (fusionIngredientType2[fusioncount] == fusionIngredientType2[fusioncount])
	{
		if (fusionIngredient1[fusioncount] == fusionIngredient2[fusioncount])
			identicalcheck = 1;
	}
	if (fusionIngredientType2[fusioncount] == "item")
	{
		scr_iteminfo(fusionIngredient2[fusioncount]);
		fusionIngredientName2[fusioncount] = itemnameb;
		if (scr_itemcheck(fusionIngredient2[fusioncount]))
		{
			if (identicalcheck == 0 || (identicalcheck == 1 && itemcount >= 2))
				fusionHaveIngredient2[fusioncount] = 1;
		}
	}
	if (fusionIngredientType2[fusioncount] == "weapon")
	{
		scr_weaponinfo(fusionIngredient2[fusioncount]);
		fusionIngredientName2[fusioncount] = weaponnametemp;
		if (scr_weaponcheck_inventory(fusionIngredient2[fusioncount]))
		{
			if (identicalcheck == 0 || (identicalcheck == 1 && itemcount >= 2))
				fusionHaveIngredient2[fusioncount] = 1;
		}
	}
	if (fusionIngredientType2[fusioncount] == "armor")
	{
		scr_armorinfo(fusionIngredient2[fusioncount]);
		fusionIngredientName2[fusioncount] = armornametemp;
		if (scr_armorcheck_inventory(fusionIngredient2[fusioncount]))
		{
			if (identicalcheck == 0 || (identicalcheck == 1 && itemcount >= 2))
				fusionHaveIngredient2[fusioncount] = 1;
		}
	}
	if (fusionIngredientType2[fusioncount] == "key")
	{
		scr_keyiteminfo(fusionIngredient2[fusioncount]);
		fusionIngredientName2[fusioncount] = tempkeyitemname;
		if (scr_keyitemcheck(fusionIngredient2[fusioncount]))
		{
			if (identicalcheck == 0 || (identicalcheck == 1 && itemcount >= 2))
				fusionHaveIngredient2[fusioncount] = 1;
		}
	}
	if (fusionResultType[fusioncount] == "item")
	{
		scr_iteminfo(fusionResult[fusioncount]);
		fusionResultName[fusioncount] = itemnameb;
		fusionResultTopComment[fusioncount] = scr_itemdesc_single(fusionResult[fusioncount]);
	}
	if (fusionResultType[fusioncount] == "weapon")
	{
		scr_weaponinfo(fusionResult[fusioncount]);
		fusionResultName[fusioncount] = weaponnametemp;
		fusionResultTopComment[fusioncount] = weapondesctemp;
	}
	if (fusionResultType[fusioncount] == "armor")
	{
		scr_armorinfo(fusionResult[fusioncount]);
		fusionResultName[fusioncount] = armornametemp;
		fusionResultTopComment[fusioncount] = armordesctemp;
	}
	if (fusionResultType[fusioncount] == "key")
	{
		scr_keyiteminfo(fusionResult[fusioncount]);
		fusionResultName[fusioncount] = tempkeyitemname;
		fusionResultTopComment[fusioncount] = tempkeyitemdesc;
	}
	if (fusionHaveIngredient1[fusioncount] && fusionHaveIngredient2[fusioncount])
		fusionCanMake[fusioncount] = 1;
	fusioncount++;
}
