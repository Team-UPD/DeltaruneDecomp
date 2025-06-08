if (init == 0)
{
	if (room == room_dw_cyber_battle_maze_2 || room == room_dw_cyber_keyboard_puzzle_3)
	{
		image_index = 10;
		extflag = 4;
		activecon = 0;
		scr_depth();
	}
	if (room == room_dw_cyber_maze_tasque)
	{
		if (extflag == 4)
		{
			activecon = 0;
			scr_depth();
		}
	}
	init = 1;
}
if (activecon == 0)
{
	if (instance_exists(obj_mainchara))
	{
		aligned = 0;
		if (extflag == 999)
		{
			if (align_x == true && x >= camerax() && x <= (camerax() + camerawidth()))
			{
				if (abs((obj_mainchara.x + 20) - x) <= align_amount)
					aligned = 1;
			}
			if (align_y == true && y >= cameray() && y <= (cameray() + cameraheight()))
			{
				if (abs((obj_mainchara.y + 20) - y) <= align_amount)
					aligned = 1;
			}
			if (align_distance == true)
			{
				if (distance_to_object(obj_mainchara) < align_amount)
					aligned = 1;
			}
		}
		if (image_index != 14 && image_index != 13 && extflag == false)
		{
			if (align_x == true && x >= camerax() && x <= (camerax() + camerawidth()))
			{
				if (abs((obj_mainchara.x + 20) - x) <= align_amount)
					aligned = 1;
			}
			if (align_y == true && y >= cameray() && y <= (cameray() + cameraheight()))
			{
				if (abs((obj_mainchara.y + 20) - y) <= align_amount)
					aligned = 1;
			}
			if (align_distance == true)
			{
				if (distance_to_object(obj_mainchara) < align_amount)
					aligned = 1;
			}
		}
		if (image_index == 13)
		{
			if (point_in_rectangle(obj_mainchara.x + 18, obj_mainchara.y + 36, 120, 480, 160, 558))
				aligned = 1;
		}
		if (image_index == 14)
		{
			if (point_in_rectangle(obj_mainchara.x + 18, obj_mainchara.y + 36, 200, 882, 280, 962))
				aligned = 1;
		}
		if (extflag == 1)
		{
			if (point_in_rectangle(obj_mainchara.x + 18, obj_mainchara.y + 36, 400, 680, 480, 760))
				aligned = 1;
		}
		if (extflag == 2)
		{
			if (point_in_rectangle(obj_mainchara.x + 18, obj_mainchara.y + 36, 1080, 440, 1160, 520))
				aligned = 1;
		}
		if (extflag == 3)
			aligned = 1;
		if (image_index == 10 && bluecheckcon == 0)
		{
			image_index = 10;
			if (room == room_dw_cyber_battle_maze_2)
			{
				global.flag[407] = 1;
				bluecheckcon = 1;
			}
			if (room == room_dw_cyber_maze_tasque)
			{
				global.flag[367] = 1;
				bluecheckcon = 1;
			}
			if (room == room_dw_cyber_keyboard_puzzle_3)
			{
				global.flag[420] = 1;
				bluecheckcon = 1;
			}
		}
		if (extflag == 5)
		{
			sprite_index = spr_queenscreen_big;
			if (point_in_rectangle(obj_mainchara.x + 18, obj_mainchara.y + 36, 320, 200, 360, 280))
				aligned = 1;
		}
		if (extflag == 6)
		{
			if (align_x == true && x >= camerax() && x <= (camerax() + camerawidth()))
			{
				if (abs((obj_mainchara.x + 20) - x) <= align_amount)
					aligned = 1;
			}
			if (align_y == true && y >= cameray() && y <= (cameray() + cameraheight()))
			{
				if (abs((obj_mainchara.y + 20) - y) <= align_amount)
					aligned = 1;
			}
			if (align_distance == true)
			{
				if (distance_to_object(obj_mainchara) < align_amount)
					aligned = 1;
			}
		}
		if (extflag == 7)
		{
			if (align_x == true && x >= camerax() && x <= (camerax() + camerawidth()))
			{
				if (abs((obj_mainchara.x + 20) - x) <= align_amount)
					aligned = 1;
			}
			if (align_y == true && y >= cameray() && y <= (cameray() + cameraheight()))
			{
				if (abs((obj_mainchara.y + 20) - y) <= align_amount)
					aligned = 1;
			}
			if (align_distance == true)
			{
				if (distance_to_object(obj_mainchara) < align_amount)
					aligned = 1;
			}
		}
		if (extflag == 8)
			aligned = 1;
		if (extflag == 10)
		{
			if (align_x == true && x >= camerax() && x <= (camerax() + camerawidth()))
			{
				if (abs((obj_mainchara.x + 20) - x) <= align_amount)
					aligned = 1;
			}
			if (align_y == true && y >= cameray() && y <= (cameray() + cameraheight()))
			{
				if (abs((obj_mainchara.y + 20) - y) <= align_amount)
					aligned = 1;
			}
			if (align_distance == true)
			{
				if (distance_to_object(obj_mainchara) < align_amount)
					aligned = 1;
			}
		}
		if (extflag == 11)
		{
			if (scr_onscreen_tolerance(id, 0))
				aligned = 1;
		}
		if (extflag == 12)
		{
			if (global.flag[366] == 1)
				aligned = 1;
			if (point_in_rectangle(charaX(), charaY(), 760, 920, 960, 1040))
			{
				aligned = 1;
				global.flag[366] = 1;
			}
		}
		if (aligned == 1)
		{
			visible = 1;
			con = 0;
			activecon = 1;
		}
	}
}
if (activecon == 1)
{
	if (con == 0)
	{
		timer += (timer + 1);
		image_xscale = lerp(4, 1, timer / 30);
		image_yscale = lerp(0, 4, timer / 30);
		if (timer >= 30)
		{
			con = 1;
			timer = 0;
		}
	}
	if (con == 1)
	{
		timer += (timer + 1);
		image_xscale = lerp(1, 2, timer / 15);
		image_yscale = lerp(4, 2, timer / 15);
		if (timer >= 15)
		{
			timer = 0;
			con = 2;
			image_xscale = 2;
			image_yscale = 2;
		}
	}
	if (con == 2)
	{
		if (image_index == 9)
		{
			tasquecon = 1;
			con = 99;
		}
	}
	if (tasquecon == 1)
	{
		if (tasquetriggered == 0)
		{
			with (obj_triggervolume)
			{
				if (place_meeting(x, y, obj_mainchara))
				{
					if (room == room_dw_cyber_maze_tasque)
					{
						if (extflag == 11 || extflag == 12)
						{
							if (other.extspawnflag == 1)
							{
								other.tasquex = 490;
								other.tasquey = 386;
								other.tasquedir = 0;
								if (extflag == 11)
									other.tasquedir = 0;
								if (extflag == 12)
									other.tasquedir = 1;
								other.tasquetriggered = 1;
							}
						}
						else if (extflag == 21 || extflag == 22)
						{
							if (other.extspawnflag == 2)
							{
								other.tasquex = 588;
								other.tasquey = 586;
								if (extflag == 21)
									other.tasquedir = 0;
								if (extflag == 22)
									other.tasquedir = 1;
								other.tasquetriggered = 1;
							}
						}
					}
					if (room == room_dw_cyber_tasque_battle)
					{
						other.tasquex = 746;
						other.tasquey = 980;
						other.tasquedir = 0;
						if (extflag == 1)
							other.tasquedir = 0;
						if (extflag == 2)
							other.tasquedir = 1;
						other.tasquetriggered = 1;
					}
				}
			}
		}
		if (tasquetriggered == 1)
		{
			timer = 0;
			tasquetimer = 0;
			image_index = 11;
			tasquemarker_head = scr_dark_marker(x - 32, y - 26, spr_tasque_head);
			tasquemarker = scr_dark_marker(x - 32, y - 26, spr_tasque_idle);
			tasquemarker.image_alpha = 0;
			tasquemarker_head.depth = depth - 11;
			tasquemarker.depth = depth - 10;
			snd_play(snd_jump);
			tasquemarker.remid = id;
			with (tasquemarker)
			{
				remjump = scr_jump_to_point(other.tasquex, other.tasquey, 15, 24);
				remid.remjump = remjump;
			}
			with (tasquemarker_head)
				scr_jump_to_point(other.tasquex, other.tasquey, 15, 24);
			remjump.image_alpha = 0;
			tasquecon = 2;
		}
	}
	if (tasquecon == 2)
	{
		if (tasquetimer <= 12)
		{
			image_xscale *= (1 + ((1 / (tasquetimer + 1)) * 0.25));
			image_yscale *= (1 + ((1 / (tasquetimer + 1)) * 0.25));
		}
		if (tasquetimer > 12)
		{
			image_xscale *= 0.6;
			image_yscale *= 0.6;
		}
		with (remjump)
			image_alpha += 0.05;
		tasquetimer++;
		if (tasquetimer >= 24)
			tasquecon = 3;
	}
	if (tasquecon == 3)
	{
		tenemy = instance_create(tasquemarker.x, tasquemarker.y, obj_chaseenemy);
		tenemy.sprite_index = spr_tasque_idle;
		if (tasquedir == 0)
			tenemy.pacetype = 21;
		else
			tenemy.pacetype = 22;
		tenemy.chasetype = -1;
		tenemy.pacespeed = tasquespeed;
		tenemy.eraser = 1;
		tenemy.facing = tasquedir;
		with (tasquemarker)
			instance_destroy();
		with (tasquemarker_head)
			instance_destroy();
		tasquecon = 4;
	}
	if (dismiss == 1)
	{
		timer = 0;
		con = 3;
		dismiss = 0;
	}
	if (con == 3)
	{
		timer += (timer + 1);
		image_xscale = lerp(2, 4, timer / 30);
		image_yscale = lerp(2, 0, timer / 30);
		if (timer >= 30)
			instance_destroy();
	}
}
if (extflag == 3 && room == room_dw_cyber_maze_virokun)
{
	bpf = 58.5;
	count += bpf;
	if (count > (bpf * 6))
	{
		if (image_index == 22)
			image_index = 23;
		else
			image_index = 22;
		count = 0;
	}
}
if (extflag == 7)
{
	bpf = 58.5;
	count += bpf;
	if (count > (bpf * 6))
	{
		if (image_index == 27)
			image_index = 31;
		else
			image_index = 27;
		count = 0;
	}
}
if (bluecheckcon == 1)
{
	visible = 1;
	con = 0;
	bluecheckcon++;
}
if (bluecheckcon == 2)
{
	if (con == 0)
	{
		timer += ((timer / 2) + 1);
		image_xscale = lerp(4, 1, timer / 30);
		image_yscale = lerp(0, 4, timer / 30);
		if (timer >= 30)
		{
			snd_play(snd_won);
			con = 1;
			timer = 0;
		}
	}
	if (con == 1)
	{
		timer += ((timer / 2) + 1);
		image_xscale = lerp(1, 2, timer / 15);
		image_yscale = lerp(4, 2, timer / 15);
		if (timer >= 15)
		{
			timer = 0;
			con = 2;
			image_xscale = 2;
			image_yscale = 2;
			flash = scr_afterimage_grow();
			flash.depth = depth - 1;
			bluecheckcon++;
			timer = 0;
		}
	}
}
if (bluecheckcon == 3)
{
	timer++;
	if (timer > 15)
	{
		vspeed -= 0.25;
		image_xscale *= 0.9;
		if ((timer % 4) == 0)
			scr_afterimage();
	}
	if (y < (cameray() - 120))
		instance_destroy();
}
