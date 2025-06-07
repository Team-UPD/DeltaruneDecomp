function snd_free(arg0)
{
	if (instance_exists(obj_astream))
	{
		_xstream = arg0;
		obj_astream.bstream = _xstream;
		with (obj_astream)
		{
			if (bstream == mystream)
				instance_destroy();
		}
	}
}
