if (invincibility_timer > 0 && other.big == 0)
{
	with (other)
		instance_destroy();
	exit;
}
invincibility_timer = 10;
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
else
{
	if (type == 0 || (type == 1 && obj_spamton_neo_enemy.difficulty > 2))
	{
		if (other.big == 1)
		{
			global.turntimer -= (80 - (chargeshothitcount * 10));
			if (chargeshothitcount < 3)
				chargeshothitcount++;
		}
		else
		{
			global.turntimer -= (20 - normalshothitcount);
			if (normalshothitcount < 10)
				normalshothitcount++;
		}
	}
	else if (other.big == 1)
	{
		hp -= 5;
	}
	else
	{
		hp--;
	}
	if (scr_debug())
	{
	}
}
with (other)
	instance_destroy();
damagetimer = 5;
snd_play(snd_damage);
if (hp <= 0)
	destroyed = 1;
