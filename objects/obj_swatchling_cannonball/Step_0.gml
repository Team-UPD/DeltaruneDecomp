if (!heart_found && instance_exists(obj_heart))
{
	if (instance_exists(obj_heart))
	{
		nexttarget = obj_heart.x;
		heart_found = true;
	}
}
if (phase == 0)
{
	active = 0;
	if (trackplayer == 0)
	{
		if (instance_exists(obj_heart))
		{
			nexttarget = obj_heart.x;
			heart_found = true;
		}
	}
	defaultdepth = depth;
	depth = obj_growtangle.depth + 1;
	phase++;
	hspeed = -7;
	if (ystart > obj_growtangle.y)
		hspeed = -4;
	gravity = -0.5;
}
else if (phase == 1)
{
	if (image_xscale > 0.5)
		image_xscale -= 0.02;
	if (image_yscale > 0.5)
		image_yscale -= 0.02;
	if (y < jumppeak)
	{
		gravity = 0.5;
	}
	else if (vspeed <= -6)
	{
		gravity = 0;
		vspeed = -6;
	}
	else if (y > jumppeak)
	{
		gravity = -0.5;
	}
	if (((heart_found && trackplayer == 0 && x <= (obj_heart.x + 50)) || (trackplayer != 0 && x <= (nexttarget + 50))) && y < (obj_growtangle.y - 80))
	{
		phase++;
		hspeed++;
		sprite_index = spr_swatchling_blue_cannonball;
		image_xscale = 0.5;
		image_yscale = 0.5;
		active = 1;
		gravity = 0.5 / bouncepower;
		bouncespecial = 1;
	}
}
else if (phase == 2)
{
	if (depth > obj_growtangle.depth && vspeed >= 0)
	{
		depth = defaultdepth;
		defaultdepth = global.monsterinstance[creator].depth;
	}
	image_angle += currentrotation;
	if ((y + vspeed) > bouncepoint)
	{
		bouncespecial = 0;
		y = bouncepoint;
		randomdirection = random(45);
		if (obj_swatchling_battle_controller.yellow_count > 0)
		{
			with (obj_swatchling_platter)
			{
				if (timer < 0)
					timer = 0;
				opened = true;
			}
		}
		else if (spawnbullets)
		{
			for (i = 0; i < 4; i++)
			{
				d = scr_childbullet(x, y + 10, obj_swatchling_cannonball_bullet);
				d.grazepoints = childgraze;
				d.sprite_index = spr_swatchling_bluestar;
				d.speed = 5;
				d.direction = randomdirection;
				randomdirection += 90;
			}
		}
		var airtime = sqrt((2 * (y - jumppeak)) / gravity) + sqrt((2 * (ystart - jumppeak)) / gravity);
		if ((airtime + 20) > global.turntimer)
		{
			phase++;
			vspeed = -sqrt(gravity * 2 * (y - jumppeak));
			hspeed = (xstart - x) / airtime;
			currentrotation = image_angle % 360;
			nexttarget = x;
			if (global.turntimer < airtime)
				global.turntimer = airtime;
		}
		else
		{
			vspeed = -(10 + random(3)) * bouncepower;
			if (trackplayer == 0)
				nexttarget = obj_heart.x;
			else
				nexttarget = (obj_growtangle.x - (obj_growtangle.sprite_width / 2)) + random(obj_growtangle.sprite_width);
			var arctime = (-vspeed / gravity) * 2;
			hspeed = (nexttarget - x) / arctime;
			currentrotation = ((random(4) * 90) / arctime) * -sign(hspeed);
		}
	}
	if (bouncespecial == 1 && hspeed < -1)
		hspeed++;
}
else if (phase == 3)
{
	image_angle = lerp(currentrotation, -360, (x - nexttarget) / (xstart - nexttarget));
	if (x > (xstart - 30) && depth != defaultdepth)
		depth = defaultdepth;
	if (vspeed > 0 && animindex == 0)
	{
		sprite_index = spr_swatchling_blue_cannonball_prepare;
		var _smokeangle = irandom(90);
		for (i = 0; i < 4; i++)
		{
			var _smoke = instance_create(x, y, obj_animation_dx);
			_smoke.image_angle = (i * 90) + _smokeangle;
			_smoke.sprite_index = spr_swatchling_steam;
			_smoke.depth = depth - 1;
			_smoke.image_xscale = 3;
			_smoke.image_yscale = 3;
		}
		image_xscale = 1;
		image_yscale = 1;
		active = 0;
		image_index = 3;
		image_speed = 0;
		animindex = 1;
	}
	if ((x + hspeed) >= xstart || (animindex == 1 && (y + vspeed) > ystart))
	{
		speed = 0;
		gravity = 0;
		x = xstart;
		y = ystart;
		phase++;
		image_angle = 0;
		image_index = 0;
	}
}
else if (phase == 4)
{
	instance_destroy();
}
