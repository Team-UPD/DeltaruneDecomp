if (!instance_exists(obj_sneo_final_forme_hitbox))
	instance_create(x, y, obj_sneo_final_forme_hitbox);
if (intro == 1)
	exit;
formtimer++;
if (grazed == 1)
{
	grazetimer += 1;
	if (grazetimer >= 30)
	{
		grazetimer = 0;
		grazed = 0;
	}
}
if (state < 2)
{
	if (state == 0)
		stepdir = -1;
	if (state == 0 && formtimer >= 25)
		steptimer += 0.05;
	if (steptimer >= pi)
	{
		if (state == 0 && formtimer < 25)
		{
		}
		steptimer -= pi;
		d = instance_exists(obj_shake) ? 196 : instance_create(0, 0, obj_shake);
		d.shakex = ceil(2);
		d.shakey = ceil(2);
		snd_play(snd_screenshake);
		if (state == 1)
			stepdir = 1;
	}
	if (state == 11 && formtimer >= 65)
	{
	}
	else
	{
		y = ystart - (sin(steptimer) * 40);
	}
	if (state == 0 && formtimer < 25)
	{
	}
	else
	{
		x += (1.6 * stepdir);
	}
	if ((destroyable && state == 0 && x > (obj_growtangle.x + 140)) || (state == 1 && formtimer < 30 && x > (obj_growtangle.x + 140)))
	{
		x += (4 * stepdir);
		pushback = 0;
	}
	if (destroyable)
	{
		var _box = obj_sneo_warped_box;
		_box.suckx = min(obj_growtangle.x + 150, x + 106);
		_box.timer = scr_movetowards(_box.timer, clamp(scr_inverselerp(520, obj_growtangle.x + 100, x), 0, 1) * 60, 2);
		_box.upper_sucky = y + 129;
		_box.lower_sucky = y + 159;
	}
	if (pushback > 0)
	{
		x += (pushback * (2/3));
		if (x > (camerax() + 520))
			pushback--;
		else
			pushback--;
	}
	if ((destroyable && state == 0) || (state == 1 && formtimer < 30))
	{
		if (inhalesfx == 0)
		{
			inhalesfx = 1;
			snd_loop(snd_sneo_overpower);
			snd_pitch(snd_sneo_overpower, 0.1);
			snd_pitch_time(snd_sneo_overpower, 1, 90);
			snd_volume(snd_sneo_overpower, 0.75, 0);
			wreck = instance_create(x, y, obj_wreckpausespew);
			wreck.depth = depth - 1;
		}
		effecttimer++;
		if ((effecttimer % 6) == 0)
		{
			for (i = 0; i < 3; i++)
			{
				d = instance_create(x + mouthx, y + mouthy, obj_rouxls_power_up_orb);
				d.direction = irandom(40) + (i * 40) + 120;
				d.lifetime = 12;
				d.depth = depth + 1;
				d.image_blend = image_blend;
			}
		}
	}
	if ((state == 0 && x < (obj_growtangle.x - (obj_growtangle.sprite_width / 2.5))) || (state == 0 && obj_heart.x > (x + 70)))
	{
		state = 10;
		formtimer = 0;
		obj_sneo_bulletcontroller.special++;
		fakeheart = instance_create(obj_heart.x, obj_heart.y, obj_sneo_fakeheart);
	}
	else if (state == 0 && formtimer >= 320)
	{
		obj_sneo_bulletcontroller.special++;
		state++;
		formtimer = 45;
	}
	else if (state == 1 && formtimer >= 45)
	{
		with (obj_wreckpausespew)
			image_index = 1;
		with (obj_sneo_dollar)
			fade = 1;
		state++;
		formtimer = 45;
		if (x > (obj_growtangle.x + 70))
			obj_sneo_warped_box.state = 2;
		image_index = 4;
		image_angle = 1;
		snd_stop(snd_sneo_overpower);
		obj_sneo_warped_box.stopthesucc = 1;
	}
}
else if (state == 2 && formtimer >= 45)
{
	state++;
	image_index = 5;
	formtimer = 0;
	steptimer = pi - steptimer;
	obj_sneo_final_forme_hitbox.destroyable = false;
	global.turntimer = 360;
}
else if (state == 3)
{
	if (movecon == 0)
	{
		movetimer += (1 / moveframes);
		image_angle = lerp_ease_in(image_angle, 25, movetimer, 2);
		if (movetimer == 1)
		{
			movetimer = 0;
			movecon = 1;
		}
	}
	if (movecon == 2)
	{
		timer3++;
		if (timer3 > 20)
		{
			movetimer += (1 / moveframes);
			image_angle = lerp_ease_in(image_angle, -1, movetimer, 2);
			headoffset_x = lerp(0, -12, movetimer);
			headoffset_y = lerp(0, 2, movetimer);
		}
	}
	if (timer2 < 100)
		timer2++;
	x = lerp(x, camerax() + 439, timer2 / 100);
	if (x > (obj_growtangle.x + 70))
	{
		obj_sneo_warped_box.state = 2;
	}
	else
	{
		var _box = obj_sneo_warped_box;
		_box.suckx = min(obj_growtangle.x + 150, x + 106);
		_box.timer = clamp(scr_inverselerp(camerax() + 520, obj_growtangle.x + 100, x), 0, 1) * 60;
		_box.upper_sucky = y + 129;
		_box.lower_sucky = y + 159;
	}
	if (x > (camerax() + 438))
	{
		x = camerax() + 438;
		movecon = 2;
		if (movecon == 2 && movetimer == 1)
		{
			instance_destroy();
			aa = instance_create(x, ystart - abs(sin(steptimer + 0.15) * 40), obj_sneo_lastattack);
			with (aa)
			{
				yspot[0] = (obj_growtangle.y - (obj_growtangle.sprite_height / 2) - y_offset) + 40;
				yspot[1] = (obj_growtangle.y + (obj_growtangle.sprite_height / 2)) - y_offset - 40;
			}
			global.turntimer = 300;
		}
	}
}
else if (state == 4 && formtimer >= 25)
{
	formtimer = 0;
	state = 5;
	instance_create(x + mouthx, y + mouthy, obj_sneo_final_orb);
	image_index = 5;
}
else if (state == 10)
{
	fakeheart_speed = scr_movetowards(fakeheart_speed, 10, 1);
	with (fakeheart)
	{
		var _targetx = obj_sneo_final_forme.x + obj_sneo_final_forme.mouthx + 5;
		if (x > (_targetx - 10))
			_targetx += 20;
		move_towards_point(_targetx, obj_sneo_final_forme.y + obj_sneo_final_forme.mouthy, obj_sneo_final_forme.fakeheart_speed);
	}
	obj_sneo_warped_box.inhalespeed += 0.01;
	if (x > (x + mouthx + 10))
	{
		image_index = 4;
		snd_stop(snd_sneo_overpower);
	}
	if (formtimer > 45)
	{
		fakeheart.speed = 0;
		fakeheart.direction = 0;
		state = 11;
		formtimer = 0;
		image_index = 4;
		hidemouthback = 1;
		snd_stop(snd_sneo_overpower);
		obj_sneo_warped_box.image_alpha = 0;
		obj_sneo_warped_box.timer = 0;
		fakeheart.state = 1;
		with (obj_sneo_dollar)
			fade = 1;
	}
}
else if (state == 11)
{
	if (formtimer < 15)
		exit;
	if (x < (camerax() + 438))
		x += 4;
	if (x > (camerax() + 438) && formtimer < 65)
		formtimer = 65;
	if ((formtimer % 5) == 0 && formtimer >= 30 && formtimer <= 65)
	{
		var _hearthurt = snd_play(snd_hurt1);
		snd_pitch(_hearthurt, random_range(1.4, 2));
		d = instance_exists(obj_shake) ? 196 : instance_create(0, 0, obj_shake);
		d.shakex = ceil(1);
		d.shakey = ceil(1);
		if (dmgcon == 0)
		{
			dmgcon = 1;
			global.inv = -1;
			with (obj_spamton_neo_enemy)
				event_user(2);
		}
	}
	if (formtimer == 50)
	{
		obj_growtangle.timer = 0;
		obj_growtangle.growcon = 1;
		obj_growtangle.image_alpha = 1;
	}
	if (formtimer == 65)
	{
		obj_sneo_warped_box.inhale = 0;
		obj_sneo_warped_box.inhalespeed = 0;
		obj_sneo_warped_box.image_alpha = 1;
		obj_growtangle.image_alpha = 0;
	}
	if (x > (camerax() + 438))
	{
		if (formtimer < 50)
		{
			obj_growtangle.timer = 0;
			obj_growtangle.growcon = 1;
			obj_growtangle.image_alpha = 1;
		}
		formtimer = 0;
		state = 12;
		fakeheart.x = x + mouthx;
		fakeheart.y = y + mouthy;
		fakeheart.state = 2;
		image_index = 5;
	}
}
else if (state == 12)
{
	with (obj_wreckpausespew)
		image_index = 1;
	if (movetimer < 1)
	{
		movetimer += (1 / moveframes);
		headoffset_x = lerp(0, -12, movetimer);
		headoffset_y = lerp(0, 2, movetimer);
	}
	if (formtimer >= 30 && movetimer >= 1)
	{
		state = 2;
		formtimer = 0;
		image_index = 4;
		instance_destroy();
		instance_create(x, ystart - abs(sin(steptimer + 0.15) * 40), obj_sneo_lastattack);
	}
}
if (state >= 11)
{
	steptimer += 0.05;
	if (steptimer >= pi)
	{
		steptimer -= pi;
		d = instance_exists(obj_shake) ? 196 : instance_create(0, 0, obj_shake);
		d.shakex = ceil(2);
		d.shakey = ceil(2);
		snd_play(snd_screenshake);
	}
	y = ystart - (sin(steptimer) * 40);
}
