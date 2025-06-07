if (active == 1)
{
	af = instance_create(x, y, obj_afterimage);
	af.sprite_index = sprite_index;
	af.depth = depth;
	af.image_angle = futuredir;
}
