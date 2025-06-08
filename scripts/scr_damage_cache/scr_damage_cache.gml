function scr_damage_cache()
{
	global.damage_cache = [];
	for (var i = 0; i < 3; i++)
		global.damage_cache[array_length(global.damage_cache)] = global.hp[global.char[i]];
}

function scr_damage_check()
{
	if (!variable_global_exists("damage_cache"))
		global.damage_cache = [];
	var took_damage = false;
	for (var i = 0; i < array_length(global.damage_cache); i++)
	{
		var hp_cache = global.damage_cache[i];
		if (global.hp[global.char[i]] < hp_cache)
		{
			took_damage = true;
			break;
		}
	}
	if (took_damage)
	{
		with (obj_event_manager)
			trigger_event((1 << 0));
	}
}
