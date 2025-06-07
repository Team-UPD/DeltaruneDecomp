cancollide = 0;
if (global.interact == 0 || collide == 1)
	cancollide = 1;
if (cancollide == 1)
{
	if (abovey == 0)
	{
		if (obj_mainchara.y < y)
		{
			abovey = 1;
			snd_play(snd_noise);
			slide_noise = snd_loop(snd_paper_surf);
			with (obj_mainchara)
			{
				fun = 1;
				sprite_index = spr_krisd_slide;
			}
		}
		if (obj_mainchara.y > y)
			abovey = -1;
	}
	collide = 1;
	global.interact = 1;
	other.y += 12;
	collidetimer = 3;
	collider += 1;
	if (slidetimer == 0 && abovey == 1)
	{
		dust = instance_create(obj_mainchara.x + 20, obj_mainchara.y + 30, obj_slidedust);
		with (dust)
		{
			vspeed = -6;
			hspeed = -1 + random(2);
		}
		slidetimer = -6;
	}
	slidetimer += 1;
}
