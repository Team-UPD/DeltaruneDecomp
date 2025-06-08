function snd_pitch_time(arg0, arg1, arg2)
{
	with (obj_lerppitch)
	{
		if (sndtarget == arg0)
			instance_destroy();
	}
	var pitchthing = instance_create(0, 0, obj_lerppitch);
	pitchthing.sndtarget = arg0;
	pitchthing.targetpitch = arg1;
	pitchthing.maxframes = arg2;
	with (pitchthing)
		event_user(0);
}
