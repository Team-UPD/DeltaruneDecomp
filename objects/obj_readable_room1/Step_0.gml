if (myinteract == 3)
{
	if (!d_ex())
	{
		global.interact = 0;
		myinteract = 0;
		with (obj_mainchara)
			onebuffer = 3;
		if (selfdestruct == true)
			alarm[0] = 2;
	}
}
if (room == room_dw_mansion_potBalance || room == room_dw_mansion_east_2f_c)
	scr_depth();
