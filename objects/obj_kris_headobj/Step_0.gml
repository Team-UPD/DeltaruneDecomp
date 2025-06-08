if (breakcon == 1)
{
	breaktimer = 0;
	scr_oflash();
	breakcon = 2;
}
if (breakcon == 2)
{
	breaktimer++;
	if (breaktimer >= 4)
	{
		snd_play(snd_sparkle_glock);
		image_alpha = 0;
		breakcon = 3;
		for (var i = 0; i < 30; i++)
		{
			sparkle[i] = scr_marker(x + random_range(-15, 15), y + random_range(-15, 15), spr_sparestar_anim);
			sparkle[i].image_speed = 0.5;
			sparkle[i].hspeed = random_range(-3, 3);
			sparkle[i].friction = 0.05;
			sparkle[i].gravity = -0.1;
		}
	}
}
if (i_ex(obj_room_dw_city_postbaseball))
{
	if (obj_room_dw_city_postbaseball.minigame == 1)
	{
		if (mousefailcon == 1 && global.interact == 0)
		{
			global.interact = 1;
			global.facing = 1;
			obj_mainchara.fun = 1;
			obj_mainchara.sprite_index = spr_krisb_defeat;
			yoffset = 0;
			sprite_index = spr_mousefunnel_tilted;
			snd_play(snd_noise);
			if (miceheld > 0)
			{
				var mousedrop = clamp(10, 1, miceheld);
				for (var i = 0; i < mousedrop; i++)
				{
					miceheld--;
					var mousepart = instance_create(x, y, obj_afterimage);
					mousepart.sprite_index = spr_holemouse_emerge;
					scr_darksize(mousepart);
					mousepart.image_alpha = 2;
					with (mousepart)
						scr_jump_to_point(x + random_range(-40, 40), room_height + (sprite_height * 2), 20, 16);
				}
			}
			mousefailcon++;
			mousetimer = 0;
		}
		if (mousefailcon == 2)
		{
			mousetimer++;
			if (i_ex(obj_city_cyberballoon_mouse))
				mousetimer = 0;
			if (mousetimer >= 25)
			{
				obj_mainchara.fun = 0;
				global.interact = 0;
				yoffset = 0;
				sprite_index = spr_mousefunnel;
				mousefailcon = 0;
			}
		}
	}
	else
	{
		mousefailcon = 0;
	}
}
