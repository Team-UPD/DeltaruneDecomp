if (con == -1)
{
	event_inherited();
}
else
{
	global.typer = 5;
	global.fc = 0;
	global.fe = 0;
	global.interact = 1;
	image_speed = 0.2;
	global.msc = 1043;
	scr_text(global.msc);
	remanimspeed = image_speed;
	myinteract = 3;
	mydialoguer = instance_create(0, 0, obj_dialoguer);
	talked += 1;
}
