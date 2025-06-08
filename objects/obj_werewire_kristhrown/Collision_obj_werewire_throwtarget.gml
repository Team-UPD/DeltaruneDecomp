if (other.collided == 0)
{
	if (other.good == 1)
	{
		global.msg[0] = stringsetloc("* The wire greatly loosened!/%", "obj_werewire_kristhrown_slash_Collision_048192d7_9c3b_472a_adb9_e1f06953ce64_gml_10_0");
		snd_play(snd_laz_c);
		if (instance_exists(obj_werewire_enemy))
		{
			with (other.maker)
				mercyaccumulated = 50;
		}
		with (other)
		{
			if (offing == 1)
			{
				con = 1;
				vspeed = -8;
			}
			else
			{
				con = 5;
			}
		}
	}
	else
	{
		snd_play(snd_noise);
		with (other)
			con = 7;
		if (instance_exists(obj_werewire_enemy))
		{
			with (obj_werewire_enemy)
			{
				if (acting == 3)
					loosenAmount = clamp(loosenAmount + 0.25, 0, 1);
			}
		}
		else if (instance_exists(obj_werewerewire_enemy))
		{
			with (obj_werewerewire_enemy)
			{
				if (acting == 3)
					loosenAmount = clamp(loosenAmount + 0.125, 0, 1);
			}
		}
		global.msg[0] = stringsetloc("* The wire loosened a little!/%", "obj_werewire_kristhrown_slash_Collision_048192d7_9c3b_472a_adb9_e1f06953ce64_gml_75_0");
		hspeed = -12;
		vspeed = -4;
		gravity = 0.5;
		con = 2;
	}
	scr_battletext_default();
	other.collided = 1;
	collided = 1;
}
