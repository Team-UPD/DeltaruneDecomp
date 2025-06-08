function switch_asyncPause()
{
	if (scr_is_switch_os())
	{
		var struct = dsmapToStruct(async_load);
		show_debug_message_concat(struct);
		if (struct.event_type == "gamepad lost" || struct.event_type == "gamepad discovered")
			audio_pause_all();
		if (struct.event_type == "focus state changed")
		{
			if (struct.focus_state == "out_focus")
				audio_pause_all();
		}
	}
}

function switch_asyncResume()
{
	if (scr_is_switch_os())
		audio_resume_all();
}
