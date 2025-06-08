global.msc = 0;
global.typer = 5;
if (global.darkzone == 1)
	global.typer = 6;
global.fc = 0;
global.fe = 0;
global.interact = 1;
image_speed = 0.2;
global.flag[20] = 0;
if (global.chapter == 1)
{
	if (type == 0)
		global.msc = 230;
	if (type == 1)
		global.msc = 235;
	if (type == 2)
		global.msc = 240;
	if (type == 3)
		global.msc = 245;
}
if (global.chapter == 2)
	global.msc = 1105;
scr_text(global.msc);
myinteract = 3;
mydialoguer = instance_create(0, 0, obj_dialoguer);
mydialoguer.side = (room == room_dw_castle_dojo) ? 1 : 0;
talked += 1;
