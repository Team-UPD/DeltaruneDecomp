timer++;
if (timer > 5 && !instance_exists(obj_chaseenemy))
	spawned = 1;
if (spawned == 1)
{
	spawntimer++;
	if (spawntimer == 60)
	{
		chest = instance_create(x, y, obj_treasure_room);
		instance_destroy();
	}
}
