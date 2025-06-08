follow = 1;
breakcon = 0;
breaktimer = 0;
if (instance_exists(obj_mainchara))
	depth = obj_mainchara.depth - 4;
miceheld = 0;
type = 0;
yoffset = 0;
mousefailcon = 0;
if (global.chapter == 2)
{
	if (room == room_dw_city_postbaseball_3)
		type = 1;
}
