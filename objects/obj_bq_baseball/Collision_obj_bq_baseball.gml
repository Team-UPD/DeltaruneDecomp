if (baseball_combo_timer > 0)
{
	with (other)
	{
		hit = 1;
		o_boxingcontroller.hit_baseball += 1;
		o_boxingcontroller.hit_baseball_check = 1;
		y = o_boxingcontroller.y - 184;
		if (other.hit_direction == -1)
			hit_direction = -1;
		else
			hit_direction = 1;
	}
}
