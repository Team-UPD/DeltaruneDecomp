if (falling == 1)
{
	if (d_ex())
	{
		if (paused == 0)
		{
			remvspeed = vspeed;
			remx = x;
			remy = y;
			paused = 1;
		}
		setxy(remx, remy);
	}
	else
	{
		if (paused == 1)
		{
			vspeed = remvspeed;
			paused = 0;
		}
		vspeed += 0.4;
		vspeed = clamp(vspeed, 0, 8);
	}
	if (i_ex(obj_kris_headobj))
	{
		if (y <= (obj_kris_headobj.bbox_bottom - 20))
			depth = obj_kris_headobj.depth + 100;
		else
			depth = obj_kris_headobj.depth - 100;
	}
	var boxcheck = instance_place(x, y, obj_kris_headobj);
	if (boxcheck >= 100)
	{
		var qualify = 0;
		var xpush = 0;
		if (y >= (boxcheck.bbox_top - 8))
			qualify = 1;
		if (y >= (boxcheck.bbox_bottom - 20))
			qualify = 0;
		if (x <= (boxcheck.bbox_left + 4))
		{
			qualify = 0;
			xpush = -4;
		}
		if (x >= (boxcheck.bbox_right - 4))
		{
			qualify = 0;
			xpush = 4;
		}
		x += xpush;
		if (qualify)
		{
			obj_kris_headobj.miceheld++;
			cloud = scr_afterimage();
			cloud.depth = depth - 200;
			cloud.vspeed = -1 - random(1.4);
			cloud.friction = 0.2;
			cloud.y -= 8;
			cloud.sprite_index = spr_fx_mushroomcloud;
			snd_play(snd_bump);
			snd_play(snd_wing);
			instance_destroy();
		}
	}
	if (y >= ythreshold || y > (cameray() + 480))
	{
		if (balloonid >= 0)
			obj_room_dw_city_postbaseball.balloondestroyed[balloonid] = 1;
		if (obj_kris_headobj.mousefailcon == 0 && obj_room_dw_city_postbaseball.minigame == 1)
			obj_kris_headobj.mousefailcon = 1;
		snd_play(snd_mouse);
		jumper = scr_afterimage();
		with (jumper)
			scr_jump_to_point(x + random_range(-40, 40), room_height + (sprite_height * 2), 20, 16);
		instance_destroy();
	}
}
