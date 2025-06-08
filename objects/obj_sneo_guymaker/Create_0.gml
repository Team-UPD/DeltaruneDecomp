type = 4;
if (obj_spamton_neo_enemy.difficulty == 0)
	type = 1;
if (obj_spamton_neo_enemy.difficulty == 1)
	type = 2;
if (obj_spamton_neo_enemy.difficulty == 2)
	type = 3;
if (obj_spamton_neo_enemy.difficulty == 3)
	type = 4;
if (instance_exists(obj_sneo_heartattack))
	type = 5;
if (obj_spamton_neo_enemy.difficulty == 6)
	type = 6;
if (obj_spamton_neo_enemy.difficulty == 7)
	type = 7;
timer = 0;
prevrow = 0;
row = 0;
prevrowy = 0;
spawncount = 0;
firstspawn = 0;
