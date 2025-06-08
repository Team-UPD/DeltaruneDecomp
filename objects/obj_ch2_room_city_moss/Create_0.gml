con = -1;
global.interact = 0;
global.facing = 0;
dumpster = instance_create(300, 120, obj_npc_dumpster);
with (dumpster)
	scr_depth();
dumpster_con = (scr_sideb_get_phase() == 0 || !scr_havechar(4)) ? 0 : 10;
play_song = false;
play_power = false;
play_stop = false;
