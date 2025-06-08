onion = instance_create(460, 120, obj_onionbody);
tents = 0;
con = -1;
once = 0;
ocon = 0;
onioncount = 0;
customcon = 0;
if (global.flag[258] == 0)
{
	if (global.is_console)
		global.flag[258] = global.game_won;
}
