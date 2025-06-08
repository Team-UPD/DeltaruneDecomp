global.typer = 5;
global.fc = 0;
global.fc = 0;
if (coughcon == -1)
{
	talked++;
	global.msc = 1047;
	scr_text(global.msc);
	myinteract = 3;
	global.interact = 1;
	mydialoguer = instance_create(0, 0, obj_dialoguer);
}
