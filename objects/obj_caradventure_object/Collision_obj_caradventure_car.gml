if (type == "banana")
{
	snd_play(snd_item);
	snd_play(snd_swallow);
	with (other)
	{
		triggertalk = 1;
		bananahit = 1;
		if (instance_exists(obj_writer))
		{
			if (obj_writer.halt != 0)
			{
				with (obj_writer)
					forcebutton1 = 1;
			}
		}
		scr_speaker("queen");
		msgsetloc(0, "\\E1* Potassium/%", "obj_caradventure_object_slash_Collision_c6676890_fdcf_45e4_aea6_c7948966d056_gml_17_0");
		var d = d_make();
		d.side = 1;
		d.zurasu = 1;
	}
	instance_destroy();
}
