if (i_ex(obj_readable_room1))
{
	with (obj_readable_room1)
	{
		if (visible == 1)
		{
			image_speed = 0.25;
			if (direction >= 136 && direction <= 225)
				image_xscale = 2;
			if (direction >= 306 || direction <= 45)
				image_xscale = -2;
			if (sprite_index == spr_tasque_idle_overworld)
				depth = (y > 350) ? (obj_mainchara.depth - 100) : (obj_mainchara.depth + 100);
			else
				scr_depth();
		}
	}
}
if (howl_con == 1 && !d_ex())
{
	howl_con = 0;
	snd_play(snd_howl);
}
