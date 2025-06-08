sprite_index = (myinteract > 0) ? spr_npc_clamguy_b : spr_npc_clamguy_a;
image_speed = (myinteract > 0) ? 0.2 : 0;
if (myinteract > 0 && instance_exists(obj_writer))
{
	if (obj_writer.halt > 0)
	{
		image_speed = 0;
		image_index = 0;
	}
	if (obj_writer.halt == 0)
		image_speed = 0.2;
}
event_inherited();
