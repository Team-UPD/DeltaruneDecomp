con = -1;
howl_con = 0;
if (global.chapter == 2)
{
	if (global.flag[302] >= 1)
	{
		var yPos = (global.flag[642] == 1) ? 185 : 205;
		var bloxer = instance_create(115, yPos, obj_npc_room);
		bloxer.sprite_index = (global.flag[642] == 1) ? spr_blockguy_pants4 : spr_blockguy_pants3;
	}
	if (global.plot >= 200)
	{
		var lost_animals = 0;
		if (global.flag[642] != 1)
		{
			if (global.flag[632] == 1)
			{
				var tasque = instance_create(280, 370, obj_readable_room1);
				tasque.sprite_index = spr_tasque_idle_overworld;
				tasque.visible = 1;
				tasque.image_xscale = 2;
				tasque.image_yscale = 2;
				with (tasque)
					path_start(path_great_door, 2, path_action_continue, 0);
				lost_animals++;
			}
			if (global.flag[634] == 1)
			{
				var maus = instance_create(290, 320, obj_readable_room1);
				maus.sprite_index = spr_maus_idle;
				maus.visible = 1;
				maus.image_xscale = 2;
				maus.image_yscale = 2;
				with (maus)
				{
					path_start(path_great_door, 2, path_action_continue, 0);
					path_position = 0.2;
				}
				lost_animals++;
			}
			if (global.flag[631] == 1)
			{
				var poppup = instance_create(300, 260, obj_readable_room1);
				poppup.sprite_index = spr_npc_poppup;
				poppup.visible = 1;
				poppup.image_xscale = 2;
				poppup.image_yscale = 2;
				with (poppup)
				{
					path_start(path_great_door, 2, path_action_continue, 0);
					path_position = 0.4;
				}
				lost_animals++;
			}
		}
		if (lost_animals == 0 && global.flag[462] < 3 && global.flag[465] == 1)
		{
			var car = instance_create(280, 330, obj_readable_room1);
			car.sprite_index = spr_traffic_car_side_legs_small_left;
			car.visible = 1;
			car.image_xscale = 2;
			car.image_yscale = 2;
			with (car)
				path_start(path_great_door, 2, path_action_continue, 0);
		}
	}
}
else
{
	instance_destroy();
}
