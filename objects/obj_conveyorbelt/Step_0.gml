if (global.interact == 0)
{
	if (collision_rectangle(x + 20, y + 5, (x + sprite_width) - 20, (y + sprite_height) - 20, obj_mainchara, false, true))
	{
		var _xs = xspeed;
		var _ys = yspeed;
		with (obj_mainchara)
		{
			if (!place_meeting(x + _xs, y + _ys, obj_solidblock))
			{
				x += _xs;
				y += _ys;
			}
		}
	}
}
