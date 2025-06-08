if (type == 0)
{
	timer++;
	image_alpha += 0.1;
	image_xscale += (sin(timer / 2) * 0.2);
	image_yscale += (sin(timer / 2) * 0.2);
	if (timer >= 30)
	{
		var bulletcount = 16;
		var randodir = random(60);
		for (var i = 0; i < bulletcount; i++)
		{
			shot = instance_create(x, y, obj_overworldbulletparent);
			shot.sprite_index = sprite_index;
			shot.image_xscale = 2;
			shot.image_yscale = 2;
			shot.speed = 1;
			shot.active = 1;
			shot.friction = -0.4;
			shot.target = 3;
			shot.damage = 15;
			shot.direction = ((360 / bulletcount) * i) + randodir;
			if (global.flag[8] == 0)
			{
				shot.image_blend = make_color_hsv(random(255), 120, 255);
				with (shot)
					scr_script_delayed(scr_afterimage_grow, 10);
			}
		}
		snd_play(snd_explosion_firework);
		instance_destroy();
	}
}
if (type == 1)
{
	timer++;
	image_alpha += 0.1;
	image_xscale += (sin(timer / 2) * 0.2);
	image_yscale += (sin(timer / 2) * 0.2);
	if ((dir == "right" && x >= 140) || (dir == "left" && x <= (room_width - 140)))
	{
		var bulletcount = 12;
		var randodir = random(120);
		for (var i = 0; i < bulletcount; i++)
		{
			shot = instance_create(x, y, obj_overworldbulletparent);
			shot.sprite_index = spr_spamtonhead;
			shot.image_speed = 0;
			shot.image_index = choose(0, 0, 0, 1, 1, 1, 2, 3);
			shot.speed = 1;
			shot.active = 1;
			shot.friction = -0.4;
			shot.target = 3;
			shot.damage = 15;
			shot.direction = ((360 / bulletcount) * i) + randodir;
			if (global.flag[8] == 0)
			{
				with (shot)
					scr_script_delayed(scr_afterimage_grow, 10);
			}
		}
		snd_play_pitch(snd_explosion_firework, 1.4);
		instance_destroy();
	}
}
