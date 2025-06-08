function scr_actor_setup_nofacing(arg0, arg1, arg2)
{
	_actorid = arg0;
	_actorinstance = arg1;
	_actorname = arg2;
	obj_cutscene_master.actor_id[_actorid] = _actorinstance;
	obj_cutscene_master.actor_name[_actorid] = _actorname;
	_actorinstance.name = _actorname;
}
