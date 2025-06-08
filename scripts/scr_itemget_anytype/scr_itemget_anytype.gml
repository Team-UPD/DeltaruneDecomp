function scr_itemget_anytype(arg0, arg1)
{
	noroom = 0;
	if (arg1 == "item")
		scr_itemget(arg0);
	if (arg1 == "weapon")
		scr_weaponget(arg0);
	if (arg1 == "armor")
		scr_armorget(arg0);
	if (arg1 == "key")
		scr_keyitemget(arg0);
	if (arg1 == "money")
		global.gold += arg0;
}
