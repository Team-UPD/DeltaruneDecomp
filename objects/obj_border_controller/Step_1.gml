if (border_fade_out)
{
	if (border_alpha > 0)
	{
		border_alpha -= border_fade_value;
		if (border_alpha <= 0)
			border_alpha = 0;
	}
}
else if (border_fade_in)
{
	if (border_alpha <= 1)
	{
		border_alpha += border_fade_value;
		if (border_alpha >= 1)
			border_alpha = 1;
	}
}
