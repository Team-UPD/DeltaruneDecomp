exit;
if (!active)
	exit;
if (instance_exists(obj_pipis_controller))
	exit;
if (instance_exists(obj_sneo_phonecall))
	exit;
if (instance_exists(obj_sneo_bulletcontroller) && obj_sneo_bulletcontroller.type == 1)
	exit;
if (instance_exists(obj_sneo_bulletcontroller) && obj_sneo_bulletcontroller.type == 8)
	exit;
with (obj_spamton_neo_enemy)
{
	if (instance_exists(obj_sneo_bulletcontroller) && obj_sneo_bulletcontroller.type != 1.5)
		hitcon = 1;
}
var a = random(45);
repeat (8)
{
	part = instance_create(other.x, other.y, obj_yheart_sneo_particle);
	part.direction = a + random(15);
	part.speed = 8;
	part.friction = 0.8;
	a += 45;
}
if (global.monsterhp[obj_spamton_neo_enemy.myself] == global.monstermaxhp[obj_spamton_neo_enemy.myself])
{
	if (other.big == 1)
	{
		with (obj_spamton_neo_enemy)
		{
			if (instance_exists(obj_sneo_bulletcontroller) && obj_sneo_bulletcontroller.type == 1.5)
			{
				obj_sneo_bulletcontroller.mercyaccumulated += 1;
				__mercydmgwriter = instance_create(global.monsterx[myself], (global.monstery[myself] + 20) - (global.hittarget[myself] * 20), obj_dmgwriter);
				__mercydmgwriter.damage = 1;
				__mercydmgwriter.type = 5;
				global.hittarget[myself]++;
			}
			else
			{
				scr_mercyadd(myself, 1);
			}
		}
	}
	else
	{
		with (obj_spamton_neo_enemy)
			singleshotmercy += 1;
	}
}
else
{
	var dmg = 0;
	if (other.big == 1)
		dmg = ceil(global.monstermaxhp[obj_spamton_neo_enemy.myself] * 0.01);
	else
		dmg = ceil(global.monstermaxhp[obj_spamton_neo_enemy.myself] * 0.002);
	if ((global.monsterhp[obj_spamton_neo_enemy.myself] - dmg) < 1)
		global.monsterhp[obj_spamton_neo_enemy.myself] = 1;
	else
		global.monsterhp[obj_spamton_neo_enemy.myself] -= dmg;
	if (dmg != 0)
	{
		dm = instance_create(global.monsterx[global.chartarget[obj_spamton_neo_enemy.myself]], (global.monstery[global.chartarget[obj_spamton_neo_enemy.myself]] - (global.hittarget[global.chartarget[obj_spamton_neo_enemy.myself]] * 20)) + 20, obj_dmgwriter);
		dm.type = 1;
		dm.delay = 8;
		dm.damage = dmg;
	}
}
snd_play(snd_damage);
with (other)
	event_user(0);
