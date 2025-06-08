if ((difficulty == 4 && createdguns == 1) || (difficulty == 6 && createdguns == 1))
{
	gun1.x = x - 20;
	gun1.y = y - obj_spamton_neo_enemy.crusher_turret_distance;
	gun2.x = x - 20;
	gun2.y = y + obj_spamton_neo_enemy.crusher_turret_distance;
	if (hp < 1)
	{
		gun1.y = -9999;
		gun2.y = -9999;
	}
}
