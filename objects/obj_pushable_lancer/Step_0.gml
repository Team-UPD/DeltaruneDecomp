scr_depth();
if (instance_exists(obj_slidedust))
{
	with (obj_slidedust)
		gravity = -1;
}
if (movecourse == 1)
{
	if (movedir == 0 || movedir == 2)
		movetimer = movetimetarget;
	if (movedir == 1)
	{
		x += 2;
		movetimetarget = 20;
		if ((movetimer % 4) == 1)
		{
			dust = instance_create(x + 16, y + sprite_height, obj_slidedust);
			dust.depth = depth + 10;
		}
	}
	if (movedir == 1 && x >= 2018)
	{
		movetimer = movetimetarget;
		x = 2018;
		snd_play(snd_noise);
	}
	if (movedir == 3)
	{
		if (x > 1070)
		{
			x -= 2;
			movetimetarget = 20;
			if ((movetimer % 4) == 1)
			{
				dust = instance_create((x + sprite_width) - 6, y + sprite_height, obj_slidedust);
				dust.depth = depth + 10;
			}
		}
		else
		{
			x -= 1;
			y += 0.5;
			movetimetarget = 40;
			if ((movetimer % 8) == 1)
			{
				dust = instance_create((x + sprite_width) - 6, y + sprite_height, obj_slidedust);
				dust.depth = depth + 10;
			}
		}
	}
	movetimer += 1;
	if (movetimer >= movetimetarget)
	{
		movetimer = 0;
		movecourse = 0;
		if (x <= 1038)
		{
			global.interact = 1;
			x = 1038;
			instance_create(x, y, obj_shake);
			snd_play(snd_locker);
			con = 1;
			timer = 0;
			visible = false;
			interactablelancer = instance_create(1036, 258, obj_npc_room);
			interactablelancer.sprite_index = spr_cutscene_20_lancer_stone_lt;
			interactablelancer.image_speed = 0;
			interactablelancer.image_index = 0;
		}
		else
		{
			global.interact = 0;
		}
	}
}
if (con == 1)
{
	timer++;
	if (timer == 60)
		con = 2;
}
if (myinteract == 3)
{
	if (i_ex(mydialoguer) == false)
	{
		global.interact = 0;
		myinteract = 0;
		with (obj_mainchara)
			onebuffer = 5;
	}
}
if (con == 2)
{
	global.interact = 1;
	sprite_index = spr_cutscene_20_lancer_stone_lt;
	if (spawnplate == 0)
	{
		spawnplate = 1;
		plate = instance_create(1004, -36, obj_marker);
		plate.visible = true;
		plate.direction = 270;
		plate.speed = 12;
		plate.image_xscale = 2;
		plate.image_yscale = 2;
		plate.image_angle = 15;
		plate.sprite_index = spr_plate;
	}
	with (plate)
		scr_depth();
	if (plate.y >= 286)
	{
		snd_play(snd_item);
		plate.y = 294;
		plate.speed = 0;
		plate.image_angle = 0;
		plate.direction = 0;
		con = 3;
	}
}
if (con == 3)
{
	if (spawnfood == 0)
	{
		spawnfood = 1;
		food = instance_create(1018, -28, obj_marker);
		with (food)
		{
			visible = true;
			direction = 270;
			speed = 12;
			image_xscale = 2;
			image_yscale = 2;
			image_angle = -15;
			sprite_index = spr_food;
			depth = other.plate.depth - 10;
		}
	}
	food.image_angle -= 12;
	if (food.y >= 294)
	{
		snd_play(snd_splat);
		food.y = 302;
		food.image_angle = 0;
		food.speed = 0;
		food.direction = 0;
		con = 4;
	}
}
if (con == 4)
{
	if (spawnbib == 0)
	{
		spawnbib = 1;
		bib = instance_create(interactablelancer.x + 20 + 16, -36, obj_marker);
		with (bib)
		{
			visible = true;
			direction = 270;
			speed = 12;
			image_xscale = 2;
			image_yscale = 2;
			image_angle = 150;
			sprite_index = spr_bib;
		}
	}
	bib.image_angle += 8;
	bib.depth = interactablelancer.depth - 50;
	if (bib.y >= 288)
	{
		with (bib)
			instance_destroy();
		interactablelancer.sprite_index = spr_cutscene_20_lancer_stone_bib;
		global.flag[356] = 1;
		global.interact = 0;
		snd_play(snd_equip);
		instance_destroy();
	}
}
