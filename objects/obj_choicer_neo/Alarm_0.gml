if (instance_exists(obj_dialoguer))
{
	with (obj_dialoguer)
	{
		if (instance_exists(writer))
		{
			wwx = writer.x;
			wwy = writer.y;
		}
		with (obj_face)
			instance_destroy();
		with (writer)
			instance_destroy();
		with (obj_choicer_neo)
			global.fc = remfc;
		global.msc += 1;
		scr_text(global.msc);
		event_user(0);
	}
}
with (obj_choicer_neo)
	instance_destroy();
