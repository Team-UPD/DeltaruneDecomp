function scr_syncsprite(arg0, arg1, arg2, arg3, arg4, arg5)
{
	var _instance = instance_create_depth(arg1, arg2, arg5, obj_sprite_musicsync);
	with (_instance)
	{
		sprite_index = arg0;
		bpm = arg3;
		loopsPerBeat = arg4;
	}
	return _instance;
}
