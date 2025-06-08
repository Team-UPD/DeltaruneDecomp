function scr_script_delayed()
{
	var __scriptdelay = instance_create(0, 0, obj_script_delayed);
	__scriptdelay.script = argument[0];
	__scriptdelay.alarm[0] = argument[1];
	__scriptdelay.target = id;
	for (var __i = 0; __i < (argument_count - 2); __i++)
		__scriptdelay.script_arg[__i] = argument[__i + 2];
	__scriptdelay.arg_count = argument_count - 2;
	return __scriptdelay;
}
