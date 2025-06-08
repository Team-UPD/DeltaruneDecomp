if (global.turntimer < 150)
{
	hp = 0;
	if (type == 0 || (type == 1 && obj_spamton_neo_enemy.difficulty > 2 && global.turntimer > 20))
	{
		global.turntimer = 20;
		with (obj_sneo_wireheart)
		{
			hp = 0;
			destroyed = 1;
		}
	}
}
else if (type == 0 || (type == 1 && obj_spamton_neo_enemy.difficulty > 2))
{
	global.turntimer -= 5;
}
else
{
	hp -= 0.25;
}
with (other)
	instance_destroy();
damagetimer = 5;
snd_play(snd_damage);
if (hp <= 0)
	destroyed = 1;
