if (instance_exists(obj_mainchara))
{
	if (loc_check == 0)
	{
		if (room == room_forest_starwalker)
		{
			if (obj_mainchara.x >= (room_width / 2))
				x = 2200;
		}
		loc_check = 1;
	}
	for (i = 5; i > 0; i -= 1)
	{
		char_xcheck[i] = char_xcheck[i - 1];
		char_ycheck[i] = char_ycheck[i - 1];
	}
	char_xcheck[0] = obj_mainchara.x;
	char_ycheck[0] = obj_mainchara.y;
	xcheck_average = ((obj_mainchara.x - char_xcheck[1]) + (obj_mainchara.x - char_xcheck[2]) + (obj_mainchara.x - char_xcheck[3])) / 3;
	if (xcheck_average >= 2 && x >= obj_mainchara.x)
		xcheck_average = 0;
	if (xcheck_average <= -2 && x <= obj_mainchara.x)
		xcheck_average = 0;
	ycheck_average = ((obj_mainchara.y - char_ycheck[1]) + (obj_mainchara.y - char_ycheck[2]) + (obj_mainchara.y - char_ycheck[3])) / 3;
}
if (keyboard_check_pressed(vk_backspace) && beatcon == 89898 && scr_debug())
{
	visible = 0;
	beatcon = 1;
	beattimer = 0;
	with (obj_mainchara)
		battlemode = 0;
	dead = instance_create(x - 92, y - 74, obj_starwalker_battle);
	with (dead)
	{
		walkcon = 1;
		walktimer = 0;
	}
	with (shadow)
		instance_destroy();
}
targetx = obj_mainchara.x + (obj_mainchara.sprite_width / 2);
targety = obj_mainchara.y + (obj_mainchara.sprite_height / 2);
if (mazemode == 0)
{
	if (abs(targetx - x) <= 200 && introcon == 0)
	{
		introcon = 1;
		with (obj_mainchara)
			battlemode = 1;
	}
	if (introcon == 1)
	{
		attackcon = 0;
		vspeed = -2;
		introcon = 2;
	}
	if (introcon == 2)
	{
		attacktimer = 0;
		introtimer += 1;
		if (introtimer >= 20)
		{
			introcon = 3;
			vspeed = 0;
		}
	}
	if (introcon == 3)
	{
		friction = 0.5;
		if (targetx < x)
		{
			if (x <= (targetx + 150))
				hspeed += 1;
			if (x >= (targetx + 250))
				hspeed -= 1;
		}
		if (targetx > x)
		{
			if (x >= (targetx - 150))
				hspeed -= 1;
			if (x <= (targetx - 250))
				hspeed += 1;
		}
	}
}
if (mazemode == 1)
{
	if (targety <= y && introcon == 0)
	{
		introcon = 1;
		with (obj_mainchara)
			battlemode = 1;
	}
	if (introcon == 1)
	{
		attackcon = 0;
		vspeed = -8;
		introcon = 2;
	}
	if (introcon == 2)
	{
		attacktimer = 0;
		introtimer += 1;
		if (introtimer >= 5)
		{
			introcon = 3;
			vspeed = 0;
			attacktimer = 36;
		}
	}
	if (introcon == 3)
	{
		friction = 0.7;
		if (targety < (y - 20))
			vspeed -= 1.5;
		if (targety > (y + 20))
			vspeed += 1.5;
	}
}
if (beatcon == 0)
{
	if (attackcon >= 0)
	{
		if (obj_mainchara.battlemode == 1)
			attacktimer += 1;
	}
	if (attackcon == 0)
	{
		wingtimer += 1;
		if (wingtimer >= 0)
		{
			snd_play(snd_wing);
			wingtimer = -16;
		}
	}
	if (attacktimer >= 42 && attackcon == 0)
	{
		wingtimer = 0;
		shakefactor = 6;
		attackcon = 1;
		if (shot == 1)
		{
			for (i = 0; i < 3; i += 1)
			{
				with (starbullet[i])
					instance_destroy();
			}
		}
	}
	if (attacktimer >= 60 && attackcon == 1)
	{
		snd_play(snd_crow);
		attackcon = 2;
		shot = 1;
		for (i = 0; i < 3; i += 1)
		{
			starbullet[i] = instance_create(x + (17 * xmake), y + 42, obj_overworldbulletparent);
			starbullet[i].sprite_index = spr_starbullet_test;
			starbullet[i].image_xscale = 2;
			starbullet[i].image_yscale = 2;
			starbullet[i].damage = 15;
			starbullet[i].active = 1;
			starbullet[i].target = 3;
			starbullet[i].speed = 10;
			starbullet[i].friction = -0.2;
			starbullet[i].direction = (point_direction(x + (17 * xmake), y + 42, obj_mainchara.x + (xcheck_average * 10) + (obj_mainchara.sprite_width / 2), obj_mainchara.y + (obj_mainchara.sprite_height / 2)) - 17) + (17 * i);
			starbullet[i].depth = 1000;
		}
	}
	if (attacktimer >= 80)
	{
		siner = 0;
		wing_index = 0;
		attackcon = 0;
		attacktimer = 0;
		if (mazemode == 1)
			attacktimer = 38;
	}
}
if (instance_exists(shadow))
{
	if (attackcon == -1)
		shadow.visible = 0;
	else
		shadow.visible = 1;
	if (mazemode == 1)
		shadow.visible = 0;
	shadow.x = x;
	shadow.y = shadowy;
	shadow.sprite_index = spr_starwalker_wings;
	shadow.image_index = wing_index;
	if (attackcon == 1)
	{
		shadow.sprite_index = spr_starwalker_attack;
		shadow.image_index = 0;
		shadow.image_xscale = xmake;
	}
	if (attackcon == 2)
	{
		shadow.sprite_index = spr_starwalker_attack;
		shadow.image_index = 1;
		shadow.image_xscale = xmake;
	}
}
if (beatcon == 1)
{
	with (obj_mainchara)
		battlemode = 0;
	if (global.interact == 0)
	{
		global.interact = 1;
		beattimer = 0;
		beatcon = 2;
	}
}
if (beatcon == 2)
{
	beattimer += 1;
	if (dead.x >= (__view_get(e__VW.XView, 0) + __view_get(e__VW.WView, 0)) && global.interact != 0)
	{
		with (dead)
			instance_destroy();
		global.interact = 0;
		beatcon = 3;
		instance_destroy();
	}
}
