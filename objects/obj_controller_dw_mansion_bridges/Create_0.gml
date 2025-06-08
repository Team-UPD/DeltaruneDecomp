chest = 0;
chestSpawned = 0;
timer = 0;
if (global.flag[389] == 1)
{
	chest = instance_create(1160, 280, obj_treasure_room);
	chestSpawned = 1;
}
