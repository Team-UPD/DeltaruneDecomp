if (extflag == "goal")
{
	if (place_meeting(x, y, obj_mainchara) && instance_exists(obj_balancepot) && con == 0)
	{
		con = 1;
		global.flag[385] = 2;
	}
}
if (con == 1 && obj_controller_dw_mansion_potBalance.con == 0)
{
	obj_controller_dw_mansion_potBalance.con = 1;
	con++;
}
