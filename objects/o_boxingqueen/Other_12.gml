delayattack = 0;
delayattacktelegraph = 0;
combo = 0;
noattack = 0;
attackcon = 0;
attacktimer = 0;
blocking = 0;
state = 3;
speed = 0;
x = basex;
times_hit_in_a_row = 0;
debug_text = "in event user 2";
if (useattacklist == 0)
{
	attacktype = choose(0, 1, 2, 4, 5);
	pirouette_amount = 3;
	splash_amount = choose(1, 2);
	if (attacktype == 1)
		kick_amount = choose(1, 2, 3);
}
else
{
	if (o_boxingcontroller.wireframe_boxing == 1 && (attackcount >= attackcountmax || (o_boxingqueen.health_count <= (health_count_max * 0.75) && attackpattern == 50) || (o_boxingqueen.health_count <= (health_count_max * 0.5) && attackpattern == 51) || (o_boxingqueen.health_count <= (health_count_max * 0.25) && attackpattern == 52)))
		event_user(6);
	if (attackpattern != 53)
		arcadebaseballused = 0;
	if (attackpattern == 53)
	{
		attacktype = 8;
		pirouette_amount = 0;
		splash_amount = 0;
		kick_amount = 0;
		punch_amount = 0;
		wheel_amount = 0;
		wheel_type = 0;
		punch_type = 0;
		attackthreshold = 0;
		if (arcadebaseballused > 0)
		{
			if (finalphasearcadecon == 0)
			{
				attacktype = 1;
				punch_type = 2;
			}
			if (finalphasearcadecon == 1)
			{
				attacktype = 0;
				punch_type = 4;
			}
			if (finalphasearcadecon == 2)
				attacktype = 8;
			if (finalphasearcadecon == 3)
			{
				attacktype = 1;
				punch_type = 2;
			}
			if (finalphasearcadecon == 4)
			{
				attacktype = 0;
				punch_type = 4;
			}
			finalphasearcadecon++;
			if (finalphasearcadecon > 4)
				finalphasearcadecon = 0;
		}
	}
	else if (attackcount >= attackcountmax)
	{
		event_user(1);
		attackthreshold = attackthresholddefault;
		movetimer = 0;
		with (o_boxingcontroller)
			boxingtimer = 0;
		if (o_boxingcontroller.wireframe_boxing == 0)
		{
			if (attackpattern == 1.4 && pattern_state == 1)
				attackorderlooping = 1;
			if (attackpattern == 4 && pattern_state == 2 && o_boxinghud.sub_healthbar_count == 1)
				attackorderlooping = 1;
			if ((o_boxinghud.sub_healthbar_count == 0 && o_boxingcontroller.beat_phase2_no_damage_taken == 0 && attackpattern == 7 && pattern_state == 1) || (o_boxinghud.sub_healthbar_count == 0 && o_boxingcontroller.beat_phase2_no_damage_taken == 0 && attackpattern == 12 && pattern_state == 1))
				attackorderlooping = 1;
			if (o_boxinghud.sub_healthbar_count == 0 && o_boxingcontroller.beat_phase2_no_damage_taken == 1 && attackpattern == 20 && pattern_state == 4)
				attackorderlooping = 1;
			if ((attackorderloopingturn >= 3 && o_boxinghud.sub_healthbar_count == 2) || (attackorderloopingturn >= 3 && attackorderlooping == 1 && o_boxinghud.sub_healthbar_count == 1))
			{
				attackorderloopingturn = 0;
				o_boxinghud.sub_healthbar_count -= 1;
				if (o_boxinghud.sub_healthbar_count == 0)
					health_count_max = 1800;
				health_count = health_count_max;
				health_count_prev = health_count_max;
				combo = 0;
				times_hit_in_a_row = 0;
				pattern_state = 0;
				if (o_boxingcontroller.beat_phase1_no_damage_taken_check == 0)
					global.flag[527] = 1;
				if (o_boxinghud.sub_healthbar_count == 1)
				{
					with (o_boxingqueen)
					{
						scr_qb_reset();
						attackpattern = 2;
					}
					obj_gigaqueen_enemy.recentphasetransition = 2;
				}
				if (o_boxinghud.sub_healthbar_count == 0 && o_boxingcontroller.beat_phase2_no_damage_taken == 0)
				{
					with (o_boxingqueen)
					{
						scr_qb_reset();
						attackpattern = 15;
					}
					obj_gigaqueen_enemy.recentphasetransition = 3;
				}
				if (o_boxinghud.sub_healthbar_count == 0 && o_boxingcontroller.beat_phase2_no_damage_taken == 1)
				{
					with (o_boxingqueen)
					{
						scr_qb_reset();
						attackpattern = 21;
					}
					o_boxingcontroller.phase3_hit_check = 1;
					obj_gigaqueen_enemy.recentphasetransition = 3;
				}
			}
			else if (attackorderloopingturn >= 3 && attackorderlooping == 1 && o_boxinghud.sub_healthbar_count == 0)
			{
				health_count = 1;
				health_count_prev = 1;
			}
		}
	}
	else
	{
		attacktype = list_attacktype[attackcount];
		pirouette_amount = list_attackamount[attackcount];
		splash_amount = list_attackamount[attackcount];
		kick_amount = list_attackamount[attackcount];
		punch_amount = list_attackamount[attackcount];
		wheel_amount = list_attackamount[attackcount];
		wheel_type = list_attackvariant[attackcount];
		punch_type = list_attackvariant[attackcount];
		attackthreshold = list_attackwait[attackcount];
		if (attacktype != 0)
			firstquickpunch = 1;
	}
	attackcount++;
}
