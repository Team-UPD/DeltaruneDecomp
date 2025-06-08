function scr_bullet_heal(arg0)
{
	with (obj_dmgwriter)
	{
		if (delaytimer >= 1)
			killactive = 1;
	}
	if (target == 4)
	{
		scr_randomtarget_old();
		target = mytarget;
	}
	if (target < 3)
	{
		if (global.hp[global.char[target]] <= 0)
		{
			scr_randomtarget_old();
			target = mytarget;
			with (global.charinstance[target])
			{
				image_blend = c_white;
				darkify = 0;
			}
		}
	}
	scr_heal(target, arg0);
	with (global.charinstance[target])
	{
		ha = instance_create(x, y, obj_healanim);
		ha.target = id;
		dmgwr = scr_dmgwriter_selfchar();
		with (dmgwr)
		{
			delay = 8;
			type = 3;
			damage = arg0;
		}
		if (global.hp[global.char[myself]] >= global.maxhp[global.char[myself]])
		{
			with (dmgwr)
				specialmessage = 3;
		}
		tu += 1;
	}
	snd_stop(snd_power);
	snd_play(snd_power);
}
