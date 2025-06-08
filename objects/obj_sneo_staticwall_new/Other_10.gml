if (destroyable == 1 && active == 1)
{
	if (hitshot.big == 0)
	{
		with (hitshot)
			event_user(0);
	}
	snd_play(snd_damage);
	anim = instance_create(x, y, obj_yshot_anim);
	anim.image_xscale = image_xscale;
	anim.image_yscale = image_yscale;
	with (anim)
		sprite_index = spr_yheart_shot_hit3;
	instance_destroy();
}
else
{
	with (hitshot)
		event_user(0);
}
