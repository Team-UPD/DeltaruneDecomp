scr_depth();
targetx = (obj_mainchara.x + (obj_mainchara.sprite_width / 2)) - (sprite_width / 2);
targety = (obj_mainchara.y + (obj_mainchara.sprite_height / 2)) - (sprite_height / 2);
if (global.interact == 0)
	frozen = 0;
if (scr_outside_camera(200) && offscreen_frozen == 1)
	frozen = 1;
else
	frozen = 0;
if (global.interact != 0)
	frozen = 1;
if (frozen == 1)
{
	if (hadfrozen == 0)
	{
		remspeed = speed;
		speed = 0;
		hadfrozen = 1;
	}
}
if (frozen == 0)
{
	if (hadfrozen == 1)
	{
		if (speed == 0)
			speed = remspeed;
		hadfrozen = 0;
	}
	if (pacecon == 0)
	{
		pacetimer += 1;
		if (pacetype == 0)
		{
		}
		if (pacetype == 1)
		{
			if (pacetimer == 10)
				hspeed = 2;
			if (pacetimer == 34)
				hspeed = 0;
			if (pacetimer == 50)
				hspeed = -2;
			if (pacetimer == 74)
				hspeed = 0;
			if (pacetimer == 80)
				pacetimer = 0;
		}
		if (pacetype == 2)
		{
			hspeed = sin(pacetimer / 24) * 4;
			vspeed = cos(pacetimer / 24) * 4;
		}
		if (pacetype == 5)
		{
			if (pacetimer == 1)
				vspeed = 6;
			if (pacetimer == 25)
				vspeed = -6;
			if (y < ystart)
				pacetimer = 0;
		}
		if (pacetype == 6)
		{
			cancelwalk = 1;
			walk_index += 0.25;
		}
		if (pacetype == 7)
			hspeed = -sin(pacetimer / 30) * 10;
		if (pacetype == 7.5)
			hspeed = sin(pacetimer / 30) * 10;
		if (pacetype == 8)
			vspeed = -sin(pacetimer / 25) * 12.5;
		if (pacetype == 9)
		{
			hspeed = sin(pacetimer / (pacespeed * 30)) * (moveradius / 20);
			pacespeed = 0.8;
		}
		if (pacetype == 10)
		{
			if (pacecon2 == 0)
			{
				if (vspeed > 0)
					vspeed *= 0.9;
				if (vspeed <= 0.5 && pacecon2 == 0)
					pacecon2 = 1;
			}
			if (pacecon2 == 1)
				move_towards_point(obj_mainchara.x, obj_mainchara.y, 4);
		}
	}
	if (alertcon == 0)
	{
		alerttimer += 1;
		if (alerttimer >= 6)
		{
			alerttimer -= 6;
			if (distance_to_point(targetx + (sprite_width / 2), targety + (sprite_height / 2)) <= radius)
			{
				speed = 0;
				pacecon = 1;
				alerttimer = 0;
				alertcon = 1;
				snd_play(snd_b);
				instance_create(x + (sprite_width / 2), y - 20, obj_excblcon);
				alarm[4] = 20;
			}
		}
	}
	if (alertcon == 2)
	{
		if (chasetype == 0)
		{
			if (speed < 4)
				speed = 4;
			if (speed < 7)
				speed += 0.5;
			move_towards_point(targetx, targety, speed);
		}
		if (chasetype == 1)
		{
			if (alerttimer == 0)
				move_towards_point(targetx, targety, 10);
			alerttimer += 1;
			if (alerttimer >= 20)
				speed *= 0.75;
			if (alerttimer >= 25)
				speed = 0;
			if (alerttimer >= 27)
				alerttimer = 0;
		}
		if (chasetype == 2)
		{
			if (alerttimer == 0)
			{
				xnext = 0;
				ynext = 0;
				if (right_h())
					xnext = 132;
				if (left_h())
					xnext = -132;
				if (down_h())
					ynext = 132;
				if (up_h())
					ynext = -132;
				move_towards_point(targetx + xnext, targety + ynext, 10);
			}
			alerttimer += 1;
			if (alerttimer >= 20)
				speed *= 0.75;
			if (alerttimer >= 25)
				speed = 0;
			if (alerttimer >= 27)
				alerttimer = 0;
		}
		if (chasetype == 3)
		{
			if (speed < 2)
				speed = 2;
			if (speed < 4)
				speed += 0.5;
			move_towards_point(targetx, targety, speed);
		}
		if (chasetype == 4)
		{
			if (speed < 6)
				speed = 6;
			if (speed < 14)
				speed += 0.5;
			move_towards_point(targetx, targety, speed);
		}
	}
	facetimer += 1;
	if (facetimer >= 10)
	{
		if (hspeed <= -0.2 && facing == 1)
		{
			facing = 0;
			facetimer = 0;
		}
		if (hspeed >= 0.2 && facing == 0)
		{
			facing = 1;
			facetimer = 0;
		}
	}
	if (cancelwalk == 0)
	{
		walk_index += (speed / 20);
		if (speed == 0)
			walk_index = 0;
	}
}
