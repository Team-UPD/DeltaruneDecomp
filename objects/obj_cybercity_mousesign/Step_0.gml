if (fade_in)
{
	if (sign_alpha < 1)
	{
		sign_alpha += 0.1;
		if (sign_alpha >= 1)
		{
			fade_in = false;
			alarm[0] = 15;
		}
	}
}
