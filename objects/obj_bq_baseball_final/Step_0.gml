if (state == 0 && vspeed >= (8 / f))
{
	acc += 0.1;
	vspeed += acc;
	if (vspeed > (24 / f))
		state = 1;
}
if (state == 1)
{
	acc -= 0.1;
	vspeed += acc;
	if (vspeed < (4 / f))
	{
		state = 2;
		vspeed = 4;
	}
}
if (hit == -1)
{
	if (image_xscale < 6)
	{
		image_xscale += 0.1;
		image_yscale += 0.1;
	}
	x = (xstart - 5) + irandom(10);
	y = (ystart - 5) + irandom(10);
	spin_speed = scr_movetowards(spin_speed, 135, 1);
}
image_angle += spin_speed;
if (hit == 1)
{
	snd_stop(snd_quake_nes);
	hit_timer += 1;
	if (hit_timer == 1)
	{
		reticletimer = -999;
		repeat (3)
		{
			fakesplash = instance_create((x - 20) + irandom(40), (y - 20) + irandom(40), o_boxing_splash);
			fakesplash.friction = -0.5;
			fakesplash.sprite_index = spr_boxing_splash2;
			if (hit_direction == -1)
				fakesplash.hspeed = -1 - random(2);
			if (hit_direction == 1)
				fakesplash.hspeed = 1 + random(2);
			fakesplash.vspeed = 1 + random(2);
		}
		xbase = x;
		ybase = y;
	}
	if (hit_timer == (90 / f))
		snd_pitch(snd_play(snd_wing), 0.7);
	if (hit_timer == (160 / f))
		snd_pitch(snd_play(snd_wing), 1);
	if (hit_timer == (220 / f))
		snd_pitch(snd_play(snd_wing), 1.3);
	if (hit_timer > 0 && hit_timer < (40 / f))
	{
		x = (xbase + (40 / hit_timer)) - irandom(80 / hit_timer);
		y = (ybase + (40 / hit_timer)) - irandom(80 / hit_timer);
		player_basex = o_boxingcontroller.x;
		player_basey = o_boxingcontroller.y;
	}
	if (hit_timer > (90 / f) && hit_timer < (130 / f))
	{
		player_shake_timer++;
		o_boxingcontroller.x = (player_basex + (20 / player_shake_timer)) - irandom(40 / player_shake_timer);
		o_boxingcontroller.y = (player_basey + (20 / player_shake_timer)) - irandom(40 / player_shake_timer);
	}
	if (hit_timer == (130 / f))
		player_shake_timer = 0;
	if (hit_timer > (160 / f) && hit_timer < (200 / f))
	{
		player_shake_timer++;
		o_boxingcontroller.x = (player_basex + (20 / player_shake_timer)) - irandom(40 / player_shake_timer);
		o_boxingcontroller.y = (player_basey + (20 / player_shake_timer)) - irandom(40 / player_shake_timer);
	}
	if (hit_timer == (220 / f))
	{
		instance_create(x, y + 91, o_bq_screen_flash);
		with (obj_fx_speedlines)
			instance_destroy();
		var speedlines = instance_create(x, o_boxingcontroller.y - 144, obj_fx_speedlines);
		speedlines.offsety = true;
		speedlines.flashframe = true;
		speedlines.depth = o_bq_screen_flash.depth - 1;
		snd_play(snd_whip_throw_only);
	}
	if (hit_timer > (220 / f))
	{
		spin_speed = -135;
		vspeed = -64 / f;
	}
	else if (hit_timer > (30 / f))
	{
		spin_speed = scr_movetowards(spin_speed, 0, 1);
	}
	if (y < -850)
	{
		instance_destroy();
		instance_create(x, y, obj_bq_baseball_final_hits_boss);
		snd_play(snd_queen_gasp);
	}
}
if (y > 20 && !instance_exists(o_bq_whitefade) && hit != 1)
	instance_create(x, y, o_bq_whitefade);
