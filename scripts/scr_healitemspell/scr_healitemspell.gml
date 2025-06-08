function scr_healitemspell(arg0)
{
	scr_heal(star, arg0);
	global.spelldelay = 15;
	with (global.charinstance[star])
	{
		ha = instance_create(x, y, obj_healanim);
		ha.target = id;
		if (global.chapter == 2 && instance_exists(o_boxingcontroller))
			ha.target = o_boxingcontroller.id;
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
		return ha;
	}
}
