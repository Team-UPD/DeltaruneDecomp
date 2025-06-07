image_speed = 0;
boxfinished = 0;
con = 0;
if (room == room_cc_rurus1 || room == room_cc_rurus2)
{
	spike[0] = scr_dark_marker(80, 240, spr_spiketile);
	spike[1] = scr_dark_marker(80, 280, spr_spiketile);
	spike[2] = scr_dark_marker(920, 200, spr_spiketile);
	spike[3] = scr_dark_marker(920, 240, spr_spiketile);
	for (i = 0; i < 4; i += 1)
	{
		spike[i].depth = 900000;
		spike[i].image_index = 1;
	}
	if (room == room_cc_rurus1)
	{
		floorwall = instance_create(280, 240, obj_soliddark);
		floorwall.image_xscale = 2;
	}
	if (room == room_cc_rurus2)
	{
		floorwall = instance_create(260, 240, obj_soliddark);
		floorwall.image_xscale = 3;
	}
	if (room == room_cc_rurus1)
	{
		if (global.flag[217] == 1)
		{
			instance_create(280, 160, obj_npc_room);
			instance_destroy();
		}
		else
		{
			flashobj = scr_dark_marker(520, 260, spr_lightfairy);
			with (flashobj)
			{
				image_speed = 0.1;
				depth = 90000;
			}
		}
	}
	if (room == room_cc_rurus2)
	{
		if (global.flag[218] == 1)
		{
			instance_create(280, 160, obj_npc_room);
			instance_destroy();
		}
		else
		{
			flashobj = scr_dark_marker(520, 260, spr_lightfairy);
			with (flashobj)
			{
				image_speed = 0.1;
				depth = 90000;
			}
		}
	}
	visible = 0;
}
