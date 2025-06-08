if (init == 0)
{
	if (type == 0)
		sprite_index = spr_spamtonneo_faceAttack_face;
	if (type == 1)
		sprite_index = spr_spamtonneo_faceAttack_eyes;
	if (type == 2)
		sprite_index = spr_spamtonneo_faceAttack_nose;
	if (type == 3)
		sprite_index = spr_spamtonneo_faceAttack_mouth;
	if (!first_time)
		event_user(2);
	if (type >= 1)
	{
		image_index = 1;
		if (hp <= 0)
		{
			broken = 1;
			image_index = 2;
		}
	}
	if (type == 0)
		depth += 10;
	init = 1;
	if (first_time)
	{
		image_alpha = 1;
		xstart = x;
		growtangle_x = obj_growtangle.x;
		x = camerax() + 730;
	}
}
if (first_time)
{
	if (intro_timer == 0)
	{
		x -= smashspeed;
		smashspeed += 0.5;
		if (x < xstart)
		{
			intro_timer = 15;
			if (type == 0)
			{
				scr_shakescreen();
				snd_play(snd_closet_impact);
			}
		}
	}
	if (intro_timer > 0)
	{
		intro_timer--;
		if (intro_timer == 0)
		{
			first_time = false;
			x = xstart;
			if (type == 0)
			{
				intro_timer = -1;
				with (obj_growtangle)
					x = other.growtangle_x;
			}
			event_user(2);
		}
		else
		{
			x = xstart - (sin(pi * (intro_timer / 15)) * 20);
			if (type == 0)
			{
				with (obj_growtangle)
					x = other.growtangle_x - (sin(pi * (other.intro_timer / 15)) * 20);
			}
		}
	}
	if (first_time)
		exit;
}
if (broken == 1 && type != 0 && destroytarget == 0)
{
	with (targ)
		instance_destroy();
	destroytarget = 1;
}
timer++;
if (image_alpha < 1 && global.turntimer > 21)
	image_alpha += 0.1;
if (explodetimer > 0)
{
	var xx = 0;
	var yy = 0;
	if (type == 1)
	{
		xx = 58;
		yy = 32;
	}
	if (type == 2)
	{
		xx = 30;
		yy = 64;
	}
	if (type == 3)
	{
		xx = 48;
		yy = 102;
	}
	if ((explodetimer % 2) == 0)
	{
		cres = instance_create(((x + xx) - 25) + random(50), ((y + yy) - 25) + random(50), obj_boxing_crescent);
		cres.depth = depth - 100;
	}
	explodetimer--;
}
var brokencounter = 0;
with (obj_sneo_faceattack)
{
	if (broken == 1)
		brokencounter++;
}
if (type == 1 && broken == 0)
{
	if (timer == 30 || laserinit == 0)
	{
		brokenmod = brokencounter;
		lasex = -10 + x + 56;
		lasey = y + 32;
		laserdir = point_direction(lasex, lasey, obj_heart.x + 10, obj_heart.y + 10);
		laserinit = 1;
	}
	if (timer >= 30 && (timer % 3) == 0)
	{
		if (global.turntimer > 21)
		{
			laser = instance_create(lasex, lasey, obj_werewire_bullet_lasercircle);
			scr_bullet_inherit(laser);
			laser.my_angle = laserdir;
			if (brokenmod == 2)
				laser.my_angle = laserdir + (brokenmod * random_range(-8, 8));
			laser.my_speed = 7;
			laser.my_accel = 0 + (brokenmod * 0.25);
			laser.image_yscale = 2;
			laser.my_angle_change = 0;
			laser.target = target;
			laser.damage = damage;
			laser.element = 6;
			shootflashtimer = 3;
		}
	}
	if (timer == 50)
		timer = 0 + (brokenmod * 5);
}
if (type == 2 && broken == 0)
{
	if (timer >= 70 && noseinit == 0)
	{
		brokenmod = brokencounter;
		noseinit = 1;
	}
	if (timer >= 80 && (timer % 5) == 0)
	{
		var randomvspeed = random_range(-2, 2);
		for (var i = 0; i < 3; i++)
		{
			bullet = instance_create(x, y, obj_regularbullet);
			scr_bullet_inherit(bullet);
			bullet.sprite_index = spr_spamtonneo_faceAttack_nose_bullet;
			bullet.mask_index = spr_spamtonneo_faceAttack_nose_bullet_mask;
			scr_darksize(bullet);
			bullet.gravity = 0.6;
			bullet.gravity_direction = 180;
			bullet.friction = 0.4;
			bullet.vspeed = -4 + (i * 4.5);
			if (brokenmod == 2)
				bullet.vspeed += randomvspeed;
			bullet.hspeed = -3;
			bullet.target = target;
			bullet.damage = damage;
			bullet.element = 6;
			shootflashtimer = 3;
		}
	}
	if (timer == 90)
		timer = 26 + (brokenmod * 10);
}
if (type == 3 && broken == 0)
{
	if (timer >= 10 && eyesinit == 0)
	{
		eyesinit = 1;
		brokenmod = brokencounter;
	}
	if (timer >= 10)
		image_index = 3;
	if (timer >= 10 && (timer % 6) == 0)
	{
		bullet = instance_create(x + 30, y + 98, obj_regularbullet);
		bullet.sprite_index = spr_spamtonneo_faceAttack_wisp;
		scr_bullet_inherit(bullet);
		bullet.hspeed = random_range(-4, -7);
		bullet.vspeed = random_range(6, -2);
		if (obj_heart.y >= obj_growtangle.y)
			bullet.vspeed += 1;
		bullet.gravity = -0.2;
		bullet.target = target;
		bullet.damage = damage;
		bullet.element = 6;
		shootflashtimer = 3;
	}
	if (timer == 42)
	{
		image_index = 1;
		timer = -40 + (brokenmod * 20);
	}
}
if (scr_debug())
{
	if (keyboard_check_pressed(ord("U")))
	{
		if (type == 1)
			broken = true;
	}
	if (keyboard_check_pressed(ord("I")))
	{
		if (type == 2)
			broken = true;
	}
	if (keyboard_check_pressed(ord("O")))
	{
		if (type == 3)
			broken = true;
	}
}
if ((type == 1 || type == 2) && broken == 1)
	image_index = 2;
if (type == 3 && broken == 1)
	image_index = 4;
