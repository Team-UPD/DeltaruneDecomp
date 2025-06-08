function scr_stickto(arg0, arg1)
{
	_stickto = instance_create(0, 0, obj_stickto);
	_stickto.stickingobj = id;
	_stickto.stucktoobj = arg0;
	_stickto.relativedepth = arg1;
	with (_stickto)
		event_user(0);
}
