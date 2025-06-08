if (active == 1)
{
	if (target != 3)
		scr_damage();
	if (target == 3)
		scr_damage_all();
	if (destroyonhit == 1)
	{
		if (sprite_index != spr_sneo_electric_orb_destroy)
		{
			sprite_index = spr_sneo_electric_orb_destroy;
			image_index = 0;
			alarm[0] = 99;
			image_speed = 0.5;
		}
	}
}
