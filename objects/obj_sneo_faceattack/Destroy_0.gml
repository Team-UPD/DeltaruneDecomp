if (boss == 1)
{
	if (obj_spamton_neo_enemy.eyeshp <= 0 && obj_spamton_neo_enemy.nosehp <= 0 && obj_spamton_neo_enemy.mouthhp <= 0 && i_ex(obj_spamton_neo_enemy))
	{
		with (obj_spamton_neo_enemy)
		{
			eyeshp = 16;
			nosehp = 16;
			mouthhp = 16;
			facebroken = 2;
		}
	}
}
with (obj_sneo_faceattack_target)
	instance_destroy();
