if (instance_exists(obj_mainchara))
{
	if (onioncount > 0)
		onioncount -= 1;
	if (global.flag[258] == 0)
	{
		if (onioncount >= 200 && con == 0 && global.flag[258] == 0)
		{
			global.flag[258] = 1;
			onioncount = 1;
			global.facing = 1;
			con = 1;
			alarm[4] = 10;
			global.interact = 1;
		}
	}
	if (con == 2)
	{
		with (onion)
			on = 1;
		con = 3;
		alarm[4] = 50;
	}
	if (con == 4)
	{
		global.facing = 1;
		with (onion)
			on = 2;
		con = 5;
		alarm[4] = 150;
	}
	if (con == 6)
	{
		global.fc = 0;
		global.typer = 5;
		global.msc = 195;
		scr_text(global.msc);
		instance_create(0, 0, obj_dialoguer);
		con = 7;
	}
	if (con == 7 && !d_ex())
	{
		global.interact = 1;
		onion.on = 4;
		con = 8;
		alarm[4] = 150;
	}
	if (con == 9)
	{
		with (onion)
			instance_destroy();
		con = 10;
		global.interact = 0;
		global.facing = 0;
		instance_destroy();
	}
}
