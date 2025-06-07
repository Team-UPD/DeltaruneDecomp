function scr_spareanim()
{
	spareanim = instance_create(x, y, obj_spareanim);
	spareanim.sprite_index = sprite_index;
	spareanim.sprite_index = sparedsprite;
	spareanim.image_index = 0;
	spareanim.image_xscale = image_xscale;
	spareanim.image_yscale = image_yscale;
}
