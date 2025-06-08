if (init == 0)
{
	visible = 1;
	for (i = 0; i < 3; i++)
	{
		mymonster[i] = 0;
		if (i_ex(global.monsterinstance[i]) && global.monster[i] == 1)
		{
			mymonster[i] = global.monsterinstance[i];
			if (cancatch[i])
			{
				if (mymonster[i].object_index == obj_maus_enemy)
					ismaus[i] = 1;
				if (mymonster[i].sprite_width > biggestwidth)
					biggestwidth = mymonster[i].sprite_width;
				if (mymonster[i].sprite_height > biggestheight)
					biggestheight = mymonster[i].sprite_height;
			}
		}
	}
	image_xscale = (biggestwidth / sprite_width) * 1.2;
	image_yscale = (biggestheight / sprite_height) * 1.2;
	if (image_xscale <= 1)
		image_xscale = 1;
	if (image_yscale <= 1)
		image_yscale = 1;
	siner = random(100);
	y = cameray() - sprite_height;
	x = (camerax() + (camerawidth() / 2)) - (sprite_width / 2);
	basketx = x;
	x += (sin(siner / 5) * 120);
	magnitude = 50;
	var yy = cameray();
	scr_move_to_point_over_time(x, yy + 10, 15);
	for (i = 0; i < 3; i++)
	{
		if (mymonster[i] != 0)
		{
			monstersiner[i] = i * 4;
			monsterhit[i] = 0;
			mymonster[i].__baskety = cameray() + 100 + (70 * i);
			if (scr_monsterpop() == 1)
				mymonster[i].__baskety = cameray() + 240;
			if (cancatch[i])
			{
				monsterx[i] = camerax() + (camerawidth() / 2) + (sprite_width / 2);
				mymonster[i].__monsterx = monsterx[i] - (sin(monstersiner[i] / 7) * magnitude);
				with (mymonster[i])
				{
					scr_rememberxy();
					if (instance_exists(obj_mauswheel_enemy))
						scr_move_to_point_over_time(__monsterx, y, 15);
					else
						scr_move_to_point_over_time(__monsterx, __baskety, 15);
				}
			}
			if (cancatch[i] == 0)
			{
				monsterx[i] = camerax() + camerawidth() + 200;
				with (mymonster[i])
				{
					scr_rememberxy();
					var xx = camerax() + camerawidth() + sprite_width;
					scr_move_to_point_over_time(xx, y, 15);
				}
			}
			monsterhitbox[i] = instance_create((mymonster[i].x + (sprite_width / 2)) - 20, mymonster[i].y + sprite_height, obj_act_hitbox);
			monsterhitbox[i].image_xscale = 2;
			if (mymonster[i].object_index == obj_tasque_enemy)
				monsterhitbox[i].image_xscale = 6;
			monsterhitbox[i].image_yscale = 0.5;
			monsterhitbox[i].visible = false;
			monsterhitbox[i].which = i;
			monsterhitbox[i].parentid = mymonster[i];
		}
	}
	dropped = 0;
	sineradd = 0;
	con = 1;
	alarm[4] = 16;
	init = 1;
}
if (init == 1)
{
	if (con == 2)
	{
		for (i = 0; i < 3; i++)
		{
			if (mymonster[i] > 0)
				mymonster[i].x = monsterx[i];
		}
		con = 3;
	}
	if (con == 3)
	{
		if (sineradd < 0.8)
			sineradd += 0.05;
		if (dropped == 0)
		{
			siner += sineradd;
			x = basketx + (sin(siner / 5) * 120);
			if (button3_p())
			{
				dropped = 1;
				vspeed = 16;
				gravity = 1;
				snd_play(snd_wallclaw);
			}
		}
		if (magnitude < 100)
			magnitude += 5;
		for (i = 0; i < 3; i++)
		{
			if (mymonster[i] > 0)
			{
				if (caught[i] == 1)
				{
					mymonster[i].y = y - 5;
					mymonster[i].x = lerp(mymonster[i].x, x, 0.1);
				}
				if (monsterhit[i] == 0)
				{
					monstersiner[i] += sineradd;
					if (cancatch[i] == 1)
						mymonster[i].x = monsterx[i] - (sin(monstersiner[i] / 7) * magnitude);
					monsterhitbox[i].y = mymonster[i].y + sprite_height;
					monsterhitbox[i].x = (mymonster[i].x + (sprite_width / 2)) - 20;
					if (ismaus[i] == 1)
						monsterhitbox[i].x = (mymonster[i].x + (sprite_width / 2)) - 40;
					if (mymonster[i].object_index == obj_tasque_enemy)
					{
						monsterhitbox[i].x = (mymonster[i].x + (sprite_width / 2)) - 68;
						monsterhitbox[i].y = (mymonster[i].y + sprite_height) - 22;
					}
				}
			}
		}
		if (dropped == 1)
		{
			if (y >= ((cameray() + 300) - sprite_height))
			{
				gravity = 0;
				vspeed = 0;
				con = 4;
				alarm[4] = 15;
			}
		}
	}
}
if (con == 5)
{
	caughttotal = 0;
	for (i = 0; i < 3; i++)
	{
		if (mymonster[i] > 0)
		{
			with (mymonster[i])
				scr_move_to_rememberxy(15);
			if (monsterhit[i] == 1)
			{
				caughttotal++;
				if (instance_exists(obj_mauswheel_enemy))
					scr_mercyadd(i, 5);
				else
					scr_mercyadd(i, 100);
			}
		}
	}
	if (caughttotal == 0)
	{
		with (maker)
			actfailure = 1;
	}
	if (trappingX)
	{
		if (caughttotal < scr_monsterpop())
		{
			with (maker)
				actfailure = 1;
		}
	}
	with (maker)
		actcon = 12;
	with (obj_act_hitbox)
		instance_destroy();
	vspeed = -16;
	con = 6;
}
if (con == 6)
{
	if (y <= -200)
	{
		instance_destroy();
		with (obj_mauswheel_enemy)
		{
			idlesprite = spr_mauswheel_idle;
			x -= 60;
			y -= 66;
		}
		with (obj_maus_trapping_fake_idle)
			instance_destroy();
	}
}
