timer++;
if (global.turntimer < 1)
	instance_destroy();
if (wallcount < wallcountmax && timer == wallcreatetimer[wallcount])
{
	for (i = 0; i < wallsize; i++)
	{
		if (i == 0 || i == (wallsize - 1))
		{
			bullet[i] = instance_create(camerax() + camerawidth(), (yy + (__view_get(e__VW.HView, 0) / 2) + (i * 34)) - 172, obj_sneo_wallbullet_new);
			bullet[i].sprite_index = spr_sneo_bullet_box;
			bullet[i].image_xscale = 1.25;
			bullet[i].image_yscale = 1.6;
			bullet[i].destroyable = 0;
			bullet[i].image_blend = c_white;
			bullet[i].wallnumber = wallcount;
			if (i == 0)
				bullet[i].wallcontroller = 1;
			if (i == (wallsize - 1))
			{
				bullet[i] = instance_create((camerax() + camerawidth()) - 50, (yy + (__view_get(e__VW.HView, 0) / 2) + (i * 34)) - 180, obj_sneo_wallbullet_new);
				bullet[i].sprite_index = spr_sneo_wall_car;
				bullet[i].image_xscale = 1.25;
				bullet[i].image_yscale = 1.6;
				bullet[i].destroyable = 0;
				bullet[i].image_blend = c_white;
				bullet[i].depth = depth - 1;
				bullet[i].wallnumber = wallcount;
			}
		}
		else if (emptyspot1[wallcount] == i || emptyspot2[wallcount] == i || emptyspot3[wallcount] == i || emptyspot4[wallcount] == i || emptyspot5[wallcount] == i)
		{
		}
		else if (pipispot1[wallcount] == i || pipispot2[wallcount] == i || pipispot3[wallcount] == i || pipispot4[wallcount] == i || pipispot5[wallcount] == i)
		{
			bullet[i] = instance_create(camerax() + camerawidth(), (yy + (__view_get(e__VW.HView, 0) / 2) + (i * 34)) - 170, obj_sneo_rotatingwall_bomb);
			bullet[i].wallnumber = wallcount;
		}
		else
		{
			bullet[i] = instance_create(camerax() + camerawidth(), (yy + (__view_get(e__VW.HView, 0) / 2) + (i * 34)) - 172, obj_sneo_wallbullet_new);
			bullet[i].sprite_index = spr_sneo_mail;
			bullet[i].image_xscale = 1.2;
			bullet[i].image_yscale = 1.71;
			bullet[i].destroyable = 0;
			bullet[i].wallnumber = wallcount;
			if (breakspot1[wallcount] == i || breakspot2[wallcount] == i || breakspot3[wallcount] == i || breakspot4[wallcount] == i || breakspot5[wallcount] == i)
			{
				bullet[i].destroyable = 1;
				bullet[i].sprite_index = spr_sneo_crew;
				bullet[i].image_speed = 0.5;
				bullet[i].image_yscale = 1.2;
			}
			else if (redbreakspot1[wallcount] == i || redbreakspot2[wallcount] == i || redbreakspot3[wallcount] == i || redbreakspot4[wallcount] == i || redbreakspot5[wallcount] == i)
			{
				bullet[i].destroyable = 1;
				bullet[i].red = 1;
				bullet[i].sprite_index = spr_sneo_crew;
				bullet[i].image_speed = 0.5;
				bullet[i].image_yscale = 1.2;
				bullet[i].image_blend = c_red;
			}
			else
			{
				bullet[i].image_blend = c_white;
			}
		}
	}
	timer = 0;
	wallcount++;
}
timer2++;
if (difficulty == 0)
{
}
if (difficulty == 1)
{
}
