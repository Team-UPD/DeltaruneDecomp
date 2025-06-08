bouncethisframe = 0;
if (initas == 0)
{
	image_alpha = 0;
	turnfreeze = 0;
	initas = 1;
	turndir = "right";
	drawx = x;
	drawy = y;
	moved = 0;
}
if (blockedstart == false)
{
	if (con == 0)
	{
		image_alpha += 0.25;
		y += 4;
		if (image_alpha >= 1.5)
		{
			image_alpha = 1;
			con = 1;
			y = ystart + 40;
		}
	}
	if (con == 1)
	{
		timer++;
		if (timer >= 2)
		{
			moved = 1;
			breakcount = 0;
			remdir = direction;
			while (breakcount < 4)
			{
				mx = lengthdir_x(40, direction);
				my = lengthdir_y(40, direction);
				blockcheck = instance_place(x + mx, y + my, obj_holemouse_block_counterclockwise);
				if (blockcheck == -4)
					blockcheck = instance_place(x + mx, y + my, obj_holemouse_invis_clockwise);
				if (blockcheck == -4)
					blockcheck = instance_place(x + mx, y + my, obj_holemouse_block_clockwise_moveable);
				if (blockcheck != -4)
				{
					blockcheck.flash = 1;
					blockcheck.flashtimer = 0;
					if (blockcheck.orientation == "left")
					{
						direction += 90;
						turndir = "left";
					}
					if (blockcheck.orientation == "right")
					{
						direction -= 90;
						turndir = "right";
					}
					if (direction >= 360)
						direction -= 360;
					if (direction < 0)
						direction += 360;
					breakcount++;
					if (direction == (remdir - 180) || direction == (remdir + 180))
						direction += 90;
					if (breakcount == 4)
					{
						direction = remdir + 180;
						if (direction > 360)
							direction -= 360;
						mx = lengthdir_x(40, direction);
						my = lengthdir_y(40, direction);
					}
					turnfx = scr_afterimage();
					turnfx.image_angle = direction;
					turnfx.sprite_index = spr_holemouse_turnrightfx;
					turnfx.image_index = 0;
					turnfx.x += 20;
					turnfx.y += 20;
					if (turndir == "right")
						turnfx.image_index = 1;
				}
				else
				{
					breakcount = 4;
				}
			}
			if (remdir != direction && turnfreeze <= 0)
				turnfreeze = 2;
			turnfreeze--;
			if (turnfreeze <= 0)
			{
				x += mx;
				y += my;
			}
			timer = 0;
		}
	}
	if (con == 2)
	{
		depth += 1;
		y -= 4;
		image_alpha -= 0.25;
		deathtimer++;
		if (deathtimer >= 3)
			instance_destroy();
	}
	if (x > (room_width + 40) || x < -40 || y > (room_height + 40) || y < -40)
		instance_destroy();
}
if (blockedstart == true)
{
	timer++;
	if (timer == 10)
		instance_destroy();
}
if (con == 1)
{
	lifespan--;
	if (lifespan < 1)
	{
		image_alpha *= 0.9;
		if (image_alpha < 0.05)
			instance_destroy();
	}
}
if (x < camerax() || x > (camerax() + 640) || y < cameray() || y > (cameray() + 480) || x < (0 - (sprite_width * 2)) || x > (room_width + (sprite_width * 2)) || y > (room_height + (sprite_height * 2)) || y < (0 - (sprite_height * 2)))
	instance_destroy();
if (con == 5)
{
	if (bouncecon == 0)
	{
		depth = 5000;
		if (room == room_dw_city_mice)
		{
			if (obj_controller_dw_city_mice.noelleScared <= 0)
			{
				bounceTargetX = 320;
				bounceTargetY = 320;
				bounceTargetDir = 180;
			}
			else
			{
				bounceTargetX = 485;
				bounceTargetY = 320;
				bounceTargetDir = 90;
			}
		}
		if (room == room_dw_city_mice2)
		{
			bounceTargetX = 400;
			bounceTargetY = 222;
			bounceTargetDir = 180;
		}
		customSprite = spr_holemouse_exit;
		bouncelength = 15;
		snd_play(snd_jump);
		fakeYSpeed = -bouncelength;
		scr_move_to_point_over_time(bounceTargetX, bounceTargetY, bouncelength);
		bouncetimer = 0;
		bouncecon = 1;
	}
	if (bouncecon == 1)
	{
		fakeY += fakeYSpeed;
		fakeYSpeed += 2;
		bouncetimer++;
		if ((bouncetimer % 2) == 0)
		{
			hafterimage = scr_afterimage();
			hafterimage.sprite_index = spr_heartsmall;
			hafterimage.vspeed = -4 - random(2);
			hafterimage.hspeed = 4 - random(8);
			hafterimage.image_xscale = 1;
			hafterimage.image_yscale = 1;
			hafterimage.friction = 0.5;
			hafterimage.x += 10 + random(20);
			hafterimage.y += 10 + random(20) + fakeY;
		}
		if (bouncetimer >= (bouncelength + 1))
		{
			x = bounceTargetX;
			y = bounceTargetY;
			fakeY = 1;
			fakeYSpeed = 0;
			bouncecon = 2;
			bouncetimer = 0;
			depth = 900000;
		}
	}
	if (bouncecon == 2)
	{
		bouncetimer++;
		depth++;
		direction = bounceTargetDir;
		if (direction != 90)
			customSprite = spr_holemouse;
		if (bouncetimer >= 2)
		{
			x += lengthdir_x(4, direction);
			y += lengthdir_y(4, direction);
		}
		if (bouncetimer >= 6)
		{
			y = bounceTargetY;
			x = bounceTargetX;
			con = 1;
			if (room == room_dw_city_mice)
				nointeract = false;
			direction = bounceTargetDir;
		}
	}
}
