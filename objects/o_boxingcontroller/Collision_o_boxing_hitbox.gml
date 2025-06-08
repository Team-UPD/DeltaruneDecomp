if (dead == 1)
	exit;
if (dead > 0 && o_boxingcontroller.wireframe_boxing == 1)
	exit;
if (other.baseball == 1 && other.maker_id.y < c && punchcon > 0 && punchcon <= 4)
	exit;
if (other.baseball == 1 && invincible == 1)
	exit;
if (other.baseball == 1 && other.graze_only == 0)
{
	with (other)
		instance_destroy();
}
if (other.graze_only == 0)
{
	hit_me = 1;
	if (ducking == 1 && other.hit_ducking == 0)
		hit_me = 0;
	if (dodging == 1 && other.hit_dodging == 0)
		hit_me = 0;
	if (jumping == 1 && other.hit_jumping == 0)
		hit_me = 0;
	if (invincible == 1)
		hit_me = 0;
	if (hit_me == 1)
	{
		event_user(2);
		times_hit_by_boss += 1;
		with (o_boxinggraze)
			tpgain = 0;
		if (wireframe_boxing == 0)
		{
			if (other.final_attack == 1)
			{
				if (global.hp[1] <= 10)
					global.hp[1] -= 10;
				else if (defend == 0)
					global.hp[1] -= floor(global.hp[1] / 2);
				else
					global.hp[1] -= floor((global.hp[1] / 2) * 0.75);
			}
			else
			{
				var damage_reduction_in_turn = 1;
				var final_damage_amount = 0;
				if (global.flag[526] < 5)
				{
					if (damagetakenthisturn < 60)
						damage_reduction_in_turn = 1;
					else if (damagetakenthisturn >= 60)
						damage_reduction_in_turn = 0.6;
					else if (damagetakenthisturn >= 120)
						damage_reduction_in_turn = 0.3;
				}
				if (global.flag[526] >= 5 && global.flag[526] < 7)
				{
					if (damagetakenthisturn < 40)
						damage_reduction_in_turn = 1;
					else if (damagetakenthisturn >= 40)
						damage_reduction_in_turn = 0.6;
					else if (damagetakenthisturn >= 80)
						damage_reduction_in_turn = 0.3;
				}
				if (global.flag[526] >= 7)
				{
					if (damagetakenthisturn < 30)
						damage_reduction_in_turn = 1;
					else if (damagetakenthisturn >= 30)
						damage_reduction_in_turn = 0.6;
					else if (damagetakenthisturn >= 50)
						damage_reduction_in_turn = 0.3;
				}
				if (defend == 0)
					final_damage_amount = floor(other.damage * damage_reduction_in_turn);
				else
					final_damage_amount = floor(other.damage * 0.75 * damage_reduction_in_turn);
				if (final_damage_amount < 10)
					final_damage_amount = 10;
				damagetakenthisturn += final_damage_amount;
				global.hp[1] -= final_damage_amount;
			}
			health_count = global.hp[1];
			health_count_max = global.maxhp[1];
		}
		else
		{
			health_count -= other.damage;
		}
		if (health_count <= 0 && dead == 0)
		{
			health_count = 0;
			dead = 0.5;
		}
		if (global.hp[1] < 1)
			event_user(3);
		if (other.kick == 1 && wireframe_boxing == 1)
		{
			failed_kick_tutorial_counter++;
			other.has_tutorial_kick_hit_player = 1;
		}
		if (other.kick == 1 && wireframe_boxing == 0)
			o_boxingqueen.playerhitbykick = 1;
		beat_phase1_no_damage_taken_check = 1;
		beat_phase2_no_damage_taken_check = 1;
		phase3_hit_check = 0;
		with (o_boxingqueen)
			attack_succeeded = 1;
		drawflip = other.hit_direction;
		if (o_boxingcontroller.wireframe_boxing == 0)
		{
			d = instance_create(0, 0, obj_shake);
			d.shakex = ceil(2);
			d.shakey = ceil(2);
		}
		hit_fx = instance_create((x - 20) + irandom(40), y - 80 - irandom(40), obj_boxing_hit_fx);
		with (hit_fx)
			event_user(0);
		hit_fx = instance_create((x - 20) + irandom(40), y - 80 - irandom(40), obj_boxing_hit_fx);
		with (hit_fx)
			event_user(0);
		hit_fx = instance_create((x - 20) + irandom(40), y - 80 - irandom(40), obj_boxing_hit_fx);
		with (hit_fx)
			event_user(0);
		if (other.give_hurt > 0)
			hurt_length = other.give_hurt;
		if (other.give_invincibility > 0)
		{
			invincible = 1;
			invincibility_timer = -other.give_invincibility;
		}
	}
}
