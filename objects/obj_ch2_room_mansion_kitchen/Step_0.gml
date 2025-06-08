if (global.flag[362] == 0)
{
	if (obj_mainchara.x < 280 && con == -1)
	{
		con = 1;
		timer = 0;
		alarm[0] = 15;
		global.interact = 1;
		snd_play(snd_mouse);
		with (mouse_a)
		{
			scr_emote("!", 20);
			scr_flip("x");
		}
		with (mouse_b)
		{
			scr_emote("!", 20);
			scr_flip("x");
		}
		with (mouse_c)
		{
			scr_emote("!", 20);
			scr_flip("x");
		}
	}
	if (con == 2)
	{
		timer++;
		if (timer < 30)
		{
			cx = 90;
			cy = 200;
			turnspeed = 40;
			radius = 40;
			lerpspeed = 0.125;
			mouse_b.x = lerp(mouse_b.x, cx + (sin(30 / turnspeed) * 40), lerpspeed);
			mouse_b.y = lerp(mouse_b.y, cy + (cos(30 / turnspeed) * 40), lerpspeed);
			mouse_a.x = lerp(mouse_a.x, cx + (sin(2.0943951023931953 + (30 / turnspeed)) * 40), lerpspeed);
			mouse_a.y = lerp(mouse_a.y, cy + (cos(2.0943951023931953 + (30 / turnspeed)) * 40), lerpspeed);
			mouse_c.x = lerp(mouse_c.x, cx + (sin(4.1887902047863905 + (30 / turnspeed)) * 40), lerpspeed);
			mouse_c.y = lerp(mouse_c.y, cy + (cos(4.1887902047863905 + (30 / turnspeed)) * 40), lerpspeed);
		}
		if (timer >= 30)
		{
			if (turnspeed > 3)
				turnspeed = lerp(turnspeed, 3, 0.1);
			if (turnspeed < 10)
			{
				with (mouse_a)
					scr_afterimage();
				with (mouse_b)
					scr_afterimage();
				with (mouse_c)
					scr_afterimage();
			}
			if (turnspeed < 6)
			{
				if (radius > 1)
				{
					radius = lerp(radius, 0, 0.25);
				}
				else
				{
					radius = 0;
					snd_play(snd_great_shine);
					con = 2.1;
				}
			}
			if (radius < 10)
			{
				if (whiteall.image_alpha == 0)
					whiteall.image_alpha = 0.03;
				whiteall.image_alpha *= 1.2;
			}
			mouse_a.x = cx + (sin(timer / turnspeed) * radius);
			mouse_a.y = cy + (cos(timer / turnspeed) * radius);
			mouse_b.x = cx + (sin(2.0943951023931953 + (timer / turnspeed)) * radius);
			mouse_b.y = cy + (cos(2.0943951023931953 + (timer / turnspeed)) * radius);
			mouse_c.x = cx + (sin(4.1887902047863905 + (timer / turnspeed)) * radius);
			mouse_c.y = cy + (cos(4.1887902047863905 + (timer / turnspeed)) * radius);
		}
	}
	if (con == 2.1)
	{
		whiteall.image_alpha *= 1.2;
		if (whiteall.image_alpha >= 1)
		{
			timer = 0;
			con = 2.2;
		}
	}
	if (con == 2.2)
	{
		if (timer == 0)
		{
			with (mouse_a)
				visible = 0;
			with (mouse_b)
				visible = 0;
			with (mouse_c)
				visible = 0;
			with (cheese_a)
				visible = 0;
			with (cheese_b)
				visible = 0;
			with (cheese_c)
				visible = 0;
			if (mauswheel == -4)
			{
				mauswheel = scr_dark_marker(20, 160, spr_mauswheel_idle);
				mauswheel.image_speed = 0.5;
			}
		}
		timer++;
		if (timer > 15)
			whiteall.image_alpha *= 0.9;
		if (whiteall.image_alpha <= 0.01)
		{
			with (whiteall)
			{
				instance_destroy();
				other.con = 3;
			}
		}
	}
	if (con == 3)
	{
		con = 4;
		alarm[0] = 15;
	}
	if (con == 5)
	{
		con = 9;
		alarm[0] = 30;
		encounterflag = 543;
		global.flag[54] = encounterflag;
		global.flag[9] = 2;
		scr_battle(83, 0, mauswheel, 0, 0);
	}
	if (con == 10 && !i_ex(obj_battlecontroller))
	{
		global.flag[362] = 1;
		global.flag[9] = 0;
		scr_tempsave();
		with (swatchling_npc_a)
			sprite_index = spr_npc_swatchling_down;
		with (cheese_a)
		{
			image_index = 1;
			visible = 1;
		}
		with (cheese_b)
		{
			image_index = 1;
			visible = 1;
		}
		with (cheese_c)
		{
			image_index = 1;
			visible = 1;
		}
	}
}
