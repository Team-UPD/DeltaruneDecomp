if (destroyable == 1)
{
	hp--;
	if (other.big == 1 || hp <= 0)
	{
		anim = instance_create(x, y, obj_yshot_anim);
		anim.image_xscale = image_xscale;
		anim.image_yscale = image_yscale;
		with (anim)
			sprite_index = spr_yheart_shot_hit3;
		instance_destroy();
	}
	else
	{
		flash = 1;
	}
	if (other.big == 0)
	{
		with (other)
			event_user(0);
	}
}
