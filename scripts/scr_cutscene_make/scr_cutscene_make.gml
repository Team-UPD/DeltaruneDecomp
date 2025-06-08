function scr_cutscene_make()
{
	_cutscene_master = instance_create(0, 0, obj_cutscene_master);
	_cutscene_master.master_object = id;
	return _cutscene_master;
}
