if (scr_debug())
{
	if (instance_exists(obj_queenshield_enemy))
	{
		shieldhp = 0;
		with (obj_queenshield_enemy)
		{
			shieldhurt = 2;
			shieldhurttimer = 0;
		}
		with (obj_queen_battlesolid_wine)
			instance_destroy();
		if (shieldhp <= 5)
		{
			shieldhp = 0;
			shieldbrokecon = 1;
			sprite_index = spr_queen_drunk;
		}
	}
	else
	{
		bardlymercy = 100;
		global.monsterhp[myself] -= 100;
	}
}
