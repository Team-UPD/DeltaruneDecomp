if (global.chapter == 2 && instance_exists(obj_spamton_neo_enemy) && global.mercymod[obj_spamton_neo_enemy.myself] > 99)
{
	obj_spamton_neo_enemy.endcon = 1;
}
else
{
	reset = 0;
	scr_mnendturn();
}
