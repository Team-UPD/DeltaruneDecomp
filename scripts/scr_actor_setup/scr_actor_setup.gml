function scr_actor_setup(arg0, arg1, arg2)
{
	_actorid = arg0;
	_actorinstance = arg1;
	_actorname = arg2;
	obj_cutscene_master.actor_id[_actorid] = _actorinstance;
	obj_cutscene_master.actor_name[_actorid] = _actorname;
	with (_actorinstance)
	{
		number = arg0;
		scr_set_facing_sprites(arg2);
	}
}
