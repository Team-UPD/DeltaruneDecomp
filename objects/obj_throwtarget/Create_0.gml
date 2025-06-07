image_xscale = 2;
image_yscale = 2;
image_speed = 0.2;
good = 1;
offing = 0;
if (instance_number(object_index) == 1)
{
	tt = instance_create(x, y, obj_throwtarget);
	tt.depth = depth + 1;
	with (tt)
	{
		offing = 0;
		good = 0;
		sprite_index = spr_checkers_idle_crownless;
	}
}
con = 0;
