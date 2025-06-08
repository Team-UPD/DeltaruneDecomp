attackcount = 0;
attackcountmax = 0;
useattacklist = 1;
if (attackorderlooping == 1 && pacifist == 1)
	attackorderloopingturn++;
if (o_boxingcontroller.wireframe_boxing == 1)
{
	if (o_boxingqueen.health_count >= (health_count_max * 0.75))
		attackpattern = 50;
	if (o_boxingqueen.health_count < (health_count_max * 0.75))
		attackpattern = 51;
	if (o_boxingqueen.health_count < (health_count_max * 0.5))
		attackpattern = 52;
	if (o_boxingqueen.health_count < (health_count_max * 0.25))
		attackpattern = 53;
}
if (o_boxinghud.sub_healthbar_count == 0 && o_boxingcontroller.wireframe_boxing == 0)
{
	if (finalbaseballused > 0)
	{
		attackpattern = 100;
	}
	else if (health_count <= (health_count_max * 0.27))
	{
		attackpattern = 99;
		finalbaseballused = 1;
	}
	obj_gigaqueen_enemy.breathattack = 0;
	obj_gigaqueen_enemy.missleattack = 0;
}
if (attackpattern == 100)
{
	scr_qb(9, 0, 0, 0);
	with (o_boxingcontroller)
		boxingtimer = 1000;
}
if (attackpattern == 99)
{
	scr_qb(4, 7, 1, 0);
	scr_qb(9, 0, 0, 0);
	with (o_boxingcontroller)
		boxingtimer = 1000;
}
if (attackpattern == 22)
{
	scr_qb(5, 3, 2, 30);
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (attackpattern == 21)
{
	scr_qb(6, 0, 2, 1);
	scr_qb(3, 0, 0, 0);
	with (o_boxingcontroller)
		boxingtimer = 500;
}
if (attackpattern == 20)
{
	rand = irandom(30);
	if (rand < 10)
		scr_qb(1, 3, 0, 0);
	if (rand >= 10 && rand < 20)
	{
		scr_qb(0, 0, 1, 0);
		scr_qb(0, 0, 1, 0);
		scr_qb(0, 0, 1, 0);
	}
	if (rand >= 20)
		scr_qb(2, 2, 2, 0);
	repeat (3)
	{
		rand = irandom(40);
		if (rand < 10)
			scr_qb(1, 0, 2, 0);
		if (rand >= 10 && rand < 20)
			scr_qb(0, 0, 1, 0);
		if (rand >= 20 && rand < 30)
			scr_qb(2, 0, 2, 0);
		if (rand >= 30)
		{
			scr_qb(0, 0, 1, 0);
			scr_qb(0, 0, 1, 0);
		}
	}
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (attackpattern == 19)
{
	scr_qb(0, 0, 2, 0);
	scr_qb(0, 0, 2, 0);
	scr_qb(0, 0, 2, 0);
	scr_qb(0, 0, 2, 0);
	scr_qb(2, 2, 2, 0);
	scr_qb(0, 0, 2, 0);
	scr_qb(0, 0, 2, 0);
	scr_qb(4, 0, 0, 0);
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (attackpattern == 18)
{
	scr_qb(0, 0, 2, 0);
	scr_qb(2, 0, 2, 0);
	scr_qb(0, 0, 2, 0);
	scr_qb(1, 3, 0, 0);
	scr_qb(2, 2, 2, 0);
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (attackpattern == 17)
{
	scr_qb(7, 0, 1, 0);
	with (o_boxingcontroller)
		boxingtimer = 300;
}
if (attackpattern == 16)
{
	scr_qb(6, 0, 1, 0);
	scr_qb(3, 0, 0, 10);
	with (o_boxingcontroller)
		boxingtimer = 500;
}
if (attackpattern == 15)
{
	scr_qb(6, 0, 0, 0);
	scr_qb(3, 0, 0, 10);
	with (o_boxingcontroller)
		boxingtimer = 500;
}
if (attackpattern == 14)
{
	scr_qb(4, 5, 1, 30);
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (attackpattern == 13)
{
	scr_qb(1, 0, 2, 20);
	scr_qb(3, 0, 0, 0);
	scr_qb(1, 3, 0, 0);
	scr_qb(2, 0, 0, 0);
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (attackpattern == 12)
{
	scr_qb(0, 0, 2, 0);
	scr_qb(2, 2, 0, 0);
	scr_qb(0, 0, 2, 0);
	scr_qb(4, 0, 0, 0);
	scr_qb(0, 0, 3, 0);
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (attackpattern == 11)
{
	scr_qb(5, 3, 1, 30);
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (attackpattern == 10)
{
	scr_qb(1, 3, 0, 20);
	scr_qb(0, 0, 2, 0);
	scr_qb(0, 0, 2, 0);
	scr_qb(0, 0, 2, 0);
	scr_qb(0, 0, 3, 0);
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (attackpattern == 8)
{
	scr_qb(0, 0, 0, 30);
	scr_qb(2, 0, 0, 20);
	scr_qb(0, 0, 2, 0);
	scr_qb(2, 2, 0, 0);
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (attackpattern == 7)
{
	scr_qb(1, 2, 0, 0);
	scr_qb(0, 0, 2, 0);
	scr_qb(0, 0, 2, 0);
	scr_qb(4, 0, 1, 0);
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (attackpattern == 6)
{
	scr_qb(3, 0, 0, 20);
	scr_qb(0, 0, 2, 0);
	scr_qb(0, 0, 2, 0);
	scr_qb(2, 2, 0, 0);
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (attackpattern == 5.5)
{
	scr_qb(7, 0, 0, 20);
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (attackpattern == 5)
{
	scr_qb(1, 0, 2, 20);
	scr_qb(1, 0, 2, 20);
	scr_qb(0, 0, 2, 0);
	scr_qb(0, 0, 3, 0);
	scr_qb(0, 0, 3, 0);
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (attackpattern == 4)
{
	scr_qb(2, 0, 0, 20);
	scr_qb(0, 0, 1, 20);
	scr_qb(2, 0, 0, 0);
	scr_qb(1, 2, 0, 0);
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (attackpattern == 3.5)
{
	scr_qb(5, 3, 0, 30);
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (attackpattern == 3)
{
	scr_qb(0, 0, 1, 20);
	scr_qb(0, 0, 1, 0);
	scr_qb(2, 0, 2, 20);
	scr_qb(2, 0, 1, 0);
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (attackpattern == 2)
{
	scr_qb(1, 0, 2, 20);
	scr_qb(1, 0, 2, 20);
	scr_qb(1, 0, 2, 20);
	scr_qb(1, 2, 0, 0);
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (attackpattern == 1.8)
{
	scr_qb(1, 0, 2, 30);
	scr_qb(0, 0, 4, 30);
	scr_qb(1, 0, 2, 30);
	scr_qb(0, 0, 4, 0);
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (attackpattern == 1.4)
{
	scr_qb(8, 0, 4, 30);
	with (o_boxingcontroller)
		boxingtimer = 270;
}
if (attackpattern == 1)
{
	scr_qb(1, 0, 2, 30);
	scr_qb(1, 0, 2, 30);
	scr_qb(1, 0, 2, 30);
	scr_qb(1, 0, 2, 0);
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (attackpattern == 0)
{
	scr_qb(0, 0, 4, 30);
	scr_qb(0, 0, 4, 30);
	scr_qb(0, 0, 4, 30);
	scr_qb(0, 0, 4, 0);
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (attackpattern == 50)
{
	scr_qb(0, 0, 4, 30);
	scr_qb(0, 0, 4, 30);
	scr_qb(0, 0, 4, 30);
	scr_qb(0, 0, 4, 30);
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (attackpattern == 51)
{
	scr_qb(1, 0, 2, 30);
	scr_qb(0, 0, 4, 0);
	scr_qb(1, 0, 2, 30);
	scr_qb(0, 0, 4, 0);
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (attackpattern == 52)
{
	scr_qb(0, 0, 4, 0);
	scr_qb(1, 0, 2, 0);
	scr_qb(5, 1, 2, 72);
	scr_qb(5, 1, 2, 72);
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (attackpattern == 53)
{
	scr_qb(8, 0, 0, 0);
	with (o_boxingcontroller)
		boxingtimer = 400;
}
if (o_boxingcontroller.wireframe_boxing == 0)
{
	if (o_boxinghud.sub_healthbar_count == 2)
	{
		if (attackpattern == 0)
		{
			attackpattern = 1;
		}
		else if (attackpattern == 1)
		{
			attackpattern = 1.4;
		}
		else if (attackpattern == 1.4)
		{
			attackpattern = 1.8;
			usedbaseball = 1;
		}
		else if (attackpattern == 1.8)
		{
			attackpattern = 1.4;
			pattern_state = 1;
		}
	}
	if (o_boxinghud.sub_healthbar_count == 1)
	{
		if (pattern_state == 0)
		{
			if (attackpattern < 2)
			{
				attackpattern = 2;
			}
			else if (attackpattern == 2)
			{
				attackpattern = 3;
			}
			else if (attackpattern == 3)
			{
				attackpattern = 3.5;
			}
			else if (attackpattern == 3.5)
			{
				attackpattern = 4;
				obj_gigaqueen_enemy.missleattack = 1;
			}
			else if (attackpattern == 4)
			{
				attackpattern = 5;
			}
			else if (attackpattern == 5 && health_count >= (health_count_max * 0.5))
			{
				attackpattern = 6;
				pattern_state = 1;
			}
			else if (attackpattern == 5 && health_count < (health_count_max * 0.5))
			{
				attackpattern = 7;
				pattern_state = 1;
				has_boss_done_pattern7 = 1;
			}
		}
		else
		{
			if ((attackpattern == 6 && pattern_state == 1) || (attackpattern == 7 && pattern_state == 1))
			{
				attackpattern = 4;
			}
			else if (attackpattern == 4)
			{
				attackpattern = 5;
			}
			else if (attackpattern == 5)
			{
				attackpattern = 3.5;
			}
			else if (attackpattern == 3.5)
			{
				attackpattern = 6;
			}
			else if (attackpattern == 6)
			{
				attackpattern = 7;
			}
			else if (attackpattern == 7)
			{
				attackpattern = 4;
				obj_gigaqueen_enemy.missleattack = 1;
			}
			pattern_state = 2;
		}
	}
	if (o_boxinghud.sub_healthbar_count == 0 && o_boxingcontroller.beat_phase2_no_damage_taken == 0)
	{
		if (attackpattern == 15)
		{
			attackpattern = 10;
		}
		else if (attackpattern == 10 && has_boss_done_pattern7 == 0)
		{
			attackpattern = 7;
			has_boss_done_pattern7 = 1;
			obj_gigaqueen_enemy.breathattack = 1;
		}
		else if (attackpattern == 10)
		{
			attackpattern = 12;
			obj_gigaqueen_enemy.breathattack = 1;
		}
		else if (attackpattern == 7 || attackpattern == 12)
		{
			attackpattern = 11;
		}
		else if (attackpattern == 11)
		{
			attackpattern = 8;
		}
		else if (attackpattern == 8)
		{
			attackpattern = 13;
		}
		else if (attackpattern == 13)
		{
			attackpattern = 16;
		}
		else if (attackpattern == 16)
		{
			attackpattern = 10;
			pattern_state = 1;
		}
	}
	if (o_boxinghud.sub_healthbar_count == 0 && o_boxingcontroller.beat_phase2_no_damage_taken == 1)
	{
		if (pattern_state == 0)
		{
			if (attackpattern == 21)
			{
				attackpattern = 18;
				if (!instance_exists(obj_boxingqueen_aura))
					instance_create(x, y, obj_boxingqueen_aura);
			}
			else if (attackpattern == 18)
			{
				attackpattern = 22;
				o_boxingcontroller.phase3_hit_check = 1;
			}
			else if (attackpattern == 22)
			{
				attackpattern = 19;
			}
			else if (attackpattern == 19)
			{
				attackpattern = 14;
				pattern_state = 1;
				o_boxingcontroller.phase3_hit_check = 1;
			}
		}
		else if (attackpattern == 14 && pattern_state == 1)
		{
			attackpattern = 20;
			pattern_state = 2;
		}
		else if (attackpattern == 20 && pattern_state == 2)
		{
			attackpattern = 21;
			o_boxingcontroller.phase3_hit_check = 1;
		}
		else if (attackpattern == 21)
		{
			attackpattern = 20;
			pattern_state = 3;
		}
		else if (attackpattern == 20 && pattern_state == 3)
		{
			attackpattern = 22;
			o_boxingcontroller.phase3_hit_check = 1;
		}
		else if (attackpattern == 22)
		{
			attackpattern = 20;
			pattern_state = 4;
		}
		else if (attackpattern == 20 && pattern_state == 4)
		{
			attackpattern = 14;
			pattern_state = 1;
			o_boxingcontroller.phase3_hit_check = 1;
		}
	}
}
