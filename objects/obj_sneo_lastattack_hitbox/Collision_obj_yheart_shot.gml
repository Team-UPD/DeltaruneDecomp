with (other)
	event_user(0);
if (obj_sneo_lastattack.endattack != 2)
{
	snd_play(snd_damage);
	if (instance_exists(obj_sneo_lastattack))
	{
		with (obj_sneo_lastattack)
			hurtalpha = 1;
	}
	if (obj_sneo_lastattack.endattack == 0)
		obj_sneo_lastattack.skip_1st_part_hp -= other.damage;
	if (obj_sneo_lastattack.skip_1st_part_hp < 1 && obj_sneo_lastattack.endattack == 0)
		obj_sneo_lastattack.endattack = 1;
	if (obj_sneo_lastattack.skip_2nd_part_hp < 1 && obj_sneo_lastattack.endattack == 1)
	{
		with (obj_sneo_bigshot)
		{
			playerhit = 1;
			damage = 0;
			event_user(0);
		}
		obj_sneo_lastattack.endattack = 2;
	}
}
