timer++;
if (con == 1)
{
	t = (t + increment) % 360;
	shift = amplitude * dsin(t);
	y = yy + shift;
	sprite_index = spr_berdly_plug_target;
	x = (xstart - (((y - cameray()) + 0.1) / 3.375)) + 18 + (sprite_width / 2);
}
if (con == 5)
{
	slash = instance_create(x, y, obj_slashEffect);
	slash.image_angle = image_angle + 45;
	scr_afterimage_cut();
	instance_destroy();
}
