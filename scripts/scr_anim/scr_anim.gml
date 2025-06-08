function scr_anim(arg0, arg1)
{
	objanim = instance_create(x, y, obj_anim);
	objanim.target = id;
	objanim.sprite_index = arg0;
	objanim.framespeed = arg1;
	with (objanim)
		event_user(0);
}
