if (hacker != -4)
{
	if (!hacker_init_path && hacker.path_position == 1)
	{
		pause_timer++;
		hacker.path_speed = 0;
		hacker.image_speed = 0;
		with (hacker)
			path_end();
		if (pause_timer >= 60)
		{
			pause_timer = 0;
			hacker_init_path = true;
			with (hacker)
				path_start(path_hacker_loop, 2, path_action_reverse, 1);
		}
	}
	if (hacker_init_path && hacker_can_pause)
	{
		if (hacker.path_position == 0 || hacker.path_position == 1)
		{
			hacker.path_speed = 0;
			pause_timer++;
			if (pause_timer >= 60)
			{
				pause_timer = 0;
				hacker.path_speed = 2;
				hacker.image_index = 0;
				hacker_can_pause = false;
			}
		}
	}
	if (!hacker_can_pause)
	{
		pause_timer++;
		if (pause_timer >= 15)
		{
			pause_timer = 0;
			hacker_can_pause = true;
		}
	}
	with (hacker)
	{
		scr_depth();
		image_speed = (path_speed == 0) ? 0 : 0.25;
		if (direction == 180)
		{
			if (x > 1318 && x < 1388)
				sprite_index = spr_npc_pointer_walk_left;
			else
				sprite_index = spr_npc_cursor_walk_left;
		}
		else if (x > 1380 && x < 1450)
		{
			sprite_index = spr_npc_pointer_walk_right;
		}
		else
		{
			sprite_index = spr_npc_cursor_walk_right;
		}
		if (global.interact != 0 && myinteract == 0)
			myinteract = 14;
		if (global.interact == 0 && myinteract == 14)
			myinteract = 0;
		if (d_ex() && myinteract == 0)
			myinteract = 32;
		if (!d_ex() && myinteract == 32)
			myinteract = 0;
		if (myinteract != 0 && path_speed != 0)
		{
			currentspeed = path_speed;
			path_speed = 0;
			image_index = 0;
			pathpause = true;
		}
		if (myinteract == 0 && pathpause)
		{
			path_speed = currentspeed;
			pathpause = false;
		}
	}
}
if (con == 1)
{
	con = -1;
	global.flag[339] = 1;
	layer_set_visible("TILES_Secret", false);
	layer_set_visible("TILES_Secret_BG", false);
	if (i_ex(exitcollider))
		instance_destroy(exitcollider);
}
