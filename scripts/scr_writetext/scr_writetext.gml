function scr_writetext(arg0, arg1, arg2, arg3)
{
	global.fc = 0;
	global.msc = arg0;
	if (arg1 != "x")
		global.msg[0] = arg1;
	if (arg2 != 0)
		global.fc = arg2;
	global.typer = 5;
	if (arg3 != 0)
		global.typer = arg3;
	instance_create(0, 0, obj_dialoguer);
}
