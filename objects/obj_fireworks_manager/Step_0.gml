if (is_active)
{
	time += 1;
	var spawn = (time % 60) == 0;
	var _y = room_height * 0.5;
	var _x = current_time % room_width;
	if (global.chapter == 2)
	{
		if (room == room_dw_cyber_post_music_boss_slide)
		{
			if (obj_mainchara.x <= 2320 && obj_mainchara.x > 1080)
			{
				if (i_ex(obj_cyber_shadowMaker_fireworks))
				{
					if (!obj_cyber_shadowMaker_fireworks.is_active)
						obj_cyber_shadowMaker_fireworks.is_active = true;
				}
				spawn = (time % 40) == 0;
				_y = room_height - 220;
				_x = (obj_mainchara.x - 200) + random(100);
			}
			else
			{
				if (i_ex(obj_cyber_shadowMaker_fireworks))
				{
					if (obj_cyber_shadowMaker_fireworks.is_active)
					{
						obj_cyber_shadowMaker_fireworks.is_active = false;
						obj_cyber_shadowMaker_fireworks.inactive_cleanup = true;
					}
				}
				spawn = -1;
			}
		}
		if (room == room_dw_city_postbaseball_1 || room == room_dw_city_postbaseball_2)
		{
			spawn = (time % 50) == 40;
			_y = 800 - random(80);
			_x = max(1000, camerax() + random(640));
			if (_x > (room_width - 200))
				_x = room_width - 200;
			if (right_h())
				_x += 320;
			if (obj_mainchara.y <= 500)
				_y = 300 + random(40);
			if (room == room_dw_city_postbaseball_1)
			{
				if (obj_mainchara.x < 900)
					spawn = 0;
				else
					is_active = 1;
			}
			else
			{
				_y = 300;
				_x = camerax() + random(700) + 200;
			}
			if (global.interact != 0)
				spawn = 0;
		}
	}
	if (spawn)
	{
		var c = instance_create(_x, _y, obj_firework);
		c.mySprite = fireworksprite[fireworkcount];
		fireworkcount++;
		if (fireworkcount > 2)
			fireworkcount = 0;
		c.colorProfile = choose((0 << 0), (2 << 0), (1 << 0));
		if (c.colorProfile == (1 << 0))
			c.image_blend = make_colour_hsv(irandom(255), 100, 255);
	}
}
