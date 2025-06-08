function scr_itemcheck_inventory_and_pocket(arg0)
{
	var _haveeither = 0;
	var itemcounttotal = 0;
	scr_itemcheck(arg0);
	if (haveit == 1)
		_haveeither = 1;
	itemcounttotal += itemcount;
	scr_itemcheck_pocket(arg0);
	if (haveit == 1)
		_haveeither = 1;
	itemcounttotal += itemcount;
	haveit = _haveeither;
	itemcount = itemcounttotal;
	return haveit;
}
