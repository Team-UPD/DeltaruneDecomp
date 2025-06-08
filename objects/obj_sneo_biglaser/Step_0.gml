if (obj_spamton_neo_enemy.difficulty == 2)
{
	with (obj_sneo_lilguy)
	{
		if (collision_line(obj_sneo_biglaser.x, obj_sneo_biglaser.y, obj_sneo_biglaser.x + lengthdir_x(10, obj_sneo_biglaser.direction), obj_sneo_biglaser.y + lengthdir_y(10, obj_sneo_biglaser.direction), obj_sneo_lilguy, true, false))
		{
		}
	}
}
