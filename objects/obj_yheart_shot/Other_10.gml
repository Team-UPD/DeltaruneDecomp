if (makeanim)
{
	myanim = instance_create(x, y, obj_yshot_anim);
	with (myanim)
		sprite_index = spr_yheart_shot_hit;
	if (big == 1)
	{
		with (myanim)
		{
			image_xscale = 3;
			image_yscale = 3;
		}
	}
	if (instance_exists(obj_heart))
		myanim.depth = obj_heart.depth - 100;
}
instance_destroy();
