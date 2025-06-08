global.faceaction[myself] = 0;
scr_retarget(myself);
if (cancelattack == 0)
{
	dm = instance_create(global.monsterx[global.chartarget[myself]], (global.monstery[global.chartarget[myself]] - (global.hittarget[global.chartarget[myself]] * 20)) + 20, obj_dmgwriter);
	dm.type = char - 1;
	if (char == 4)
		dm.type = 6;
	dm.delay = 8;
	if (global.chapter == 2 && instance_exists(obj_spamton_neo_enemy) && obj_spamton_neo_enemy.weirdpathendcon > 0)
	{
		damage = round((global.battleat[myself] * points) / 150);
		if (damage < 5)
			damage = 5;
		if (damage > 10)
			damage = 10;
	}
	else
	{
		damage = round(((global.battleat[myself] * points) / 20) - (global.monsterdf[global.chartarget[myself]] * 3));
	}
	if (global.monstertype[global.chartarget[myself]] == 19)
		damage = ceil(damage * 0.3);
	if (damage < 0)
		damage = 0;
	if (damage == 0)
	{
		dm.delay = 2;
		with (global.monsterinstance[global.chartarget[myself]])
		{
			if (hurttimer <= 15 && candodge == 1)
			{
				dodgetimer = 0;
				state = 4;
			}
		}
	}
	dm.damage = damage;
	global.hittarget[global.chartarget[myself]] += 1;
	var queenshield;
	if (global.chapter == 2)
		queenshield = 0;
	if (global.chapter == 2 && instance_exists(obj_queen_enemy))
	{
		if (instance_exists(obj_queenshield_enemy))
		{
			obj_queen_enemy.shieldhp -= damage;
			queenshield = 1;
		}
		else
		{
			global.monsterhp[global.chartarget[myself]] -= damage;
			if (damage != 0)
			{
				with (obj_queen_enemy)
					shieldbrokecon = 1;
			}
		}
	}
	else
	{
		global.monsterhp[global.chartarget[myself]] -= damage;
	}
	if (is_auto_susie == 1 && global.monsterhp[global.chartarget[myself]] <= 0)
	{
		with (global.chartarget[myself])
			global.flag[51 + myself] = 5;
	}
	if (damage > 0)
	{
		if (global.monstertype[0] != 20)
			scr_tensionheal(round(points / 10));
		if (global.monstertype[0] == 20)
			scr_tensionheal(round(points / 15));
		attack = instance_create(global.monsterx[global.chartarget[myself]] + random(6), global.monstery[global.chartarget[myself]] + random(6), obj_basicattack);
		if (object_index == obj_herosusie)
		{
			attack.sprite_index = spr_attack_mash2;
			attack.image_speed = 0.5;
			attack.maxindex = 4;
			snd_play(snd_impact);
			instance_create(0, 0, obj_shake);
		}
		if (object_index == obj_heroralsei)
		{
			attack.sprite_index = spr_attack_slap1;
			attack.maxindex = 4;
			attack.image_speed = 0.5;
		}
		if (object_index == obj_heronoelle)
		{
			attack.sprite_index = spr_attack_slap2;
			attack.maxindex = 4;
			attack.image_speed = 0.5;
		}
		if (points == 150)
		{
			attack.image_xscale = 2.5;
			attack.image_yscale = 2.5;
		}
		if (global.chapter == 2 && queenshield == 1)
		{
			with (obj_basicattack)
				x = obj_queenshield_enemy.x + 34;
			if (damage != 0)
			{
				with (obj_queenshield_enemy)
					event_user(0);
			}
		}
		else
		{
			if (global.chapter == 2 && instance_exists(obj_queen_enemy))
			{
				with (obj_basicattack)
					x = obj_queen_enemy.x + 62;
			}
			if (global.chapter == 2 && instance_exists(obj_spamton_neo_enemy))
			{
				with (obj_spamton_neo_enemy)
				{
					partmode = 40;
					shockthreshold = 15;
					shocktimer = 9999;
					hurttimer2 = 10;
				}
			}
			with (global.monsterinstance[global.chartarget[myself]])
			{
				shakex = 9;
				state = 3;
				hurttimer = 30;
			}
		}
		if (i_ex(global.monsterinstance[global.chartarget[myself]]))
			global.monsterinstance[global.chartarget[myself]].hurtamt = damage;
	}
	if (global.chapter == 2 && queenshield == 1)
	{
		dm.x = obj_queenshield_enemy.x;
		dm.depth = dm.depth - 100;
	}
	if (global.chapter == 2 && instance_exists(obj_sweet_enemy) && global.monsterhp[global.chartarget[myself]] <= 0)
		global.monsterhp[global.chartarget[myself]] = 1;
	var a = 0;
	if (global.chapter == 2 && instance_exists(obj_queen_enemy))
		a = 1;
	if (global.chapter == 2 && instance_exists(obj_spamton_neo_enemy))
		a = 2;
	if (global.chapter == 2 && instance_exists(obj_berdlyb_enemy))
		a = 3;
	if (global.monsterhp[global.chartarget[myself]] <= 0 && a == 0)
	{
		with (global.monsterinstance[global.chartarget[myself]])
			scr_monsterdefeat();
	}
	if (global.chapter == 2 && global.monsterhp[global.chartarget[myself]] <= 0 && a == 3)
	{
		with (global.monsterinstance[global.chartarget[myself]])
			endcon = 1;
	}
}
