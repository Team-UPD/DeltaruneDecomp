function scr_init_launch_parameters()
{
	var param_data = new launch_parameters();
	var p_num = parameter_count();
	if (p_num > 0)
	{
		for (var i = 0; i < p_num; i += 1)
		{
			var param = parameter_string(i + 1);
			if (param == "launcher")
			{
				param_data.is_launcher = true;
			}
			else if (string_pos("switch_", param) != 0)
			{
				var param_parts = string_split(param, "_");
				param_data.switch_id = real(param_parts[1]);
			}
		}
	}
	return param_data;
}

function launch_parameters() constructor
{
	is_launcher = false;
	switch_id = -1;
	returning = 0;
}

function get_chapter_switch_parameters()
{
	var launch_data = new launch_parameters();
	launch_data.is_launcher = global.launcher;
	if (scr_is_switch_os() && variable_global_exists("switchlogin"))
		launch_data.switch_id = global.switchlogin;
	var parameters = [];
	parameters[0] = "launcher";
	parameters[1] = "switch_" + string(launch_data.switch_id);
	parameters[2] = "returning_" + string(global.chapter);
	var param_formatted = "";
	for (var i = 0; i < array_length(parameters); i++)
		param_formatted += (" " + string(parameters[i]));
	return param_formatted;
}
