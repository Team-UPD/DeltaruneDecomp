function scr_markify_caterpillar()
{
	s = 4378473;
	r = 4387437;
	for (i = 0; i < 2; i += 1)
	{
		if (i_ex(global.cinstance[i]))
		{
			if (global.char[i + 1] == 2)
			{
				s = scr_dark_marker(global.cinstance[i].x, global.cinstance[i].y, global.cinstance[i].sprite_index);
				with (global.cinstance[i])
					visible = 0;
			}
			if (global.char[i + 1] == 3)
			{
				r = scr_dark_marker(global.cinstance[i].x, global.cinstance[i].y, global.cinstance[i].sprite_index);
				with (global.cinstance[i])
					visible = 0;
			}
		}
	}
}
