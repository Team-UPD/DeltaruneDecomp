function scr_remapvalue(arg0, arg1, arg2, arg3, arg4)
{
	if (arg1 == arg0)
		return arg3;
	var __invLerp = (arg2 - arg0) / (arg1 - arg0);
	return lerp(arg3, arg4, __invLerp);
}

function remap(arg0, arg1, arg2, arg3, arg4)
{
	var __invLerp = scr_inverselerp(arg1, arg2, arg0);
	return lerp(arg3, arg4, __invLerp);
}

function remap_clamped(arg0, arg1, arg2, arg3, arg4)
{
	var __remapped_value = remap(arg0, arg1, arg2, arg3, arg4);
	return clamp(__remapped_value, arg3, arg4);
}
