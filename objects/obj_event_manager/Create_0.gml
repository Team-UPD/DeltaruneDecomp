pad_index = -1;
trophies_enabled = false;
trophies_queue = [];
event_cooldown = 0;
_debug = -4;

init = function()
{
	init_trophies();
};

init_trophies = function()
{
	event_show_debug_message("*** init_trophies");
	if (!variable_global_exists("trophy_data"))
		global.trophy_data = [];
	if (!variable_global_exists("trophies"))
		global.trophies = [];
	for (var i = 0; i < 30; i++)
		global.trophy_data[array_length(global.trophy_data)] = get_trophy_by_id(i);
	if (os_type == os_ps4 || os_type == os_ps5)
	{
		psn_load_modules();
		psn_init_np_libs("", "", "");
	}
	if (scr_debug() && !global.is_console)
		scr_debug_load_trophies();
};

load_trophies = function(arg0)
{
	if (pad_index == arg0)
		exit;
	pad_index = arg0;
	if (os_type == os_ps4 || os_type == os_ps5)
	{
		psn_init_trophy(pad_index);
		psn_get_trophy_unlock_state(pad_index);
	}
};

enable_trophies = function()
{
	trophies_enabled = true;
};

disable_trophies = function()
{
	trophies_enabled = false;
};

get_debug_obj = function()
{
	if (!instance_exists(_debug))
		_debug = instance_create(0, 0, obj_event_manager_debug);
	return _debug;
};

is_trophy_unlocked = function(arg0)
{
	var is_unlocked = false;
	for (var i = 0; i < array_length(global.trophies); i++)
	{
		if (global.trophies[i] != arg0)
			continue;
		event_show_debug_message("*** trophy ~1 is already unlocked", arg0);
		is_unlocked = true;
		break;
	}
	if (!is_unlocked)
	{
		for (var i = 0; i < array_length(trophies_queue); i++)
		{
			if (trophies_queue[i] != arg0)
				continue;
			event_show_debug_message("*** trophy ~1 is already queued", arg0);
			is_unlocked = true;
			break;
		}
	}
	return is_unlocked;
};

event_show_debug_message = function(arg0, arg1 = -1, arg2 = true)
{
	var _debug_message = arg0;
	var _debugger = get_debug_obj();
	with (_debugger)
		trophy_show_debug_message(_debug_message, arg1, arg2);
};

get_trophy_by_id = function(arg0)
{
	var _trophy = -4;
	for (var i = 0; i < array_length(global.trophy_data); i++)
	{
		if (global.trophy_data[i].index != arg0)
			continue;
		_trophy = global.trophy_data[i];
		break;
	}
	if (_trophy == -4)
		_trophy = new trophy(arg0);
	return _trophy;
};

can_unlock_trophy = function(arg0)
{
	var _trophy = get_trophy_by_id(arg0);
	var _threshold = _trophy.threshold;
	var _flags = _trophy.flags;
	var can_unlock = false;
	if (array_length(_flags) > 0)
	{
		for (var i = 0; i < array_length(_flags); i++)
		{
			var __flag = _flags[i];
			if (global.flag[__flag] >= _threshold)
			{
				can_unlock = true;
				break;
			}
		}
	}
	else
	{
		can_unlock = true;
	}
	return can_unlock;
};

unlock_trophy = function(arg0)
{
	global.trophies[array_length(global.trophies)] = arg0;
	if (os_type == os_ps4 || os_type == os_ps5)
		psn_unlock_trophy(pad_index, arg0);
	event_show_debug_message("*** trophy unlocked: ~1", arg0, false);
	if (scr_debug() && !global.is_console)
		scr_debug_save_trophies();
};

queue_trophy = function(arg0)
{
	array_push(trophies_queue, arg0);
	event_show_debug_message("*** queued trophy: ~1", arg0, false);
};

reset_trophy = function(arg0)
{
	var _trophy = get_trophy_by_id(arg0);
	var _flags = _trophy.flags;
	if (array_length(_flags) > 0)
	{
		for (var i = 0; i < array_length(_flags); i++)
		{
			var __flag = _flags[i];
			global.flag[__flag] = 0;
			event_show_debug_message("*** reset trophy flag: " + string(__flag));
		}
	}
	var _adjusted_list = [];
	for (var i = 0; i < array_length(global.trophies); i++)
	{
		if (global.trophies[i] == arg0)
			continue;
		_adjusted_list[array_length(_adjusted_list)] = global.trophies[i];
	}
	global.trophies = _adjusted_list;
	var _adjusted_queue = [];
	for (var i = 0; i < array_length(trophies_queue); i++)
	{
		if (trophies_queue[i] == arg0)
			continue;
		_adjusted_queue[array_length(_adjusted_queue)] = trophies_queue[i];
	}
	trophies_queue = _adjusted_queue;
	event_show_debug_message("*** reset trophy: ~1", arg0, false);
	if (scr_debug() && !global.is_console)
		scr_debug_save_trophies();
};

reset_all_trophies = function()
{
	for (var i = 0; i < array_length(global.trophies); i++)
	{
		var _trophy = get_trophy_by_id(global.trophies[i]);
		var _flags = _trophy.flags;
		if (array_length(_flags) > 0)
		{
			for (var j = 0; j < array_length(_flags); j++)
			{
				var __flag = _flags[j];
				global.flag[__flag] = 0;
				event_show_debug_message("*** reset trophy flag: " + string(__flag));
			}
		}
	}
	global.trophies = [];
	trophies_queue = [];
	event_show_debug_message("*** reset all trophies");
	if (scr_debug() && !global.is_console)
		scr_debug_save_trophies();
};

trigger_event = function(arg0, arg1, arg2 = "n/a")
{
	switch (arg0)
	{
		case (0 << 0):
			if (trophies_enabled)
				validate_trophy(arg1, arg2);
			break;
		case (1 << 0):
			if (event_cooldown > 0)
				break;
			event_cooldown = 10;
			trigger_event((0 << 0), (6 << 0), (934 << 0));
			break;
		case (2 << 0):
			post_activity(arg1);
			break;
		default:
			break;
	}
};

validate_trophy = function(arg0, arg1)
{
	var subtype = arg1;
	event_show_debug_message("*** validating trophy: ~1 | " + string(arg1), arg0);
	if (arg0 == (13 << 0))
	{
		if (!is_trophy_unlocked((6 << 0)))
			queue_trophy((6 << 0));
	}
	if (is_trophy_unlocked(arg0))
		exit;
	if (subtype != "n/a")
	{
		global.flag[subtype] += 1;
		event_show_debug_message("*** increase trophy event flag: " + string(subtype) + " | " + string(global.flag[subtype]));
	}
	if (!can_unlock_trophy(arg0))
		exit;
	queue_trophy(arg0);
	if (scr_debug() && !global.is_console)
	{
		if ((array_length(global.trophies) + array_length(trophies_queue)) >= 29)
			queue_trophy((0 << 0));
	}
};

function trophy(arg0) constructor
{
	index = arg0;
	threshold = 0;
	flags = [];
	switch (arg0)
	{
		case (5 << 0):
			threshold = 4;
			flags = [(932 << 0), (933 << 0)];
			break;
		case (6 << 0):
			threshold = 8;
			flags = [(934 << 0), (935 << 0)];
			break;
		case (7 << 0):
			threshold = 14;
			flags = [(936 << 0)];
			break;
		case (8 << 0):
			threshold = 22;
			flags = [(937 << 0), (938 << 0)];
			break;
		case (23 << 0):
			threshold = 110;
			flags = [(939 << 0)];
			break;
		default:
			break;
	}
}

get_consumer_trophy = function()
{
	switch (global.chapter)
	{
		case 1:
			return (9 << 0);
			break;
		case 2:
			return (10 << 0);
			break;
		case 3:
			return (11 << 0);
			break;
		case 4:
			return (12 << 0);
			break;
	}
};

has_pending_trophies = function()
{
	return array_length(trophies_queue) > 0;
};

resolve_trophies = function()
{
	if (!trophies_enabled)
		exit;
	for (var i = 0; i < array_length(trophies_queue); i++)
	{
		var _index = trophies_queue[i];
		unlock_trophy(_index);
	}
	trophies_queue = [];
};

post_activity = function(arg0)
{
	if (os_type != os_ps5)
		exit;
	var activity_id = "activity_ch" + string(global.chapter) + "_end";
	var activity_type = "";
	switch (arg0)
	{
		case (0 << 0):
			activity_type = "activityStart";
			break;
		case (1 << 0):
			activity_type = "activityEnd";
			break;
		default:
			break;
	}
	var uds_map = ds_map_create();
	ds_map_add(uds_map, "activityId", activity_id);
	if (arg0 == (1 << 0))
		ds_map_add(uds_map, "outcome", "completed");
	psn_post_uds_event(pad_index, activity_type, uds_map);
	ds_map_destroy(uds_map);
};
