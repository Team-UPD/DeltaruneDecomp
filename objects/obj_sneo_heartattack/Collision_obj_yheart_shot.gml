if (con == 3)
	exit;
if (visible == false)
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
	obj_spamton_neo_enemy.partmode = 1;
	bustertimer = 999;
	if (global.turntimer > 2)
		global.turntimer = 37;
	with (obj_sneo_guymaker)
		instance_destroy();
	with (obj_sneo_lilguy)
		instance_destroy();
	with (obj_sneo_heatattack_bullet)
		instance_destroy();
	with (obj_spamtonshot)
		instance_destroy();
	with (obj_sneo_biglaser)
		instance_destroy();
	with (obj_rouxls_power_up_orb)
		instance_destroy();
}
if (global.turntimer < 51)
{
	global.turntimer = 50;
	attackcount = 0;
}
