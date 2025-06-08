scr_speaker("no_name");
msgsetloc(0, "* (You dug through the trash...)/", "obj_cybercity_trashcan_slash_Other_10_gml_5_0");
if (global.flag[flag] == 0)
{
	image_index = 1;
	snd_play(snd_impact);
	if (money_amount > 0)
	{
		global.flag[flag] = 1;
		var itemget = scr_itemget_anytype_text(money_amount, "money");
		msgnextsubloc("* (And found $~1!)/", money_amount, "obj_cybercity_trashcan_slash_Other_10_gml_16_0");
		msgnext(itemget);
	}
	else if (item_id > 0)
	{
		var itemget = scr_itemget_anytype_text(item_id, "item");
		msgnextsubloc("* (And found a ~1!)/", itemname, "obj_cybercity_trashcan_slash_Other_10_gml_23_0");
		msgnext(itemget);
		if (noroom == 0)
			global.flag[flag] = 1;
	}
}
else
{
	msgnextloc("* (And found trash!)/%", "obj_cybercity_trashcan_slash_Other_10_gml_35_0");
}
myinteract = 3;
global.interact = 1;
mydialoguer = instance_create(0, 0, obj_dialoguer);
