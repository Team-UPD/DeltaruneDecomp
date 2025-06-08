if (myinteract == 1 && !d_ex())
{
	myinteract = 0;
	global.interact = 0;
}
if (extflag == 2 && tasquespawn == 1)
{
	if (tasquecon == 0 && tasqueTrig == 0)
	{
		tasqueTrig = 1;
		timer = 0;
		tasquetimer = 0;
		tasquecon = 2;
		image_index = 1;
		tasquemarker_head1 = scr_dark_marker(x + 4, y + 10, spr_tasque_head);
		tasquemarker1 = scr_dark_marker(x + 4, y + 10, spr_tasque_idle);
		tasquemarker1.image_alpha = 0;
		tasquemarker_head1.depth = depth - 11;
		tasquemarker1.depth = depth - 10;
		snd_play(snd_jump);
		tasquemarker1.remid = id;
		with (tasquemarker1)
		{
			remjump = scr_jump_to_point(other.x, 610, 15, 24);
			remid.remjump = remjump;
		}
		with (tasquemarker_head1)
			scr_jump_to_point(other.x, 610, 15, 24);
		remjump.image_alpha = 0;
		with (tasquemarker1)
			scr_depth();
		tasquemarker_head1.depth = tasquemarker1.depth - 1;
	}
	if (tasquecon == 2)
	{
		with (remjump)
			image_alpha += 0.05;
		tasquetimer++;
		with (tasquemarker1)
			scr_depth();
		tasquemarker_head1.depth = tasquemarker1.depth - 1;
		if (tasquetimer >= 24)
		{
			image_index = 1;
			obj_npc_tasquemanager.marker2 = instance_create(tasquemarker1.x, tasquemarker1.y, obj_npc_room);
			obj_npc_tasquemanager.marker2.sprite_index = spr_tasque_idle;
			with (obj_npc_tasquemanager.marker2)
				scr_depth();
			with (tasquemarker1)
				instance_destroy();
			with (tasquemarker_head1)
				instance_destroy();
			tasquespawn = 0;
			tasquecon++;
			tasquetimer = 0;
		}
	}
}
