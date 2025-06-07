if (active == 1)
{
	if (global.inv < 0)
	{
		instance_create(0, 0, obj_shake);
		snd_stop(snd_hurt1);
		snd_play(snd_hurt1);
		global.inv = global.invc * 40;
		for (i = 0; i < 3; i += 1)
		{
			temphp[i] = global.hp[global.char[i]];
			if (temphp[i] < 0)
				temphp[i] = 0;
		}
		if ((ceil(temphp[0] + temphp[1] + temphp[2]) / 3) >= 10)
		{
			for (i = 0; i < 3; i += 1)
			{
				if (temphp[i] > 0)
					global.hp[global.char[i]] = ceil(global.hp[global.char[i]] * 0.7);
			}
		}
		else
		{
			scr_damage_all();
		}
	}
}
