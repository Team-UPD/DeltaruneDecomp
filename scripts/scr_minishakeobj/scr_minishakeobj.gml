function scr_minishakeobj()
{
	shakeobj = instance_create(x, y, obj_shakeobj);
	shakeobj.target = id;
	shakeobj.shakeamt = 4;
	shakeobj.shakereduct = 1;
	with (shakeobj)
		event_user(0);
}
