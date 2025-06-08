scr_depth();
if (walkdir == "down" && y >= (room_height + 30))
	endme = 1;
if (walkdir == "right" && x >= (room_width + (sprite_width * 2)))
	endme = 1;
if (walkdir == "left" && x <= (0 - (sprite_width * 2)))
	endme = 1;
if (place_meeting(x, y, obj_solidenemy_2))
	endme = 1;
if ((global.interact == 0 || i_ex(obj_cutscene_master)) && active == 1)
{
	if (alwayswalking == 1)
		walking = 1;
	if (walkdir == "down")
	{
		if (walking == 0)
			y += myspeed;
		if (walking == 1)
		{
			if (alwayswalking == 0)
				y += (myspeed / 4);
		}
		if (alwayswalking == 1)
			y += myspeed;
	}
	if (walkdir == "left")
	{
		if (walking == 0)
			x -= myspeed;
		if (walking == 1)
			x -= (myspeed / 4);
	}
	if (walkdir == "right")
	{
		if (walking == 0)
			x += myspeed;
		if (walking == 1)
			x += (myspeed / 4);
	}
}
if (touchcon == 1)
{
	with (obj_traffic_switch)
	{
		if (room == room_dw_mansion_traffic)
		{
			if (timefactor < 45)
				timefactor++;
		}
	}
	touchtimer = 0;
	spintimer = 0;
	touchcon = 2;
	snd_play(snd_cardrive);
	with (obj_mainchara)
		image_alpha = 0.5;
	if (instance_exists(obj_noelle_city_traffic_2) && instance_exists(obj_caterpillarchara))
	{
		obj_caterpillarchara.x = obj_noelle_city_traffic_2.x;
		obj_caterpillarchara.y = obj_noelle_city_traffic_2.y;
		if (obj_caterpillarchara.name == "noelle")
			obj_caterpillarchara.sprite_index = spr_noelle_shocked_dw;
		with (obj_noelle_city_traffic_2)
			instance_destroy();
	}
	with (obj_caterpillarchara)
	{
		if (image_alpha >= 0.5)
			image_alpha = 0.5;
	}
	global.facing = 0;
	scr_move_to_charmarker(-1, 0, 30);
}
if (touchcon == 2)
{
	touchtimer++;
	spintimer++;
	if (spintimer >= 4)
	{
		if (global.facing == 2)
			global.facing = 3;
		if (global.facing == 1)
			global.facing = 2;
		if (global.facing == 0)
			global.facing = 1;
		else if (global.facing == 3)
			global.facing = 0;
		spintimer = 0;
	}
	if (touchtimer >= 30)
	{
		touchtimer = 0;
		touchcon = 0;
		with (obj_mainchara)
			image_alpha = 1;
		with (obj_caterpillarchara)
		{
			if (image_alpha == 0.5)
				image_alpha = 1;
		}
		global.facing = 0;
		global.interact = 0;
	}
}
buffer--;
if (scr_debug())
{
}
if (active == 0 && madeblock == 0)
{
	myblock = instance_create(bbox_left, bbox_top, obj_soliddark);
	myblock.image_xscale = (bbox_right - bbox_left) / 40;
	myblock.image_yscale = (bbox_bottom - bbox_top) / 40;
	madeblock = 1;
}
if (active == 1 && madeblock == 1)
{
	with (myblock)
		instance_destroy();
	madeblock = 0;
}
if (place_meeting(x, y, obj_carTurner))
{
	if (turned == 0)
	{
		car = instance_create(x, y, obj_traffic_car);
		with (car)
		{
			myspeed = other.myspeed;
			walkdir = "right";
			remspeed = other.remspeed;
			group = other.group;
			walking = other.walking;
			active = other.active;
			touchcon = other.touchcon;
			touchtimer = other.touchtimer;
			speedadjust = 1;
			turned = 1;
		}
		if (madeblock == 1)
		{
			with (myblock)
				instance_destroy();
		}
		endme = 1;
	}
}
if (endme == 1)
{
	active = 0;
	visible = 0;
	if (touchcon == 0)
	{
		if (madeblock)
		{
			with (myblock)
				instance_destroy();
		}
		instance_destroy();
	}
}
if (speedadjust)
{
	var chardist = distance_to_object(obj_mainchara);
	if (chardist >= 200)
		idealspeed = 24;
	if (chardist < 200)
		idealspeed = max(chardist / 16, 10);
	myspeed = scr_approach(myspeed, idealspeed, 1);
	var carcheck = instance_place(x, y, obj_traffic_car);
	if (carcheck != -4)
	{
		if (carcheck.freshness > freshness)
		{
			y -= 12;
			myspeed -= 12;
			myspeed = clamp(myspeed, 0, 24);
		}
	}
}
