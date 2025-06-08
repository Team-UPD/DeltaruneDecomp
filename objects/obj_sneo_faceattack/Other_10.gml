if (id == instance_find(obj_sneo_faceattack, 0))
{
	boss = 1;
	if (i_ex(obj_spamton_neo_enemy))
	{
		eyeshp = obj_spamton_neo_enemy.eyeshp;
		nosehp = obj_spamton_neo_enemy.nosehp;
		mouthhp = obj_spamton_neo_enemy.mouthhp;
		if (obj_spamton_neo_enemy.facebroken == 1)
		{
			eyeshp = -1;
			nosehp = -1;
			mouthhp = -1;
		}
	}
	else
	{
		eyeshp = 16;
		nosehp = 16;
		mouthhp = 16;
	}
	eyes = instance_create(x, y, obj_sneo_faceattack);
	eyes.hp = eyeshp;
	eyes.type = 1;
	eyes.target = target;
	eyes.damage = damage;
	eyes.first_time = first_time;
	nose = instance_create(x, y, obj_sneo_faceattack);
	nose.hp = nosehp;
	nose.type = 2;
	nose.target = target;
	nose.damage = damage;
	nose.first_time = first_time;
	mouth = instance_create(x, y, obj_sneo_faceattack);
	mouth.hp = mouthhp;
	mouth.type = 3;
	mouth.target = target;
	mouth.damage = damage;
	mouth.first_time = first_time;
}
else
{
	boss = 0;
}
