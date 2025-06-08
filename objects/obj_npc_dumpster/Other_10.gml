if (con == -1)
{
	event_inherited();
}
else
{
	con = 1;
	global.msc = 0;
	global.typer = 5;
	if (global.darkzone == 1)
		global.typer = 6;
	global.fc = 0;
	global.fe = 0;
	global.interact = 1;
	global.msc = 1171;
	scr_text(global.msc);
	read += 1;
	myinteract = 3;
	mydialoguer = instance_create(0, 0, obj_dialoguer);
}
