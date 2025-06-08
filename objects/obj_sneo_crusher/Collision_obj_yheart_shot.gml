if (destroying)
	exit;
if (offset > offsetCap)
{
	if (abs(y - other.y) < offset)
	{
		exit;
	}
	else
	{
		with (other)
			event_user(0);
	}
}
else if (abs(y - 8 - other.y) <= (24 * image_xscale) && destroyable == 1)
{
	flash = 1;
	hp -= other.damage;
	if (other.big == 1 && hp < 1)
	{
	}
	else
	{
		with (other)
			event_user(0);
	}
	if (new_movement == 0)
	{
		if (difficulty == 4)
		{
			pushback = 13;
			if (other.big == 1)
				pushback = 22;
		}
		if (difficulty == 6)
		{
			pushback = 22;
			if (other.big == 1)
				pushback = 22;
			depth += 1;
			image_blend = c_gray;
		}
	}
	else
	{
		if (other.big == 1)
		{
			if (hspeed < 10)
				hspeed = 10;
			vspeed += random_range(3, -3);
		}
		if (other.big == 0)
		{
			if (hspeed < 0)
				hspeed = 0;
			hspeed += 2;
			vspeed *= 1.2;
		}
	}
	if (hp <= 0)
	{
		active = 0;
		destroying = 15;
		var d = instance_create(x + random_range(-10, 10), y, obj_animation_dx);
		d.sprite_index = spr_thrash_missile_explosion;
		d.depth = depth - 1;
		scr_tensionheal(5);
		if (difficulty == 3 || difficulty == 5)
			event_user(0);
		if (crushedObj == 2)
			event_user(1);
	}
}
