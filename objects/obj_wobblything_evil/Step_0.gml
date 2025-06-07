if (wobbled == 0)
{
	if (instance_exists(obj_mainchara) && global.interact == 0)
	{
		if (obj_mainchara.x > (x - 20) && obj_mainchara.x < (x + 50))
		{
			if (!instance_exists(obj_battlealphaer))
			{
				d = instance_create(0, 0, obj_battlealphaer);
				d.depth = 800000;
			}
			with (obj_mainchara)
			{
				battlemode = 1;
				threebuffer = 2;
			}
			s = snd_play(snd_wobbler);
			snd_pitch(s, 0.5 + random(0.2));
			s2 = snd_play(snd_wobbler);
			snd_pitch(s2, 0.9 + random(0.2));
			image_speed = 0.2;
			wobbled = 1;
			for (i = 0; i < 3; i += 1)
			{
				dbullet = instance_create(x, y, obj_overworld_spade);
				with (dbullet)
				{
					damage = 15;
					sprite_index = spr_wobblebullet;
					image_alpha = 0.7;
					image_xscale = 2;
					image_yscale = 2;
				}
				dbullet.speed = 10;
				dbullet.direction = 250 + (i * 20);
			}
		}
	}
}
