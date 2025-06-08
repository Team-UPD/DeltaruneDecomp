function scr_healallitemspell(arg0)
{
	scr_healall(arg0);
	for (i = 0; i < 3; i += 1)
	{
		with (global.charinstance[i])
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
	}
	global.spelldelay = 20;
}
