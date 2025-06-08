if (con == 0 && global.interact == 0 && susiestart == 1)
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
		instance_destroy();
	else
		con = 1;
}
if (con == 1)
{
	if (global.interact == 0)
	{
		if (instance_exists(obj_queenvase))
		{
			with (susid)
			{
				scr_depth();
				nearestpot = instance_nearest(x + (sprite_width / 2), (y + sprite_height) - 2, obj_queenvase);
				if (collision_line(x + (sprite_width / 2), (y + sprite_height) - 2, nearestpot.x + 20, nearestpot.y + 52, obj_solidblock, true, false) == -4)
				{
					direction = point_direction(x + (sprite_width / 2), (y + sprite_height) - 2, nearestpot.x + 20, (nearestpot.y + 52) - 10);
					fake_speed = scr_move_step_solids_direction(8, direction);
					fake_direction = direction;
				}
				else
				{
					other.con = 2;
				}
				if (place_meeting(x, y, obj_queenvase))
				{
					other.timer = 0;
					other.con = 1.1;
					image_index = 0;
					sprite_index = spr_susie_right_diagonal_kick_dw;
				}
			}
		}
		else
		{
			con = 2;
		}
	}
}
if (con == 1.1)
{
	if (!i_ex(kick))
	{
		kick = instance_create(susid.x, susid.y, obj_marker);
		kick.sprite_index = spr_susie_right_diagonal_kick_dw;
		kick.visible = true;
		if ((susid.x + (susid.sprite_width / 2)) > susid.nearestpot.x)
			kick.sprite_index = spr_susie_left_diagonal_kick_dw;
		kick.image_xscale = 2;
		kick.image_yscale = 2;
		kick.image_speed = 0.25;
		with (kick)
			scr_depth();
		susid.visible = false;
	}
	if (kick.image_index == 2)
		susid.active = 1;
	if (kick.image_index == 4)
	{
		susid.active = 0;
		susid.visible = true;
		with (kick)
			instance_destroy();
		con = 1;
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
