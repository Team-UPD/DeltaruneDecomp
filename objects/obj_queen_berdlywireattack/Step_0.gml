if (hangcon == 1)
{
	hangvspeed -= (1 * m);
	hangy += hangvspeed;
	if ((y + hangy) <= (__view_get(e__VW.YView, 0) + 60))
	{
		hangcon = 2;
		hangtimer = 0;
	}
}
if (hangcon == 2)
{
	hangy += hangvspeed;
	if (abs(hangvspeed) >= 0)
		hangvspeed *= 0.5;
	if (abs(hangvspeed) <= 1)
	{
		hangvspeed = 0;
		hangcon = 3;
	}
}
if (hangcon >= 1 && hangcon <= 3)
{
	if (xmovement_finished == 0)
	{
		x -= ((x - targetx) / (6 * m));
		if (x <= (targetx + 2))
		{
			x = targetx;
			xmovement_finished = 1;
		}
	}
}
if (hangcon == 3)
{
	if (xmovement_finished == 1)
		hangcon = 4;
}
if (hangcon >= 2 && hangcon < 5 && global.turntimer >= 30)
{
	hangsparktimer++;
	if (hangsparktimer >= 6)
	{
		hangsparktimer = 0;
		shootcount = 0;
		bullet[shootcount] = instance_create(x + hangx, y + hangy + 80, obj_queen_berdlyfeather);
		bullet[shootcount].damage = 5;
		bullet[shootcount].stretch = 0;
		bullet[shootcount].image_speed = 0.2;
		bullet[shootcount].hspeed = -3 + random(6);
		bullet[shootcount].depth = depth - 1;
		bullet[shootcount].vspeed = -9 + random(2);
		bullet[shootcount].gravity = 0.5;
	}
}
if (hangcon == 4)
{
	hangsiner += (1 * m);
	x += (sin(hangsiner / 12) * 3);
	if (global.turntimer <= 20)
		hangcon = 5;
}
if (hangcon == 5)
{
	hangy -= ((hangy - init_hangy) / (8 / m));
	if (hangy >= (init_hangy - 4))
		hangy = init_hangy;
	x -= (((x - remx) / (8 / m)) - 1);
	if (x >= (remx - 1))
		x = remx;
	if (hangy == init_hangy && x == remx)
	{
		hangcon = 0;
		sprite_index = spr_cutscene_25_berdly_plug;
	}
}
if (hangcon == 6)
{
}
