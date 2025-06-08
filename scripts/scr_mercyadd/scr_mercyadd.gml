function scr_mercyadd(arg0, arg1)
{
	global.mercymod[arg0] += arg1;
	if (global.mercymod[arg0] < 0)
		global.mercymod[arg0] = 0;
	if (global.mercymod[arg0] >= 100)
		global.mercymod[arg0] = 100;
	var _playsound = 1;
	if (arg1 <= 0)
		_playsound = 0;
	if (i_ex(obj_dmgwriter))
	{
		with (obj_dmgwriter)
		{
			if (type == 5)
				_playsound = 0;
		}
	}
	if (_playsound)
	{
		var _pitch = 0.8;
		if (arg1 < 99)
			_pitch = 1;
		if (arg1 <= 50)
			_pitch = 1.2;
		if (arg1 <= 25)
			_pitch = 1.4;
		snd_play_x(snd_mercyadd, 0.8, _pitch);
	}
	__mercydmgwriter = instance_create(global.monsterx[arg0], (global.monstery[arg0] + 20) - (global.hittarget[arg0] * 20), obj_dmgwriter);
	__mercydmgwriter.damage = arg1;
	__mercydmgwriter.type = 5;
	global.hittarget[arg0]++;
}
