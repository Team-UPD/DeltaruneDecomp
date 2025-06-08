targ = 15;
if (instance_exists(obj_controller_dining3))
{
	if (instance_number(obj_saucer) == targ)
	{
		obj_controller_dining3.key = instance_create(other.x, other.y, obj_marker);
		obj_controller_dining3.key.sprite_index = spr_ch2_gimmick_saucer_key;
		obj_controller_dining3.key.image_xscale = 2;
		obj_controller_dining3.key.image_yscale = 2;
		if (obj_controller_dining3.dogcon == 70)
			obj_controller_dining3.dogcon = 71;
	}
}
with (other)
{
	instance_create(x + 25, y + 34, obj_saucerTable_knocked);
	instance_destroy();
}
if (room == 1201)
	vspeed *= 0.75;
if (instance_number(obj_saucer) == (targ - 1) && i_ex(obj_controller_dining3))
{
	vertState = 1;
	global.interact = 1;
}
