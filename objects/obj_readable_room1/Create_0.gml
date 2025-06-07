myinteract = 0;
image_speed = 0;
read = 0;
tempvar = 0;
if (room == room_dark3a)
{
	if (global.flag[100] == 0)
	{
		shine = scr_dark_marker(x + 10, y + 6, spr_shine);
		shine.image_speed = 0.1;
	}
}
