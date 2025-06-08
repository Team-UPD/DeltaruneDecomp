if (!instance_exists(obj_chaseenemy) && chestSpawned == 0)
	timer++;
if (timer == 60)
{
	chest = instance_create(1160, 200, obj_treasure_room);
	chestSpawned = 1;
	global.flag[389] = 1;
	timer = 0;
}
