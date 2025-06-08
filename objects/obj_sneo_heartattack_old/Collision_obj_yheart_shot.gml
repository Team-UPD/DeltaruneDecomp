if (con == 3)
	exit;
shakex = 6;
shakey = 6;
heart_health -= other.damage;
if (other.damage > 2)
	global.turntimer -= obj_spamton_neo_enemy.heart_hurt_timer_reduction_bigshot;
else
	global.turntimer -= obj_spamton_neo_enemy.heart_hurt_timer_reduction;
snd_play(snd_damage);
with (other)
	event_user(0);
if (heart_health < 1)
{
	con = 3;
	shootcon = 0;
	speed = 0;
	if (global.turntimer > 2)
		global.turntimer = 37;
}
