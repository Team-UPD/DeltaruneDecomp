if (type < 3)
	timer++;
else
	timer += sinespeed;
if (sinespeed != sinetargetspeed)
	sinespeed = scr_movetowards(sinespeed, sinetargetspeed, 0.05);
if (sinetargetspeed < 0)
	exit;
if (type == 0)
{
	if (timer >= 25)
	{
		wallsize = 4;
		breakspot = floor(random(wallsize));
		wallamt = 1;
		if (floor(random(6)) == 0)
			wallamt = 4;
		for (j = 0; j < wallamt; j++)
		{
			for (i = 0; i < wallsize; i++)
			{
				bullet[i] = instance_create(xx + 470 + (25 * j), (yy + (__view_get(e__VW.HView, 0) / 2) + (i * 25)) - 100, obj_basicbullet_sneo);
				bullet[i].sprite_index = spr_sneo_bullet_box;
				bullet[i].image_xscale = 1;
				bullet[i].image_yscale = 1.2;
				bullet[i].hspeed = -1;
				bullet[i].friction = -0.1;
				if (breakspot == i)
				{
					bullet[i].destroyable = 1;
					bullet[i].sprite_index = spr_sneo_crew;
					bullet[i].image_speed = 0.5;
					bullet[i].image_yscale = 1;
				}
			}
		}
		timer = 0 - ((wallamt - 1) * 8);
	}
}
if (type == 1)
{
	if (timer >= 25)
	{
		breakspot1 = choose(1, 2, 3);
		breakspot2 = choose(0, 4, 5);
		wallsize = 6;
		wallamt = 1;
		vspeed = choose(1.2, 0, 0, -2, -1.2, 2);
		if (floor(random(6)) == 0)
		{
			wallamt = 2;
			if (vspeed == 0)
				wallamt = 3;
		}
		for (j = 0; j < wallamt; j++)
		{
			for (i = 0; i < wallsize; i++)
			{
				bullet[i] = instance_create(xx + 470 + (25 * j), (yy + (__view_get(e__VW.HView, 0) / 2) + (i * 25)) - 100 - 25, obj_sneo_wallbullet);
				bullet[i].sprite_index = spr_sneo_bullet_box;
				bullet[i].image_xscale = 1;
				bullet[i].image_yscale = 1.2;
				bullet[i].hspeed = -1;
				bullet[i].falsevspeed = vspeed;
				bullet[i].loop = 1;
				bullet[i].friction = -0.1;
				if (breakspot1 == i || breakspot2 == i)
				{
					bullet[i].destroyable = 1;
					bullet[i].image_blend = #00A2E8;
					bullet[i].sprite_index = spr_sneo_crew;
					bullet[i].image_speed = 0.5;
					bullet[i].image_yscale = 1;
				}
			}
		}
		timer = 0 - ((wallamt - 1) * 8);
	}
}
if (type == 2)
{
	if (timer >= 25)
	{
		breakspot1 = choose(1, 2, 3);
		breakspot2 = choose(0, 4);
		wallsize = 5;
		wallamt = 1;
		vspeed = choose(1.2, 0, 0, -2, -1.2, 2);
		if (floor(random(6)) == 0)
		{
			wallamt = 2;
			if (vspeed == 0)
				wallamt = 3;
		}
		for (j = 0; j < wallamt; j++)
		{
			for (i = 0; i < wallsize; i++)
			{
				bullet[i] = instance_create(xx + 470 + (25 * j), (yy + (__view_get(e__VW.HView, 0) / 2) + (i * 30)) - 100 - 30, obj_sneo_wallbullet);
				bullet[i].sprite_index = spr_sneo_bullet_box;
				bullet[i].image_xscale = 1;
				bullet[i].image_yscale = 1.5;
				bullet[i].hspeed = -1;
				bullet[i].falsevspeed = vspeed;
				bullet[i].loop = 1;
				bullet[i].friction = -0.1;
				if (breakspot1 == i || breakspot2 == i)
				{
					bullet[i].destroyable = 1;
					bullet[i].image_blend = #00A2E8;
					bullet[i].sprite_index = spr_sneo_crew;
					bullet[i].image_speed = 0.5;
					bullet[i].image_yscale = 1;
				}
			}
		}
		timer = 0 - ((wallamt - 1) * 8);
	}
}
if (init == 0 && type == 3)
{
	for (j = 0; j < spawncount; j++)
	{
		for (i = 0; i < 2; i++)
		{
			bullet[i] = instance_create(obj_growtangle.x + 150, (yy + (__view_get(e__VW.HView, 0) / 2) + (i * 5 * 40)) - 170, obj_sneo_staticwall);
			bullet[i].sprite_index = spr_sneo_bullet_box;
			bullet[i].image_xscale = 1.25;
			bullet[i].image_yscale = 1.6;
			bullet[i].siner = waittime * j;
		}
	}
	init = 1;
}
if (type == 3)
{
	if (timer >= waittime && made < spawncount)
	{
		if (breakspotpreviouscon > 3)
			breakspotpreviouscon = 0;
		if (breakspotpreviouscon == 0 || breakspotpreviouscon == 1)
		{
			breakspotconsecutive = 2 + irandom(2);
			if (breakspotpreviouscon == 0)
			{
				vspeed = -1.5;
				breakspot1 = breakspotconsecutive - 1;
				breakspot2 = breakspotconsecutive;
				breakspot3 = breakspotconsecutive + 2;
				breakspot4 = breakspotconsecutive + 3;
			}
			if (breakspotpreviouscon == 1)
			{
				vspeed = 2;
				breakspotconsecutive = irandom(2);
				breakspot1 = breakspotconsecutive;
				breakspot2 = breakspotconsecutive + 1;
				breakspot3 = breakspotconsecutive + 3;
				breakspot4 = breakspotconsecutive + 4;
			}
		}
		if (breakspotpreviouscon == 2 || breakspotpreviouscon == 3)
		{
			breakspotconsecutive = 1 + irandom(4);
			vspeed = 0;
			var a = irandom(1);
			breakspot1 = 1 + a;
			breakspot2 = 2 + a;
			breakspot3 = 3 + a;
			breakspot4 = 2 + a;
			if (breakspotpreviouscon == 3)
			{
				breakspot1 = 3 + a;
				breakspot2 = 4 + a;
				breakspot3 = 5 + a;
				breakspot4 = 4 + a;
			}
		}
		breakspotpreviouscon++;
		breakspotpreviouscon++;
		wallsize = 7;
		wallamt = 1;
		if (irandom(5) == 0)
		{
			wallamt = 2;
			if (vspeed == 1)
				wallamt = 3;
		}
		var sineroffset = (timer - waittime) + scr_movetowards(sinespeed, sinetargetspeed, 0.05);
		for (i = 0; i < wallsize; i++)
		{
			bullet[i] = instance_create(obj_growtangle.x + 150, (yy + (__view_get(e__VW.HView, 0) / 2) + (i * 30)) - 100 - 60, obj_sneo_wallbullet);
			bullet[i].sprite_index = spr_sneo_mail;
			bullet[i].image_xscale = 1;
			bullet[i].image_yscale = 1.5;
			bullet[i].falsevspeed = vspeed;
			bullet[i].loop = 1;
			bullet[i].siner = sineroffset;
			if (breakspot1 == i || breakspot2 == i || breakspot3 == i || breakspot4 == i)
			{
				bullet[i].destroyable = 1;
				bullet[i].sprite_index = spr_sneo_crew_ez_hitbox;
				bullet[i].image_speed = 0.5;
				bullet[i].image_yscale = 1;
			}
		}
		timer -= waittime;
		made++;
	}
	if (difficulty == 2)
	{
		lilguytimer++;
		if (lilguytimer == 55)
		{
			instance_create(x, y, obj_sneo_guymaker);
			obj_sneo_guymaker.alarm[0] = 30;
		}
	}
}
if (type == 4)
{
	for (j = 0; j < spawncount; j++)
	{
		breakspot1 = choose(1, 2, 3);
		breakspot2 = choose(0, 4);
		wallsize = 5;
		wallamt = 1;
		vspeed = choose(1.2, 0, -2, -1.2, 2);
		if (irandom(5) == 0)
		{
			wallamt = 2;
			if (vspeed == 1)
				wallamt = 3;
		}
		for (i = 0; i < wallsize; i++)
		{
			bullet[i] = instance_create(obj_growtangle.x + 150, (yy + (__view_get(e__VW.HView, 0) / 2) + (i * 30)) - 100 - 30, obj_sneo_wallbullet);
			bullet[i].sprite_index = spr_sneo_bullet_box;
			bullet[i].image_xscale = 1;
			bullet[i].image_yscale = 1.5;
			bullet[i].falsevspeed = vspeed;
			bullet[i].siner = (j / spawncount) * 2 * pi * 20;
			bullet[i].loop = 1;
			if (breakspot1 == i || breakspot2 == i)
			{
				bullet[i].destroyable = 1;
				bullet[i].sprite_index = spr_sneo_crew;
				bullet[i].image_speed = 0.5;
				bullet[i].image_yscale = 1;
				bullet[i].image_blend = #00A2E8;
			}
		}
		type = 99;
	}
}
