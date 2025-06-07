image_speed = 0;
con = 0;
part = 0;
xx = 0;
yy = 0;
global.msg[0] = " ";
global.msg[1] = "%";
global.xoff = 240;
spadecon = 0;
kingburn = 0;
ky = 0;
type = 1;
if (global.flag[40] > 0 || global.flag[43] >= 2)
	type = 0;
k = 328938298392;
s = 238928392839;
r = 58344839483493;
l = 2489284928392;
king = 2382938928392;
fountain_index = 0;
if (global.plot >= 240)
{
	if (!snd_is_playing(global.currentsong[1]))
	{
		global.currentsong[0] = snd_init("friendship.ogg");
		global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.8, 0.95);
	}
	con = 700;
}
else
{
	global.interact = 1;
	__view_set(e__VW.XView, 0, 0);
	with (obj_npc_facing)
		instance_destroy();
	with (obj_npc_room)
		instance_destroy();
}
