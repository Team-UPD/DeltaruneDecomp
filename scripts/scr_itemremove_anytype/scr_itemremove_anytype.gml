function scr_itemremove_anytype(arg0, arg1)
{
	if (arg1 == "item")
		scr_itemremove(arg0);
	if (arg1 == "weapon")
		scr_weaponremove(arg0);
	if (arg1 == "armor")
		scr_armorremove(arg0);
	if (arg1 == "key")
		scr_keyitemremove(arg0);
}
