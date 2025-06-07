function snd_init(arg0)
{
	var dir = "mus/";
	if (global.launcher)
		dir = working_directory + "../mus/";
	initsongvar = dir + arg0;
	_mystream = audio_create_stream(initsongvar);
	_astream = instance_create(0, 0, obj_astream);
	_astream.mystream = _mystream;
	return _mystream;
}
