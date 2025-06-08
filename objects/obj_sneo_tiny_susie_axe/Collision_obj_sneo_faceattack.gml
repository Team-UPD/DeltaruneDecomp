if (other.type == 0 || other.image_alpha < 0.9)
	exit;
if (other.broken == 1)
{
	instance_destroy();
	exit;
}
other.shake = 6;
if (other.type == 1)
	obj_spamton_neo_enemy.eyeshp -= 1;
if (other.type == 2)
	obj_spamton_neo_enemy.nosehp -= 1;
if (other.type == 3)
	obj_spamton_neo_enemy.mouthhp -= 1;
snd_play(snd_damage);
other.invincibilitytimer = 10;
other.hurtflashtimer = 3;
if ((other.type == 1 && obj_spamton_neo_enemy.eyeshp <= 0) || (other.type == 2 && obj_spamton_neo_enemy.nosehp <= 0) || (other.type == 3 && obj_spamton_neo_enemy.mouthhp <= 0))
{
	other.broken = 1;
	other.image_index = 2;
	snd_play(snd_rocket);
	other.explodetimer = 16;
}
instance_destroy();
