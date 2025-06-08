if (con == 0)
{
	if (!files_exist)
	{
		timer++;
		if (timer == 75)
			con = 1;
	}
	else
	{
		if (!show_queen)
			show_queen = true;
		if (show_queen)
		{
			timer++;
			if (timer == 30)
			{
				queen_sprite = spr_queen_wireframe_rotate;
				scr_lerpvar("queen_y_pos", -150, view_hport[0] / 4, 15, -1, "out");
				scr_lerpvar("queen_alpha", 0, 1, 10);
			}
			if (timer == 50)
			{
				queen_sprite = spr_queen_wireframe;
				queen_animate = false;
			}
			if (timer == 80)
			{
				queen_sprite = spr_queen_wireframe_laugh;
				queen_animate = true;
				snd_play(snd_queen_bitcrushlaugh);
			}
			if (timer == 130)
			{
				snd_play(snd_explosion_mmx3);
				queen_sprite = spr_queen_wireframe_explode;
			}
			if (timer == 170)
				scr_lerpvar("queen_alpha", 1, 0, 10);
			if (timer == 200)
			{
				con = 99;
				room_goto(PLACE_MENU);
			}
		}
	}
}
