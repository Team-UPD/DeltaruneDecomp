if (introtimer > 24)
{
	if (type < 3)
		timer++;
	else
		timer += sinespeed;
	if (sinespeed != sinetargetspeed)
		sinespeed = scr_movetowards(sinespeed, sinetargetspeed, 0.05);
}
else
{
	introtimer++;
}
if (difficulty == 2)
{
	lilguytimer++;
	if (lilguytimer == 76)
	{
		instance_create(x, y, obj_sneo_guymaker);
		obj_sneo_guymaker.alarm[0] = 30;
	}
	if (lilguytimer == 172)
	{
		instance_create(x, y, obj_sneo_guymaker);
		obj_sneo_guymaker.alarm[0] = 30;
	}
}
if (sinetargetspeed < 0)
	exit;
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
		for (j = 0; j < spawncount; j++)
		{
			if (breakspotpreviouscon > 3)
				breakspotpreviouscon = 0;
			if (breakspotpreviouscon == 0 || breakspotpreviouscon == 1)
			{
				breakspotconsecutive = 2 + irandom(1);
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
					breakspotconsecutive = 1;
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
				bullet[i].siner = waittime * j;
				if (breakspot1 == i || breakspot2 == i || breakspot3 == i || breakspot4 == i)
				{
					bullet[i].destroyable = 1;
					bullet[i].sprite_index = spr_sneo_crew_ez_hitbox;
					bullet[i].image_speed = 0.5;
					bullet[i].image_yscale = 1;
					bullet[i].image_alpha = 0;
				}
			}
			timer -= waittime;
			made++;
		}
	}
}
