if (global.turntimer < 1)
	instance_destroy();
if (i_ex(obj_sneo_wall_controller_new))
	x += obj_sneo_wall_controller_new.wallspeed[wallnumber];
if (wallcontroller > -1)
{
	if (obj_sneo_wall_controller_new.walltype[wallnumber] == 0)
	{
		timer++;
		if (timer < 9)
			obj_sneo_wall_controller_new.wallspeed[wallnumber] = lerp(-16, -6, timer / 9);
		else if (timer < 150)
			obj_sneo_wall_controller_new.wallspeed[wallnumber] = lerp(-6, -6, (timer - 9) / 130);
	}
	if (obj_sneo_wall_controller_new.walltype[wallnumber] == 1)
	{
		timer++;
		if (timer < 16)
			obj_sneo_wall_controller_new.wallspeed[wallnumber] = lerp(-21, -5, timer / 15);
		else if (timer < 90)
			obj_sneo_wall_controller_new.wallspeed[wallnumber] = lerp(-5, -13, (timer - 15) / 70);
	}
}
if (sprite_index == spr_sneo_crew)
{
	hitshot = collision_rectangle(x - 18, y - 22, x + 19, y + 22, obj_yheart_shot, true, false);
	if (hitshot != -4)
	{
		if (destroyable == 0 && hitshot.big == 1)
		{
			if ((hitshot.y < y && instance_place(x, y - 40, obj_sneo_wallbullet_new) && instance_nearest(x, y - 40, obj_sneo_wallbullet_new).sprite_index == spr_sneo_mail) || (hitshot.y > y && instance_place(x, y + 40, obj_sneo_wallbullet_new) && instance_nearest(x, y + 40, obj_sneo_wallbullet_new).sprite_index == spr_sneo_mail))
			{
			}
			else if (abs(hitshot.y - y) > 12)
			{
				exit;
			}
		}
		event_user(0);
		if (destroyable == 1 && active == 1)
		{
			if (instance_exists(hitshot))
			{
				if (hitshot.big == 0)
				{
					with (hitshot)
						event_user(0);
				}
			}
			snd_play_pitch(snd_bomb, 1.1 + random(0.2));
			scr_afterimage_cut();
			anim = instance_create(x, y, obj_yshot_anim);
			anim.image_xscale = image_xscale;
			anim.image_yscale = image_yscale;
			with (anim)
				sprite_index = spr_yheart_shot_hit3;
			instance_destroy();
		}
	}
}
