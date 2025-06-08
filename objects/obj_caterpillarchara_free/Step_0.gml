if (con == 0 && global.interact == 0 && keyboard_check_pressed(ord("B")) && scr_debug())
{
	susid = -4;
	var bossid = id;
	with (obj_caterpillarchara)
	{
		if (name == "susie")
		{
			visible = 0;
			bossid.caterpillarid = id;
			bossid.susid = instance_create(x, y, obj_actor);
			with (bossid.susid)
			{
				scr_set_facing_sprites("susie");
				sprite_index = rsprite;
			}
		}
	}
	if (susid == -4)
	{
		instance_destroy();
	}
	else
	{
		con = 1;
		timer = 0;
		overalltimer = 0;
	}
}
if (con == 1)
{
	if (global.interact == 0)
	{
		with (susid)
		{
			fake_direction = direction;
			fake_speed = scr_move_step_solids_direction(4, direction);
		}
		timer++;
		if (timer >= 30)
		{
			with (susid)
				direction += 90;
			timer = 0;
		}
		overalltimer++;
		if (overalltimer >= 120)
			con = 2;
	}
	else
	{
		with (susid)
			fake_speed = 0;
	}
}
if (con == 2)
{
	if (global.interact == 0)
	{
		var caid = caterpillarid;
		with (susid)
		{
			direction = point_direction(x, y, caid.x, caid.y);
			fake_direction = direction;
			fake_speed = scr_move_step_solids_direction(8, direction);
		}
		if ((abs(susid.x - caterpillarid.x) + abs(susid.y - caterpillarid.y)) < 12)
		{
			with (susid)
				instance_destroy();
			caterpillarid.visible = 1;
			con = 0;
			instance_destroy();
		}
	}
	else
	{
		with (susid)
			fake_speed = 0;
	}
}
