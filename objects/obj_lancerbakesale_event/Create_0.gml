con = 1;
npc = instance_create(x, y, obj_npc_room);
if (global.plot >= 80 || global.flag[238] == 1)
{
	con = 99;
}
else
{
	s = scr_dark_marker(x + 20, y + 60, spr_susied_dark);
	with (s)
		scr_depth();
	l = scr_dark_marker(x + 60, y + 80, spr_lancer_dt);
	with (l)
		scr_depth();
}
