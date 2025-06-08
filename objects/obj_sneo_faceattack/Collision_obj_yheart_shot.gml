if (type == 0 || image_alpha < 0.9)
	exit;
if (broken == 1)
{
	snd_play(snd_bell);
	with (other)
		event_user(0);
	exit;
}
if (invincibilitytimer > 0 && other.big == 0)
{
	with (other)
		instance_destroy();
	exit;
}
shake = 6;
if (other.big == 0)
{
	if (type == 1)
		obj_spamton_neo_enemy.eyeshp -= 1;
	if (type == 2)
		obj_spamton_neo_enemy.nosehp -= 1;
	if (type == 3)
		obj_spamton_neo_enemy.mouthhp -= 1;
}
else
{
	var takedamageamount = 4;
	if (obj_spamton_neo_enemy.hellmode == 1)
		takedamageamount = 2;
	if (type == 1)
		obj_spamton_neo_enemy.eyeshp -= takedamageamount;
	if (type == 2)
		obj_spamton_neo_enemy.nosehp -= takedamageamount;
	if (type == 3)
		obj_spamton_neo_enemy.mouthhp -= takedamageamount;
}
snd_play(snd_damage);
invincibilitytimer = 10;
hurtflashtimer = 3;
if ((type == 1 && obj_spamton_neo_enemy.eyeshp <= 0) || (type == 2 && obj_spamton_neo_enemy.nosehp <= 0) || (type == 3 && obj_spamton_neo_enemy.mouthhp <= 0))
{
	broken = 1;
	image_index = 2;
	snd_play(snd_rocket);
	explodetimer = 16;
}
with (other)
	event_user(0);
