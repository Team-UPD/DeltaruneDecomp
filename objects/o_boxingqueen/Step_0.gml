if (instance_exists(obj_thrash_intro) || instance_exists(obj_thrash_transformation_transition))
	exit;
if (phase_transition > 0 && state != 1)
{
	state = 1;
	sprite_index = spr_bqueen_hurt;
}
if (wheelsoundtimer > 0)
	wheelsoundtimer--;
if (phaseprevious != o_boxinghud.sub_healthbar_count)
	attackorderlooping = 0;
phaseprevious = o_boxinghud.sub_healthbar_count;
if (state == 0)
{
	x = basex;
	bouncetimer += 1;
	hurt_fx1_timer = 0;
	var bounce_speed_down = 0.7;
	var bounce_speed_up = 0.7;
	if (o_boxinghud.sub_healthbar_count == 1 && o_boxingcontroller.wireframe_boxing == 0)
		bounce_speed_down = 1;
	if (o_boxinghud.sub_healthbar_count == 0 && o_boxingcontroller.wireframe_boxing == 0)
		bounce_speed_down = 2;
	if (o_boxingcontroller.wireframe_boxing == 0 && o_boxingcontroller.dead == 1)
	{
	}
	else
	{
		if (bouncetimer == 5)
		{
			y = basey;
			vspeed = -3 * f * bounce_speed_up;
		}
		if (bouncetimer >= 6)
		{
			vspeed += (0.35 * (f * 1.6) * bounce_speed_down);
			if (y >= basey)
			{
				if (image_index == 0)
					image_index = 1;
				else
					image_index = 0;
				vspeed = 0;
				y = basey;
				bouncetimer = 3;
			}
		}
	}
	fliptimer += 1;
	if (fliptimer >= flipthreshold)
	{
		if (instance_exists(o_boxing_wireframe))
		{
		}
		else
		{
			drawflip = choose(0, 1);
		}
		blocking = drawflip;
		fliptimer = 0;
	}
	if (myturn == 0)
		movetimer = 0;
	movetimer++;
	var can_attack = 1;
	if (instance_exists(o_boxing_wireframe) && o_boxing_wireframe.pacifist_state >= 0 && o_boxing_wireframe.pacifist_timer < 301)
		can_attack = 0;
	if (instance_exists(o_boxing_wireframe) && o_boxingcontroller.dead >= 4)
		can_attack = 0;
	if (instance_exists(o_boxing_wireframe) && o_boxing_wireframe.pacifist_state >= 1)
		can_attack = 0;
	if (o_boxingcontroller.health_count < 1)
		can_attack = 0;
	if (o_boxingcontroller.wireframe_boxing == 0 && o_boxingcontroller.dead == 1)
	{
		can_attack = 0;
		player_dead_timer++;
		movetimer--;
		with (o_boxingcontroller)
			boxingtimer++;
		drawflip = 0;
		if (player_dead_timer == (2 / f))
		{
			sprite_index = spr_bqueen_pirouette;
			image_index = 0;
			vspeed = -48 / f;
		}
		if (player_dead_timer > (4 / f) && sprite_index == spr_bqueen_pirouette)
		{
			image_index += 0.4;
			gravity = 2.8;
		}
		if (player_dead_timer > (6 / f) && sprite_index == spr_bqueen_pirouette && y > (basey + 70))
		{
			sprite_index = spr_bqueen_idle;
			image_index = 0;
			vspeed = 0;
			gravity = 0;
			gravity = 0;
			hspeed = 0;
			y = basey + 100;
			player_dead_timer = 210 / f;
		}
		if (player_dead_timer >= (212 / f) && player_dead_timer < (270 / f))
		{
			if (arcade)
			{
				if (image_index == 0)
				{
					if (arcade)
						snd_play(snd_squeaky_bc);
				}
			}
			else if (image_index == 0)
			{
				snd_play(snd_squeaky);
			}
			sprite_index = spr_bqueen_ducking;
			image_index += 0.25;
			if (image_index >= 2)
				image_index = 0;
		}
		if (player_dead_timer == 158)
			snd_play(snd_queen_laugh_0);
		if (player_dead_timer > (310 / f))
		{
			sprite_index = spr_bqueen_laugh;
			image_index += 0.25;
		}
		if (player_dead_timer == (340 / f))
		{
			instance_create(0, 0, obj_closing_block_left);
			instance_create(640, 0, obj_closing_block_right);
			instance_create(0, 0, obj_boxing_loss_controller);
		}
	}
	if ((movetimer >= attackthreshold && can_attack == 1 && !instance_exists(o_bq_whitefade_persistent) && o_boxingcontroller.attackintrocon == 0 && o_boxingcontroller.dead == 0) || (movetimer >= attackthreshold && can_attack == 1 && !instance_exists(o_bq_whitefade_persistent) && o_boxingcontroller.dead == 0 && attackpattern == 99))
	{
		movetimer = 0;
		event_user(2);
	}
}
else
{
	bouncetimer = 0;
}
if (state == 1)
{
	movetimer++;
	hurttimer += 1;
	snd_pitch(snd_bell_bounce_short, 1);
	if (hurttimer == 1 && o_boxingcontroller.wireframe_boxing == 0)
	{
		if (o_boxingcontroller.wireframe_boxing == 0 && dizzytimer >= (30 / f))
		{
			sprite_index = spr_bqueen_hurt_v;
			hurt_fx1_timer = 1;
			hurt_fx1_state = 1;
		}
		fff = 0;
		if (drawflip == 0)
			fff = -1;
		if (drawflip == 1)
			fff = 1;
		for (i = 0; i < 5; i++)
		{
			flameparticle = instance_create(x + (40 * fff), y - 194, o_boxingflame);
			flameparticle.direction = (60 + random(50)) - (fff * 30);
			flameparticle.dustmode = 1;
			flameparticle.speed = 8 + random(8);
			flameparticle.friction = 2;
			flameparticle.sprite_index = spr_bhero_dust;
		}
	}
	if (o_boxingcontroller.wireframe_boxing == 1 && phase_transition == 0)
	{
		sprite_index = spr_bqueen_hurt_effect_wireframe;
		image_index = 1;
	}
	if (arcade)
	{
		if (audio_is_playing(snd_queen_laugh_0_bc))
			audio_stop_sound(snd_queen_laugh_0_bc);
		else if (audio_is_playing(snd_queen_laugh_0))
			audio_stop_sound(snd_queen_laugh_0);
	}
	if (times_hit_in_a_row > 1 && health_count > 0 && phase_transition < 1 && o_boxingcontroller.wireframe_boxing == 1)
	{
		invincible_l = 1;
		invincible_r = 1;
		movetimer = attackthreshold;
		friction = 0;
		gravity = 0;
		hurt_fx1_timer += 1;
		if (hurt_fx1_timer == 1)
		{
			if (o_boxingcontroller.lastpunchside == -1)
				drawflip = 1;
			else
				drawflip = 0;
		}
		if (hurt_fx1_timer > 7)
			hurt_fx1_timer = 1;
		if (hurt_fx1_timer > 0 && hurt_fx1_timer < 38)
		{
			sprite_index = spr_bqueen_hurt_effect_wireframe;
			image_index = 1;
			movetimer -= 1;
			if (hurt_fx1_state == 1)
			{
				if (hurt_fx1_timer == 3)
					hurt_fx1_state = 2;
				if (drawflip == 1)
					x += ((5 - hurt_fx1_timer) * 5);
				if (drawflip == 0)
					x -= ((5 - hurt_fx1_timer) * 5);
				y -= ((5 - hurt_fx1_timer) * 2);
			}
			if (hurt_fx1_state == 2)
			{
				hurt_fx1_timer2++;
				if (hurt_fx1_timer2 > 5)
				{
					if (drawflip == 1)
						x -= 12.5;
					if (drawflip == 0)
						x += 12.5;
					y += 12.5;
				}
				if (hurt_fx1_timer2 > 7)
				{
					x = basex;
					y = basey;
					hurt_fx1_timer = 0;
					hurt_fx1_timer2 = 0;
					hurt_fx1_state = 1;
					times_hit_in_a_row = 0;
					invincible_l = 0;
					invincible_r = 0;
					movetimer = 70;
					dizzytimer = 0;
					shortcomboend = 0;
					event_user(2);
					if (attacktype == 8)
					{
						invincible_l = 1;
						invincible_r = 1;
					}
				}
			}
			exit;
		}
	}
	if ((times_hit_in_a_row > 2 && health_count > 0 && phase_transition < 1 && o_boxingcontroller.laseractive == 0 && o_boxingcontroller.wireframe_boxing == 0 && shortcomboend == 0) || (times_hit_in_a_row > 3 && health_count > 0 && phase_transition < 1 && o_boxingcontroller.laseractive == 1 && o_boxingcontroller.wireframe_boxing == 0 && shortcomboend == 0))
	{
		movetimer = attackthreshold;
		hurt_fx1_timer += 1;
		if (hurt_fx1_timer == 1)
		{
			if (o_boxingcontroller.lastpunchside == -1)
				drawflip = 1;
			else
				drawflip = 0;
		}
		if (hurt_fx1_timer > 7)
			hurt_fx1_timer = 1;
		if (hurt_fx1_timer > 0 && hurt_fx1_timer < 38)
		{
			sprite_index = spr_bqueen_hurt;
			movetimer -= 1;
			if (hurt_fx1_state == 1)
			{
				if (hurt_fx1_timer == 6)
					hurt_fx1_state = 2;
				if (drawflip == 1)
					x += ((6 - hurt_fx1_timer) * 5);
				if (drawflip == 0)
					x -= ((6 - hurt_fx1_timer) * 5);
				y -= ((6 - hurt_fx1_timer) * 2);
			}
			if (hurt_fx1_state == 2)
			{
				hurt_fx1_timer2++;
				invincible_l = 1;
				invincible_r = 1;
				if (hurt_fx1_timer2 > 14)
				{
					if (drawflip == 1)
						x -= 30;
					if (drawflip == 0)
						x += 30;
					y += 15;
				}
				if (hurt_fx1_timer2 > 16)
				{
					x = basex;
					y = basey;
					hurt_fx1_timer = 0;
					hurt_fx1_timer2 = 0;
					hurt_fx1_state = 1;
					times_hit_in_a_row = 0;
					movetimer = attackthreshold;
					dizzytimer = 0;
					if (global.boxingphase == 2 && o_boxingcontroller.dead == 0)
					{
						event_user(2);
					}
					else
					{
						remmovetimer = movetimer;
						event_user(1);
						movetimer = remmovetimer;
					}
				}
			}
			exit;
		}
	}
	else if (sprite_index == spr_bqueen_hurt_v && hurt_fx1_timer > 0 && hurt_fx1_timer < 7)
	{
		movetimer -= 1;
		if (hurt_fx1_state == 1)
		{
			hurt_fx1_timer += 1;
			if (hurt_fx1_timer == 5)
				hurt_fx1_state = 2;
			if (drawflip == 1)
				x += ((5 - hurt_fx1_timer) * 5);
			if (drawflip == 0)
				x -= ((5 - hurt_fx1_timer) * 5);
			y -= ((5 - hurt_fx1_timer) * 3);
		}
		else
		{
			hurt_fx1_timer2++;
			if (hurt_fx1_timer2 > 16)
			{
				x = basex;
				y = basey;
				hurt_fx1_timer = 0;
				hurt_fx1_timer2 = 0;
				hurt_fx1_state = 1;
			}
		}
	}
	if (times_hit_in_a_row > 2 && health_count > 0 && phase_transition < 1 && o_boxingcontroller.wireframe_boxing == 0 && shortcomboend == 1)
	{
		movetimer = attackthreshold;
		hurt_fx1_timer += 1;
		if (hurt_fx1_timer == 1)
		{
			if (o_boxingcontroller.lastpunchside == -1)
				drawflip = 1;
			else
				drawflip = 0;
		}
		if (hurt_fx1_timer > 7)
			hurt_fx1_timer = 1;
		if (hurt_fx1_timer > 0 && hurt_fx1_timer < 38)
		{
			sprite_index = spr_bqueen_hurt;
			movetimer -= 1;
			if (hurt_fx1_state == 1)
			{
				if (hurt_fx1_timer == 3)
					hurt_fx1_state = 2;
				if (drawflip == 1)
					x += ((5 - hurt_fx1_timer) * 5);
				if (drawflip == 0)
					x -= ((5 - hurt_fx1_timer) * 5);
				y -= ((5 - hurt_fx1_timer) * 2);
			}
			if (hurt_fx1_state == 2)
			{
				hurt_fx1_timer2++;
				invincible_l = 1;
				invincible_r = 1;
				if (hurt_fx1_timer2 > 5)
				{
					if (drawflip == 1)
						x -= 12.5;
					if (drawflip == 0)
						x += 12.5;
					y += 12.5;
				}
				if (hurt_fx1_timer2 > 7)
				{
					x = basex;
					y = basey;
					hurt_fx1_timer = 0;
					hurt_fx1_timer2 = 0;
					hurt_fx1_state = 1;
					times_hit_in_a_row = 0;
					movetimer = attackthreshold;
					dizzytimer = 0;
					shortcomboend = 0;
					if (global.boxingphase == 2 && o_boxingcontroller.dead == 0)
					{
						event_user(2);
					}
					else
					{
						remmovetimer = movetimer;
						event_user(1);
						movetimer = remmovetimer;
					}
				}
			}
			exit;
		}
	}
	else if (sprite_index == spr_bqueen_hurt_v && hurt_fx1_timer > 0 && hurt_fx1_timer < 7)
	{
		movetimer -= 1;
		if (hurt_fx1_state == 1)
		{
			hurt_fx1_timer += 1;
			if (hurt_fx1_timer == 5)
				hurt_fx1_state = 2;
			if (drawflip == 1)
				x += ((5 - hurt_fx1_timer) * 5);
			if (drawflip == 0)
				x -= ((5 - hurt_fx1_timer) * 5);
			y -= ((5 - hurt_fx1_timer) * 3);
		}
		else
		{
			hurt_fx1_timer2++;
			if (hurt_fx1_timer2 > 16)
			{
				x = basex;
				y = basey;
				hurt_fx1_timer = 0;
				hurt_fx1_timer2 = 0;
				hurt_fx1_state = 1;
			}
		}
	}
	if (phase_transition > 0 && o_boxingcontroller.wireframe_boxing == 1)
	{
		phase_transition_timer++;
		if (phase_transition_timer >= (0 / f) && phase_transition_timer < (40 / f))
		{
			with (obj_battleblcon)
				instance_destroy();
			with (obj_writer)
				instance_destroy();
			x = (basex + (40 / phase_transition_timer)) - irandom(80 / phase_transition_timer);
			y = (basey + (40 / phase_transition_timer)) - irandom(80 / phase_transition_timer);
		}
		if (phase_transition_timer == (110 / f))
		{
			sprite_index = spr_bqueen_headless_wireframe;
			drawflip = 0;
			force_drawflip = 0;
			explosion = instance_create(x, y - 230, obj_vector_explosion);
			explosion.image_xscale = 1;
			explosion.image_yscale = 1;
			explosion.alarm[0] = 70;
			if (o_boxingcontroller.wireframe_boxing == 1)
				snd_free(boxing_game_music);
			o_boxingcontroller.y = o_boxingcontroller.basey;
			with (o_boxingcontroller)
				event_user(1);
		}
		if (phase_transition_timer == (250 / f))
		{
			o_boxing_wireframe.hidebg = 1;
			sprite_index = spr_bqueen_headless_wireframe;
			drawflip = 0;
			drawflip = 0;
			with (obj_vector_explosion)
				instance_destroy();
			explosion = instance_create(x, y - 50, obj_vector_explosion_big);
			explosion.image_xscale = 7;
			explosion.image_yscale = 7;
			explosion.alarm[0] = 60;
			explosion.depth = obj_ch2_scene10.qu_actor.depth + 1;
		}
		if (phase_transition_timer == (276 / f))
			instance_create(x, y, obj_ch2_scene10_arcade_fg2);
		if (phase_transition_timer == (284 / f))
		{
			with (obj_ch2_scene10_arcade_bg)
			{
				con = 3;
				timer = 0;
				image_alpha = 1.5;
			}
			instance_destroy();
			with (obj_vector_explosion_big)
				instance_destroy();
			with (o_boxingcontroller)
				instance_destroy();
			with (o_boxinghud)
				instance_destroy();
			with (o_boxinggraze)
				instance_destroy();
			with (o_boxing_wireframe)
				instance_destroy();
			with (o_boxingcontroller_fist_hitbox)
				instance_destroy();
			with (o_boxing_hitbox)
				instance_destroy();
			with (obj_vector_explosion)
				instance_destroy();
			with (obj_bg_square)
				instance_destroy();
			with (obj_3d_bg_effect)
				instance_destroy();
			with (obj_ch2_scene10_arcade_fg2)
				instance_destroy();
		}
		exit;
	}
	if (phase_transition > 0 && o_boxingcontroller.wireframe_boxing == 0)
	{
		phase_transition_timer++;
		o_boxingcontroller.boxingtimer = 10;
		obj_gigaqueen_enemy.missleattack = 0;
		obj_gigaqueen_enemy.breathattack = 0;
		actpunchtimer = 0;
		if (phase_transition_timer >= (0 / f) && phase_transition_timer < (40 / f))
		{
			x = (basex + (40 / phase_transition_timer)) - irandom(80 / phase_transition_timer);
			y = (basey + (40 / phase_transition_timer)) - irandom(80 / phase_transition_timer);
			white_flash = 0;
		}
		if (phase_transition_timer == (40 / f))
			phase_transition_timer = 70 / f;
		if (phase_transition_timer == (80 / f))
		{
			sprite_index = spr_bqueen_pirouette;
			vspeed = -48 / f;
			hspeed = -12 / f;
			drawflip = 0;
			if (o_boxingcontroller.wireframe_boxing == 0)
			{
				d = instance_create(0, 0, obj_shake);
				d.shakex = ceil(2);
				d.shakey = ceil(2);
			}
			if (arcade)
				snd_play(snd_screenshake_bc);
			else
				snd_play(snd_screenshake);
		}
		if (phase_transition_timer > (82 / f) && y < basey)
		{
			hspeed = -12 / f;
			image_index += 0.4;
			gravity = 2.8;
		}
		if (phase_transition_timer >= (82 / f) && phase_transition_timer < (210 / f) && y > basey)
		{
			sprite_index = spr_bqueen_stomp;
			image_index = 1;
			vspeed = 0;
			gravity = 0;
			hspeed = 0;
			if (arcade)
				snd_play(snd_impact_bc);
			else
				snd_play(snd_impact);
			y = basey;
			phase_transition_timer = 196 / f;
			d = instance_create(0, 0, obj_shake);
			d.shakex = ceil(2);
			d.shakey = ceil(2);
		}
		if (phase_transition_timer > (210 / f))
		{
			if (index_previous < 1 && image_index >= 1 && phase_transition_timer > (220 / f))
			{
				if (arcade)
				{
					if (audio_is_playing(snd_impact_bc))
						audio_stop_sound(snd_impact_bc);
					snd_play(snd_impact_bc);
				}
				else
				{
					if (audio_is_playing(snd_impact))
						audio_stop_sound(snd_impact);
					snd_play(snd_impact);
				}
				d = instance_create(0, 0, obj_shake);
				if (i_ex(d))
				{
					d.shakex = ceil(2);
					d.shakey = ceil(2);
				}
			}
			index_previous = image_index;
			sprite_index = spr_bqueen_stomp;
			image_index += stomp_speed;
			if (image_index >= 2)
				image_index -= 2;
			if (phase_transition == 1)
				stomp_speed += 0.037;
			if (phase_transition == 2)
				stomp_speed -= 0.037;
			if (phase_transition == 1 && stomp_speed > 1)
				phase_transition = 2;
			if (phase_transition == 2 && stomp_speed < 0)
				stomp_speed = 0;
		}
		if (phase_transition_timer > (350 / f))
		{
			hspeed = 64 / f;
			sprite_index = spr_bqueen_idle;
		}
		if ((phase_transition_timer > (350 / f) && x > (basex - 33) && hspeed > 0) || (phase_transition_timer > (350 / f) && x < (basex + 33) && hspeed < 0))
		{
			sprite_index = spr_bqueen_idle;
			image_index = 0;
			hspeed = 0;
			x = basex;
		}
		if (phase_transition_timer == (360 / f))
		{
			if (o_boxinghud.sub_healthbar_count == 1)
			{
				instance_create(camerax() + (camerawidth() / 2), cameray() - 220, obj_gigaqueen_intro_round);
				obj_gigaqueen_intro_round.sprite_index = spr_gigaqueen_intro_round2;
			}
			if (o_boxinghud.sub_healthbar_count == 0)
			{
				instance_create(camerax() + (camerawidth() / 2), cameray() - 220, obj_gigaqueen_intro_round);
				obj_gigaqueen_intro_round.sprite_index = spr_gigaqueen_intro_round3;
			}
		}
		if (phase_transition_timer == (460 / f))
			instance_create(obj_gigaqueen_intro_round.x + 5, obj_gigaqueen_intro_round.y, obj_gigaqueen_intro_fight);
		if (phase_transition_timer == (540 / f))
		{
			snd_play(snd_bell);
			readycon = 0;
		}
		if (phase_transition_timer == (560 / f))
		{
			snd_play(snd_bell);
			readycon = 0;
		}
		if (phase_transition_timer == (562 / f))
		{
			phase_transition = 0;
			phase_transition_timer = 0;
			dizzytimer = 0;
			stomp_speed = 0;
			movetimer = 0;
			hurttimer = 9999;
		}
		else
		{
			exit;
		}
	}
	if (actpunchtimer > 0)
	{
		actpunchtimer++;
		x = (basex + (40 / actpunchtimer)) - irandom(80 / actpunchtimer);
		y = (basey + (40 / actpunchtimer)) - irandom(80 / actpunchtimer);
		if (actpunchtimer >= (40 / f))
			actpunchtimer = 0;
		exit;
	}
	if (hurttimer >= 2)
	{
		if (y >= basey)
		{
			y = basey;
			vspeed = 0;
		}
	}
	if (hspeed > 0 && x > basex)
	{
		hspeed = 0;
		x = basex;
	}
	var hurttime_ext = 32;
	if (o_boxingcontroller.wireframe_boxing == 1)
		hurttime_ext = 40;
	if (combo == 0)
		hurttime_ext = 18;
	if (hurttimer >= (hurttime_ext / f))
	{
		if (dizzytimer <= (30 / f))
		{
			dizzytimer = 0;
			if ((noattack >= 3 && myturn == 1) || combo == 0)
			{
				debug_text = "from hurt to attack";
				movetimer = attackthreshold;
				event_user(2);
			}
			else
			{
				debug_text = "from hurt to idle";
				remmovetimer = movetimer;
				event_user(1);
				movetimer = remmovetimer;
			}
		}
		else if ((!instance_exists(obj_bq_baseball_hits_boss) && !instance_exists(o_boxing_wireframe)) || (baseball_hit_boss_number == o_boxingcontroller.hit_baseball && !instance_exists(o_boxing_wireframe)))
		{
			state = 4;
			speed = 0;
			image_index = 0;
			x = basex;
			y = basey;
			sprite_index = spr_bqueen_dizzy;
			if (o_boxingcontroller.wireframe_boxing == 1)
				sprite_index = spr_bqueen_dizzy_wireframe;
		}
	}
}
if (state == 2)
{
	blocktimer += 1;
	if (blocktimer >= (32 / f) && myturn == 1)
	{
		movetimer = attackthreshold;
		event_user(2);
	}
}
if (state == 3)
{
	if (attacktype == 0)
	{
		if (attackcon == 0)
		{
			debug_text = "start punch";
			makedizzy = 150 / f;
			blocking = -1;
			sprite_index = spr_bqueen_punch;
			if (punch_type == 2 || punch_type == 3)
				sprite_index = spr_bqueen_punchb;
			if (punch_type == 5)
				sprite_index = spr_bqueen_punchb;
			if (o_boxingcontroller.wireframe_boxing == 1)
			{
				sprite_index = spr_bqueen_punch_wireframe;
				image_speed = 0;
			}
			friction = 0;
			gravity = 0;
			if (o_boxingcontroller.wireframe_boxing == 1)
			{
				if (o_boxingcontroller.arcade_mode_last_punched_direction == 0)
				{
					drawflip = 1;
					force_drawflip = 1;
				}
				if (o_boxingcontroller.arcade_mode_last_punched_direction == 1)
				{
					drawflip = 0;
					force_drawflip = 0;
				}
			}
			image_index = 0;
			if (drawflip == 0)
			{
				invincible_l = 1;
				invincible_r = 1;
				ff = -1;
				if (o_boxingcontroller.wireframe_boxing == 1)
				{
					hspeed = -3 * f;
					invincible_l = 1;
					invincible_r = 1;
				}
				else
				{
					hspeed = -7 * f;
					invincible_l = 1;
					invincible_r = 1;
				}
				vspeed = -2 * f;
			}
			if (drawflip == 1)
			{
				ff = 1;
				if (o_boxingcontroller.wireframe_boxing == 1)
				{
					hspeed = 3 * f;
					invincible_l = 1;
					invincible_r = 1;
				}
				else
				{
					hspeed = 7 * f;
					invincible_l = 1;
					invincible_r = 1;
				}
				vspeed = -2 * f;
			}
			attackcon = 1;
		}
		if (attackcon == 1)
		{
			punchthresholda = 10;
			punchthresholdb = 15;
			punchthresholdc = 35;
			punchthresholdd = 40;
			punchthresholde = 40;
			var a = 0;
			if (delayattack == 1)
				a = 11;
			if (punch_type == 1)
			{
				punchthresholdb = 15;
				punchthresholdc = 18;
				punchthresholdd = 30;
				punchthresholde = 35;
			}
			if (punch_type == 2 || punch_type == 3)
			{
				punchthresholdb = 15;
				punchthresholdc = 17;
				punchthresholdd = 23;
				punchthresholde = 25;
			}
			if (punch_type == 4 || punch_type == 5)
			{
				punchthresholdb = 15;
				punchthresholdc = 18;
				punchthresholdd = 40;
				punchthresholde = 23;
			}
			if ((punch_type == 2 && firstquickpunch == 1) || (punch_type == 3 && firstquickpunch == 1))
			{
				punchthresholdb = 15;
				punchthresholdc = 18;
				punchthresholdd = 30;
				punchthresholde = 35;
			}
			if (o_boxingcontroller.wireframe_boxing == 1)
			{
				punchthresholdb = 15;
				punchthresholdc = 18;
				punchthresholdd = 50;
				punchthresholde = 50;
			}
			attacktimer += 1;
			if (attacktimer >= (punchthresholda / f))
				speed = 0;
			if (attacktimer == (punchthresholdb / f))
				image_index = 3;
			if (attacktimer == ceil(punchthresholdc / f))
			{
				if (arcade)
					snd_play(snd_bell_bc);
				else
					snd_play(snd_bell_bounce_short);
				image_index = 5;
				white_flash = 120;
			}
			if (attacktimer == (ceil(punchthresholdc / f) + 4))
			{
				image_index = 3;
				white_flash = 0;
			}
			if (attacktimer >= ((punchthresholdd / f) + a))
			{
				attackcon = 2;
				attacktimer = 0;
				if (arcade)
					snd_play(motor_swing_down_bc);
				else
					snd_play(motor_swing_down);
			}
		}
		if (attackcon == 2)
		{
			attack_succeeded = 0;
			invincible_l = 1;
			invincible_r = 1;
			sprite_index = spr_bqueen_punch;
			if (punch_type == 2 || punch_type == 3)
				sprite_index = spr_bqueen_punchb;
			if (o_boxingcontroller.wireframe_boxing == 1)
				sprite_index = spr_bqueen_punchb_wireframe;
			image_index = 1;
			attacktimer += 1;
			if (o_boxingcontroller.wireframe_boxing == 1)
			{
				if (attacktimer == 1)
				{
					y += 25;
					x -= (6 * ff);
				}
				if (attacktimer == 2)
				{
					y += 15;
					x -= (4 * ff);
				}
				if (attacktimer == 3)
				{
					y += 10;
					x -= (2 * ff);
				}
				if (attacktimer == 4)
				{
					y += 5;
					x -= (2 * ff);
					attackcon = 3;
					attacktimer = 0;
				}
			}
			else
			{
				if (attacktimer == 1)
				{
					y += 25;
					x -= (16 * ff);
				}
				if (attacktimer == 2)
				{
					y += 15;
					x -= (12 * ff);
				}
				if (attacktimer == 3)
				{
					y += 10;
					x -= (8 * ff);
				}
				if (attacktimer == 4)
				{
					y += 5;
					x -= (4 * ff);
					attackcon = 3;
					attacktimer = 0;
				}
			}
			if ((punch_type == 2 && firstquickpunch == 1) || (punch_type == 3 && firstquickpunch == 1))
				firstquickpunch = 0;
		}
		if (attackcon == 3)
		{
			image_index = 2;
			attacktimer += 1;
			if (attacktimer == 1)
			{
				punch_hitbox = instance_create(x, y - 60, o_boxing_hitbox);
				with (punch_hitbox)
				{
					give_hurt = 22 / f;
					if (o_boxingcontroller.wireframe_boxing == 1)
						give_hurt = 32 / f;
					timer = 5 / f;
					damage = 25;
					if (o_boxingqueen.punch_type == 2 || o_boxingqueen.punch_type == 3)
						damage = 15;
					image_yscale = 5;
					image_xscale = 2.8;
				}
				punch_hitbox_graze = instance_create(x - 5, y - 60, o_boxing_hitbox);
				with (punch_hitbox_graze)
				{
					graze_only = 1;
					image_xscale = 6;
					image_yscale = 2.8;
				}
				punch_hitbox.hit_direction = drawflip;
			}
			if (attacktimer >= 2)
			{
				makedizzy = 90 / f;
				invincible_l = 0;
				invincible_r = 0;
				blocking = -1;
			}
			if (punch_type == 1 || punch_type == 2)
				attack_succeeded = 0;
			if (punch_type == 3)
			{
				punchthresholdc = 45;
				makedizzy = 180 / f;
			}
			if (attacktimer >= ((punchthresholdd / f) - ((attack_succeeded * 20) / f)))
			{
				vspeed -= (6 * f);
				if (y <= (basey + 20))
				{
					attackcon = 0;
					y = basey;
					vspeed = 0;
					hspeed = 0;
					attack_succeeded = 0;
					event_user(1);
				}
			}
		}
	}
	if (attacktype == 1)
	{
		if (attackcon == 0)
		{
			blocking = -1;
			x = basex;
			y = basex;
			sprite_index = spr_bqueen_kick;
			friction = 0;
			gravity = 0;
			if (o_boxingcontroller.wireframe_boxing == 1)
			{
				sprite_index = spr_bqueen_kick_wireframe;
				image_speed = 0;
			}
			if (o_boxingcontroller.wireframe_boxing == 1)
			{
				o_boxing_wireframe.text = o_boxingcontroller.dodge_string;
				o_boxing_wireframe.text_reset_timer = 50;
				dodgehintcount++;
				if (dodgehintcount == 4)
				{
					with (o_boxing_wireframe)
					{
						msgsetsubloc(0, "DODGE with ~1 &or ~2!", scr_get_input_name(3), scr_get_input_name(1), "o_boxingqueen_slash_Step_0_gml_599_0");
						global.typer = 50;
						queenbubble = scr_enemyblcon(camerax() + 428, cameray() + 388, 7);
						talktimer = 0;
						talking = true;
						with (queenbubble)
						{
							depth = obj_ch2_scene10.qu_actor.depth - 1;
							auto_length = 1;
							side = -1;
							xoffset = 194;
						}
						talktype = 1;
					}
				}
			}
			if (arcade)
				snd_pitch(snd_play(motor_upper_2_bc), 0.9);
			else
				snd_pitch(snd_play(snd_bell_bounce_short), 1);
			image_index = 3;
			if (o_boxingcontroller.wireframe_boxing == 0)
				event_user(5);
			image_index = 0;
			invincible_l = 1;
			invincible_r = 1;
			playerhitbykick = 0;
			ohpitch = 0;
			attacktimer = 0;
			kicks_done = 0;
			if (o_boxingcontroller.wireframe_boxing == 1)
			{
				if (o_boxingcontroller.arcade_mode_last_punched_direction == 0)
				{
					drawflip = 1;
					force_drawflip = 1;
				}
				if (o_boxingcontroller.arcade_mode_last_punched_direction == 1)
				{
					drawflip = 0;
					force_drawflip = 0;
				}
				if (drawflip == 0)
				{
					ff = -1;
					if (kick_amount <= 1)
						hspeed = -2 * f;
					vspeed = 1 * f;
				}
				if (drawflip == 1)
				{
					ff = 1;
					if (kick_amount <= 1)
						hspeed = 2 * f;
					vspeed = 1 * f;
				}
			}
			else
			{
				if (drawflip == 0)
				{
					ff = -1;
					if (kick_amount <= 1)
						hspeed = -1 * f;
					vspeed = 3 * f;
				}
				if (drawflip == 1)
				{
					ff = 1;
					if (kick_amount <= 1)
						hspeed = 1 * f;
					vspeed = 3 * f;
				}
			}
			attackcon = 1;
		}
		if (attackcon == 1)
		{
			var a = 0;
			if (delayattack == 1)
				a = 11;
			attacktimer += 1;
			kickthresholda = 5;
			kickthresholdb = 12.5;
			if (punch_type == 2)
			{
				kickthresholda = 15;
				kickthresholdb = 21;
			}
			if (o_boxingcontroller.wireframe_boxing == 1)
			{
				kickthresholda = 18;
				kickthresholdb = 29;
				if (attacktimer == 10)
					event_user(5);
			}
			if (attacktimer == (10 / f))
			{
				prekick_timer = 0;
				speed = 0;
				remy = y;
				remx = x;
			}
			kick_turnaround_again = 0;
			if (kick_amount > 1 && attacktimer == (14 / f))
				kick_turnaround_again = 1;
			if (kick_amount > 2 && attacktimer == (28 / f))
				kick_turnaround_again = 1;
			if (kick_amount > 3 && attacktimer == (42 / f))
				kick_turnaround_again = 1;
			if (kick_turnaround_again == 1 && o_boxingcontroller.wireframe_boxing == 0)
			{
				ohpitch++;
				if (arcade)
				{
					snd_pitch(motor_upper_2_bc, 1 + (ohpitch / 10));
					snd_play(motor_upper_2_bc);
				}
				else
				{
					snd_pitch(snd_bell_bounce_short, 1 + (ohpitch / 10));
					snd_play(snd_bell_bounce_short);
				}
				ff = -ff;
				if (drawflip == 0)
					drawflip = 1;
				else
					drawflip = 0;
				image_index = 3;
				event_user(5);
				image_index = 0;
			}
			if (attacktimer >= (((25 / f) + ((kick_amount * 14) / f)) - (20 / f)) && attacktimer > kickthresholda && o_boxingcontroller.wireframe_boxing == 0)
			{
				prekick_timer += 1;
				if (prekick_timer <= (6 / f))
					vspeed -= (1 * f);
				if (prekick_timer > (6 / f))
				{
					vspeed += (1 * f);
					if (vspeed > 0)
						vspeed = 0;
				}
			}
			if (attacktimer >= (((25 / f) + (14 / f)) - (20 / f)) && attacktimer > kickthresholda && o_boxingcontroller.wireframe_boxing == 1)
			{
				prekick_timer += 1;
				if (prekick_timer <= (8 / f))
					vspeed -= (0.75 * f);
				if (prekick_timer > (8 / f))
				{
					vspeed += (0.75 * f);
					if (vspeed > 0)
						vspeed = 0;
				}
			}
			if (attacktimer >= ((25 / f) + ((kick_amount * 14) / f)) && attacktimer > kickthresholdb)
				speed = 0;
			if (attacktimer >= ((25 / f) + ((kick_amount * 14) / f)) && attacktimer > (kickthresholdb + a))
			{
				kicks_done = 0;
				speed = 0;
				attackcon = 2;
				attacktimer = 0;
				image_index = 1;
			}
		}
		if (attackcon == 2)
		{
			makedizzy = (100 / f) + ((kick_amount * 20) / f);
			sprite_index = spr_bqueen_kick;
			if (o_boxingcontroller.wireframe_boxing == 1)
				sprite_index = spr_bqueen_kick_wireframe;
			attacktimer += 1;
			if (attacktimer == 1)
			{
				if (arcade)
				{
					snd_play(snd_heavyswing_bc);
					kickyell = snd_play(snd_queenhowl_b_bc);
				}
				else
				{
					snd_play(snd_heavyswing);
					kickyell = snd_play(snd_queenhowl_b);
				}
				audio_sound_pitch(kickyell, (1 + (kick_amount * 0.08)) - (kicks_done * 0.08));
				attack_succeeded = 0;
				kick_hitbox = instance_create(basex, basey - 50, o_boxing_hitbox);
				with (kick_hitbox)
				{
					give_hurt = 34 / f;
					timer = 4 / f;
					damage = 40 * o_boxingcontroller.failed_kick_tutorial_counter;
					if (o_boxingcontroller.succeeded_kick_tutorial == 1)
						damage = 40;
					if (o_boxingqueen.kick_amount == 2)
						damage = floor(damage * 0.6);
					if (o_boxingqueen.kick_amount >= 3)
						damage = floor(damage * 0.5);
					kick = 1;
					image_yscale = 10;
					image_xscale = 3;
				}
				kick_hitbox.hit_direction = drawflip;
				hspeed = -3 * ff;
				vspeed = -4 * f;
			}
			if (attacktimer >= 1)
				vspeed += 1;
			if (attacktimer == (4 / f))
			{
				image_index = 2;
				invincible_l = 0;
				invincible_r = 0;
				blocking = -1;
			}
			if (attacktimer == 7)
			{
				attackcon = 4;
				attacktimer = 0;
				kicks_done += 1;
				if (kicks_done == kick_amount && playerhitbykick == 0 && kick_amount > 2)
				{
					attackcon = 6;
					attacktimer = 0;
					if (ff == 1)
						hspeed = -2;
					else
						hspeed = 2;
					vspeed = -3;
					gravity = 1.5;
					gravity_direction = 270;
					sprite_index = spr_bqueen_kick_wiff;
				}
				else
				{
					speed = 0;
				}
			}
		}
		if (attackcon == 4)
		{
			image_index = 2;
			attacktimer += 1;
			if (kicks_done < kick_amount && attacktimer >= (12 / f))
			{
				y = remy;
				x = remx;
				ff = -ff;
				if (drawflip == 0)
					drawflip = 1;
				else
					drawflip = 0;
				attackcon = 5;
				attacktimer = 0;
				invincible_l = 1;
				invincible_r = 1;
				image_index = 0;
			}
			if (attacktimer >= (((55 / f) + ((kick_amount * 5) / f)) - (attack_succeeded * ((26 / f) + ((kick_amount * 5) / f)))))
			{
				if (instance_exists(o_boxing_wireframe) && o_boxing_wireframe.text == o_boxingcontroller.dodge_string)
					o_boxing_wireframe.text = o_boxingcontroller.default_string;
				attackcon = 0;
				y = basey;
				vspeed = 0;
				hspeed = 0;
				attack_succeeded = 0;
				event_user(1);
			}
		}
		if (attackcon == 5)
		{
			attacktimer += 1;
			if (attacktimer >= (15 / f))
			{
				attackcon = 2;
				image_index = 1;
				attacktimer = 0;
			}
		}
		if (attackcon == 6)
		{
			attacktimer += 1;
			if (attacktimer < 2)
			{
			}
			if (attacktimer == 7)
			{
				if (ff == 1)
					hspeed = -1;
				else
					hspeed = 1;
				vspeed = -4 * f;
				gravity_direction = 270;
				gravity = 1.5;
			}
			if (attacktimer == 16)
			{
				hspeed = 0;
				vspeed = 0;
				gravity = 0;
			}
			if (attacktimer == 29)
			{
				hspeed = 0;
				vspeed = 0;
				gravity = 0;
			}
			if (attacktimer >= 40)
			{
				sprite_index = spr_bqueen_idle;
				image_index = 0;
				gravity = 0;
				repeat (10)
				{
					if (x < basex)
						x += 1;
					if (x > basex)
						x -= 1;
				}
			}
			if (attacktimer >= 45)
			{
				if (instance_exists(o_boxing_wireframe) && o_boxing_wireframe.text == o_boxingcontroller.dodge_string)
					o_boxing_wireframe.text = o_boxingcontroller.default_string;
				attackcon = 0;
				y = basey;
				vspeed = 0;
				hspeed = 0;
				gravity = 0;
				attack_succeeded = 0;
				snd_pitch(snd_bell_bounce_short, 1);
				event_user(1);
			}
		}
	}
	if (attacktype == 2)
	{
		if (attackcon == 0)
		{
			blocking = -1;
			sprite_index = spr_bqueen_splash;
			image_index = 0;
			if (arcade)
				snd_play(motor_upper_2_bc);
			else
				snd_play(motor_upper_2);
			if (drawflip == 0)
			{
				invincible_l = 1;
				invincible_r = 1;
				ff = -1;
				hspeed = -4 * f;
				vspeed = -2 * f;
			}
			if (drawflip == 1)
			{
				invincible_l = 1;
				invincible_r = 1;
				ff = 1;
				hspeed = 4 * f;
				vspeed = -2 * f;
			}
			attackcon = 1;
		}
		if (attackcon == 1)
		{
			attacktimer += 1;
			if (attacktimer >= (10 / f))
				speed = 0;
			var a = 0;
			if (delayattack == 1)
				a = 12;
			punch_type = 1;
			if ((attacktimer == ((20 / f) + a) && punch_type == 0) || (attacktimer == ((30 / f) + a) && punch_type == 1) || (attacktimer == ((12 / f) + a) && punch_type == 2))
			{
				if (delayattacktelegraph == 0)
				{
					snd_play(snd_spearappear);
					if (drawflip == 0)
					{
						instance_create(x + 6, y - 180, obj_green_light);
					}
					else
					{
						instance_create(x - 6, y - 180, obj_green_light);
						with (obj_green_light)
							image_xscale = -1;
					}
					delayattacktelegraph = 1;
				}
			}
			if (punch_type == 0)
			{
				if (attacktimer >= ((36 / f) + a))
				{
					attackcon = 2;
					attacktimer = 0;
				}
			}
			if (punch_type == 1)
			{
				if (attacktimer >= ((46 / f) + a))
				{
					attackcon = 2;
					attacktimer = 0;
				}
			}
			if (punch_type == 2)
			{
				if (attacktimer >= ((28 / f) + a))
				{
					attackcon = 2;
					attacktimer = 0;
				}
			}
		}
		if (attackcon == 2)
		{
			delayattacktelegraph = 0;
			attack_succeeded = 0;
			invincible_l = 1;
			invincible_r = 1;
			image_index = 1;
			attacktimer += 1;
			if (arcade)
			{
				if (attacktimer == 1)
				{
					y += 15;
					x -= (20 * ff);
					snd_play(motor_upper_quick_mid_bc);
				}
			}
			else if (attacktimer == 1)
			{
				y += 15;
				x -= (20 * ff);
				snd_play(motor_upper_quick_mid);
			}
			if (attacktimer == 2)
			{
				y += 10;
				x -= (12 * ff);
			}
			if (attacktimer == 3)
			{
				y += 5;
				x -= (8 * ff);
			}
			if (attacktimer == 4)
			{
				y += 2;
				x -= (4 * ff);
				attackcon = 3;
				attacktimer = 0;
			}
		}
		if (attackcon == 3)
		{
			image_index = 2;
			attacktimer += 1;
			if (attacktimer == 1)
				snd_play(snd_laz_c);
			if (attacktimer <= 5)
			{
				fakesplash = instance_create(((x - (ff * 20)) + (60 * ff)) - (attacktimer * ff * 20), y - 60, o_boxing_splash);
				fakesplash.friction = -0.5;
				fakesplash.hspeed = (-2 - attacktimer) * ff;
				fakesplash.vspeed = 2;
			}
			if (attacktimer == 1)
			{
				splash_hitbox = instance_create(x - (ff * 40), y - 40, o_boxing_hitbox);
				with (splash_hitbox)
				{
					hit_dodging = 1;
					give_hurt = 22 / f;
					timer = 2;
					damage = 30;
					image_yscale = 5;
					image_xscale = 12;
				}
				splash_hitbox.hit_direction = drawflip;
				splash_hitbox_graze = instance_create(x - (ff * 30), y - 40, o_boxing_hitbox);
				with (splash_hitbox_graze)
				{
					graze_only = 1;
					image_xscale = 14;
					image_yscale = 5;
				}
			}
			if (attacktimer >= 2)
			{
				makedizzy = 140 / f;
				invincible_l = 0;
				invincible_r = 0;
				blocking = -1;
			}
			if ((splash_amount == 2 && attacktimer >= (15 / f) && punch_type != 2) || (splash_amount == 2 && attacktimer >= (7 / f) && punch_type == 2))
			{
				if (drawflip == 0)
					drawflip = 1;
				else
					drawflip = 0;
				attacktimer = 0;
				attackcon = 0;
				splash_amount = 0;
				image_index = 0;
			}
			if (attacktimer >= ((45 / f) - ((attack_succeeded * 20) / f)))
			{
				vspeed -= (6 * f);
				if (y <= (basey + 20))
				{
					attackcon = 0;
					y = basey;
					vspeed = 0;
					hspeed = 0;
					attack_succeeded = 0;
					event_user(1);
				}
			}
		}
	}
	if (attacktype == 3)
	{
		if (attackcon == 0)
		{
			makedizzy = 180 / f;
			blocking = -1;
			if (arcade)
				snd_play(snd_queen_laugh_0_bc);
			else
				snd_play(snd_queen_laugh_0);
			sprite_index = spr_bqueen_laugh;
			if (o_boxingcontroller.wireframe_boxing == 1)
				sprite_index = spr_bqueen_laugh_wireframe;
			image_index = 0;
			invincible_l = 0;
			invincible_r = 0;
			attackcon = 1;
			attacktimer = 0;
			laughtimer = 0;
		}
		if (attackcon == 1)
		{
			laughtimer += 1;
			attacktimer += 1;
			if (o_boxinghud.sub_healthbar_count == 0 && o_boxingcontroller.beat_phase2_no_damage_taken == 1)
				attacktimer += 3;
			if (laughtimer == (10 / f))
			{
				if (image_index == 0)
					image_index = 1;
				else
					image_index = 0;
				laughtimer = 0;
			}
			if (attacktimer >= (100 / f))
				attackcon = 2;
		}
		if (attackcon == 2)
		{
			attackcon = 0;
			attacktype = 0;
			state = 0;
			sprite_index = spr_bqueen_idle;
			if (o_boxingcontroller.wireframe_boxing == 1)
				sprite_index = spr_bqueen_idle_wireframe;
			event_user(1);
			event_user(2);
			if (attacktype == 3)
				sprite_index = spr_bqueen_laugh;
			if (o_boxingcontroller.wireframe_boxing == 1 && attacktype == 3)
				sprite_index = spr_bqueen_laugh_wireframe;
		}
	}
	if (attacktype == 4)
	{
		if (attackcon == 0 && pirouette_amount != 7)
		{
			blocking = -1;
			sprite_index = spr_bqueen_pirouette;
			image_index = 0;
			friction = 0;
			gravity = 0;
			invincible_l = 1;
			invincible_r = 1;
			vspeed = -8 * f;
			attacktimer = 0;
			attackcon = 1;
		}
		if (attackcon == 0 && pirouette_amount == 7)
		{
			blocking = -1;
			snd_play(snd_cardrive);
			snd_pitch(snd_cardrive, 1.2);
			specialcon = 1;
			drawflip = 1;
			sprite_index = spr_bqueen_ducking;
			image_index = 0;
			friction = 0;
			gravity = 0;
			invincible_l = 1;
			invincible_r = 1;
			attacktimer = 0;
			attackcon = 0.5;
		}
		if (attackcon == 0.5 && pirouette_amount == 7)
		{
			attacktimer++;
			if (attacktimer <= 15)
				x = (basex - random(10 - (attacktimer / 1.5))) + random((10 - (attacktimer / 1.5)) * 2);
			if (attacktimer <= 15)
				y = (basey - random(10 - (attacktimer / 1.5))) + random((10 - (attacktimer / 1.5)) * 2);
			if (attacktimer == 30)
			{
				x = basex;
				y = basey;
				blocking = -1;
				sprite_index = spr_bqueen_pirouette;
				image_index = 0;
				friction = 0;
				gravity = 0;
				vspeed = -8 * f;
				attacktimer = 0;
				attackcon = 1;
			}
		}
		if (attackcon == 1)
		{
			attacktimer_threshold = 18 / f;
			if (pirouette_type == 1)
				attacktimer_threshold = 20 / f;
			pirouette_count = 0;
			if (vspeed < 0)
				vspeed += (0.5 * f);
			if (vspeed >= 0)
			{
				attacktimer += 1;
				if (attacktimer == 1)
				{
					sprite_index = spr_bqueen_pirouette_flash;
					event_user(5);
					sprite_index = spr_bqueen_pirouette;
					if (arcade)
						snd_play(snd_bell_bc);
					else
						snd_play(snd_bell_bounce_short);
				}
				if (attacktimer >= 1 && attacktimer < (15 / f) && pirouette_type == 1)
				{
					afterimage = instance_create(x, y, o_afterimage);
					afterimage.sprite_index = sprite_index;
					afterimage.hasboss = 0;
					afterimage.rate = 0.1;
					afterimage.image_xscale = 2;
					afterimage.image_yscale = 2;
					afterimage.gravity = -1 * f;
					afterimage.hspeed = (random(4) - 2) * f;
				}
				if (attacktimer >= attacktimer_threshold)
					attackcon = 2;
			}
		}
		if (attackcon == 2)
		{
			attack_succeeded = 0;
			vspeed = 16 * f;
			if (pirouette_amount == 7)
				vspeed = 12 * f;
			depth = o_boxingcontroller.depth - 1;
			image_speed = 0.25 * f;
			attacktimer = 0;
			attackcon = 3;
			snd_play(snd_fall_cool_deep);
			snd_pitch(snd_fall_cool_deep, 1.7);
			snd_volume(snd_fall_cool_deep, 0.5, 0);
			dive_hitbox = instance_create(x, y - 20, o_boxing_hitbox);
			with (dive_hitbox)
			{
				hit_ducking = 1;
				give_hurt = 30 / f;
				give_invincibility = 40 / f;
				timer = 400;
				damage = 25;
				image_yscale = 4;
				image_xscale = 2.8;
			}
			dive_hitbox.hit_direction = drawflip;
		}
		if (attackcon == 3)
		{
			pirouette_done = 0;
			if (i_ex(dive_hitbox))
				dive_hitbox.y = y - 20;
			if (pirouette_type == 1)
			{
				if (y >= 780)
					attacktimer -= 1;
				if (attacktimer < 0 && pirouette_count < pirouette_amount)
				{
					snd_play(snd_fall_cool_deep);
					snd_pitch(snd_fall_cool_deep, 1.7);
					pirouette_count += 1;
					attacktimer = 36 / f;
					if (pirouette_amount == 7)
						attacktimer = 46 / f;
					p_side = choose(-1, 0, 1);
					pqueen1 = instance_create(basex + (90 * p_side), -20, o_fallingqueen);
					p_side_2 = choose(-1, 0, 1);
					while (p_side_2 == p_side)
						p_side_2 = choose(-1, 0, 1);
					pqueen2 = instance_create(basex + (90 * p_side_2), -20, o_fallingqueen);
				}
				if (attacktimer < (-20 / f) && pirouette_count >= pirouette_amount)
					pirouette_done = 1;
			}
			if (pirouette_type == 0 && y >= 780)
				pirouette_done = 1;
			if (pirouette_done == 1)
			{
				pirouette_count += 1;
				if (pirouette_count >= pirouette_amount)
				{
					with (dive_hitbox)
						instance_destroy();
					attackcon = 4;
					y = basey;
					x = -20;
					vspeed = 0;
					hspeed = 24 * f;
					depth = original_depth;
				}
				else if (pirouette_type == 0)
				{
					p_side = choose(-1, 0, 1);
					y = -20;
					vspeed = 14 * f;
					if (i_ex(dive_hitbox))
					{
						dive_hitbox.x = basex + (90 * p_side);
						if (dive_hitbox.x != basex)
							dive_hitbox.hit_dodging = 1;
						else
							dive_hitbox.hit_dodging = 0;
						if (dive_hitbox.x == (basex - 90))
							dive_hitbox.hit_direction = 0;
						if (dive_hitbox.x == (basex + 90))
							dive_hitbox.hit_direction = 1;
					}
					x = basex + (p_side * 90);
				}
			}
		}
		if (attackcon == 4)
		{
			pirouette_count = 0;
			pirouette_done = 0;
			if (x >= (basex - 60))
			{
				makedizzy = 200 / f;
				invincible_l = 0;
				invincible_r = 0;
				blocking = -1;
				if (o_boxingcontroller.phase3_hit_check == 1)
				{
					o_boxingcontroller.phase3_damage_multiplier += 0.2;
					o_boxingcontroller.phase3_hit_check = 0;
				}
			}
			if (x >= (basex - 10))
			{
				makedizzy = 200 / f;
				vspeed = 0;
				hspeed = 0;
				image_speed = 0;
				image_index = 0;
				sprite_index = spr_bqueen_leggy;
				x = basex;
				if (arcade)
					snd_play(motor_upper_quick_high_bc);
				else
					snd_play(motor_upper_quick_high);
				invincible_l = 0;
				invincible_r = 0;
				blocking = -1;
				attacktimer = 0;
				attackcon = 5;
			}
		}
		if (attackcon == 5)
		{
			attacktimer += 1;
			if (attacktimer >= ((45 / f) - ((attack_succeeded * 45) / f)))
			{
				snd_volume(snd_fall_cool_deep, 1, 0);
				speed = 0;
				image_index = 0;
				image_speed = 0;
				attackcon = 0;
				attacktimer = 0;
				attack_succeeded = 0;
				event_user(1);
			}
		}
	}
	if (attacktype == 5)
	{
		if (attackcon == 0)
		{
			attack_succeeded = 0;
			blocking = -1;
			invincible_r = 1;
			invincible_l = 1;
			sprite_index = spr_bqueen_leggy;
			if (o_boxingcontroller.wireframe_boxing == 1)
				sprite_index = spr_bqueen_laugh_wireframe;
			if (o_boxingcontroller.wireframe_boxing == 1)
			{
				o_boxing_wireframe.text = o_boxingcontroller.duck_string;
				o_boxing_wireframe.text_reset_timer = 1;
				o_boxing_wireframe.text_timer = 0;
				duckhintcount++;
				if (duckhintcount >= 4)
				{
					duckhintcount = 0;
					with (o_boxing_wireframe)
					{
						msgsetsubloc(0, "Press ~1&to Duck!", scr_get_input_name(0), "o_boxingqueen_slash_Step_0_gml_1200_0");
						global.typer = 50;
						queenbubble = scr_enemyblcon(camerax() + 428, cameray() + 388, 7);
						talktimer = 0;
						talking = true;
						with (queenbubble)
						{
							depth = obj_ch2_scene10.qu_actor.depth - 1;
							auto_length = 1;
							side = -1;
							xoffset = 222;
						}
						talktype = 1;
					}
				}
			}
			vspeed = -0.5 * f;
			friction = -0.4 * f;
			attackcon = 1;
			wheeltimer = 20 / f;
			wheel_count = 0;
			minitimer = 0;
			attacktimer = 0;
			firstwheelattackdelay = 0;
			if (firstwheelattack == 0)
				firstwheelattackdelay = 10;
			if (o_boxingcontroller.wireframe_boxing == 0)
			{
				instance_create(x - 132, y, obj_wheel_tutorial_arrow);
				instance_create(x + 84, y, obj_wheel_tutorial_arrow);
			}
		}
		if (attackcon == 1)
		{
			wheel_done = 0;
			wheeltimer += 1;
			var a = 0;
			if (o_boxingcontroller.wireframe_boxing == 1)
				a = 10;
			if (o_boxingcontroller.wireframe_boxing == 1 && wheel_count > 0)
				a = 20;
			if (o_boxingcontroller.wireframe_boxing == 0 && firstwheelattack == 0 && wheel_count != 0)
				a = 30;
			if (wheeltimer >= (((50 + a) / f) - ((wheel_type * 9) / f)))
			{
				wheeltimer = 0;
				wheel1 = instance_create(-215, 255, o_boxing_wheel);
				wheel2 = instance_create(825, 255, o_boxing_wheel);
				with (wheel2)
				{
					hspeed = -hspeed;
					rotspeed = -rotspeed;
				}
				if (o_boxingcontroller.wireframe_boxing == 0 && firstwheelattack == 0)
				{
					with (wheel1)
						hspeed /= 1.4;
					with (wheel2)
						hspeed /= 1.4;
				}
				wheel_count += 1;
				if (punch_type == 2 && wheel_count >= (wheel_amount + 2))
					wheel_done = 1;
				if (punch_type != 2 && wheel_count >= wheel_amount)
					wheel_done = 1;
				if (o_boxingcontroller.wireframe_boxing == 1 && first_octagon_attack == 0)
					wheel_done = 1;
			}
			minitimer += 1;
			attacktimer += 1;
			if (attacktimer == 1)
			{
				snd_play(snd_wing);
				snd_pitch(snd_wing, 0.75 + (random(1) / 2));
			}
			if (attacktimer < (20 / f) && minitimer >= (4 / f))
			{
				minitimer = 0;
				miniwheel = instance_create(x - 74, y - 122, o_miniwheel);
				miniwheel.hspeed = (-5 - random(1)) * f;
				miniwheel = instance_create(x + 66, y - 122, o_miniwheel);
				miniwheel.hspeed = (5 + random(1)) * f;
			}
			if (attacktimer == (20 / f))
			{
				vspeed = 0;
				friction = 0;
				sprite_index = spr_bqueen_laugh;
				if (o_boxingcontroller.wireframe_boxing == 1)
					sprite_index = spr_bqueen_laugh_wireframe;
				snd_play(snd_queen_laugh_0);
				snd_volume(snd_queen_laugh_0, 0.5, 0);
				if (o_boxingcontroller.wireframe_boxing == 0)
					image_speed = 0.1;
			}
			if (wheel_done == 1)
			{
				attackcon = 2;
				attacktimer = 0;
			}
		}
		if (attackcon == 2)
		{
			attacktimer += 1;
			if (attacktimer == ((38 / f) + firstwheelattackdelay))
			{
				invincible_l = 0;
				invincible_r = 0;
				makedizzy = 180 / f;
			}
			if (attacktimer >= ((34 / f) + firstwheelattackdelay))
			{
				if (y < basey)
				{
					vspeed += (1 * f);
					firstwheelattack = 0;
				}
				else
				{
					if (o_boxingcontroller.phase3_hit_check == 1)
					{
						o_boxingcontroller.phase3_damage_multiplier += 0.2;
						o_boxingcontroller.phase3_hit_check = 0;
					}
					speed = 0;
					y = basey;
					x = basex;
				}
			}
			if (attacktimer >= (((100 / f) - ((attack_succeeded * 25) / f)) + firstwheelattackdelay))
			{
				snd_volume(snd_queen_laugh_0, 0.5, 1);
				if (o_boxingcontroller.wireframe_boxing == 1)
					first_octagon_attack = 1;
				if (instance_exists(o_boxing_wireframe) && o_boxing_wireframe.text == o_boxingcontroller.duck_string)
					o_boxing_wireframe.text = o_boxingcontroller.default_string;
				event_user(1);
			}
		}
	}
	if (attacktype == 6)
	{
		if (attackcon == 0)
		{
			blocking = -1;
			sprite_index = spr_bqueen_kick;
			image_index = 0;
			vspeed = -24 * f;
			invincible_l = 1;
			invincible_r = 1;
			attacktimer = 0;
			attackcon = 1;
			if (arcade)
			{
				snd_play(snd_jump_bc);
				snd_play(snd_rocket_bc);
				snd_play(snd_screenshake_bc);
			}
			else
			{
				snd_play(snd_jump);
				snd_play(snd_rocket);
				snd_play(snd_screenshake);
			}
			d = instance_create(0, 0, obj_shake);
			d.shakex = ceil(2);
			d.shakey = ceil(2);
		}
		if (attackcon == 1)
		{
			attacktimer += 1;
			flash = instance_create(x, y, o_afterimage);
			flash.sprite_index = sprite_index;
			flash.image_index = image_index;
			flash.image_xscale = image_xscale;
			flash.image_yscale = image_yscale;
			if (drawflip == 1)
				flash.image_xscale *= -1;
			flash.image_blend = image_blend;
			flash.image_speed = 0;
			flash.boss = id;
			flash.image_alpha = 1.5;
			flash.rate = 0.2;
			flash.hasboss = 0;
			if (vspeed < 0)
				vspeed += (0.4 * f);
			if (attacktimer > (10 / f))
				attackcon = 2;
		}
		if (attackcon == 2)
		{
			attack_succeeded = 0;
			attacktimer = 0;
			attackcon = 3;
			instance_create(x, y - 20, obj_bg_attack);
			if (punch_type == 1)
			{
				with (obj_bg_attack)
					variant = 1;
			}
			if (punch_type == 2)
			{
				with (obj_bg_attack)
					variant = 2;
			}
		}
		if (attackcon == 3)
		{
			if (!instance_exists(obj_bg_attack))
			{
				y = basey;
				x = -20;
				vspeed = 0;
				hspeed = 24 * f;
				depth = original_depth;
				attack_succeeded = 1;
				attackcon = 4;
				if (o_boxingcontroller.phase3_hit_check == 1)
				{
					o_boxingcontroller.phase3_damage_multiplier += 0.2;
					o_boxingcontroller.phase3_hit_check = 0;
				}
			}
		}
		if (attackcon == 4)
		{
			if (x >= (basex - 60))
			{
				makedizzy = 200 / f;
				invincible_l = 0;
				invincible_r = 0;
				blocking = -1;
			}
			if (x >= (basex - 10))
			{
				makedizzy = 200 / f;
				vspeed = 0;
				hspeed = 0;
				image_speed = 0;
				image_index = 0;
				sprite_index = spr_bqueen_leggy;
				x = basex;
				invincible_l = 0;
				invincible_r = 0;
				blocking = -1;
				attacktimer = 0;
				attackcon = 5;
			}
		}
		if (attackcon == 5)
		{
			attacktimer += 1;
			if (attacktimer >= ((45 / f) - ((attack_succeeded * 45) / f)))
			{
				speed = 0;
				image_index = 0;
				image_speed = 0;
				attackcon = 0;
				attack_succeeded = 0;
				event_user(1);
			}
		}
	}
	if (attacktype == 7)
	{
		if (attackcon == 0)
		{
			vertical_laser_amount = 3;
			horizontal_laser_amount = 2;
			if (punch_type == 1)
				horizontal_laser_amount = 4;
			blocking = -1;
			sprite_index = spr_bqueen_splash;
			image_index = 0;
			invincible_l = 1;
			invincible_r = 1;
			rand_fix = 0;
			if (drawflip == 0)
			{
				ff = -1;
				hspeed = -4;
				vspeed = -5;
			}
			if (drawflip == 1)
			{
				ff = 1;
				hspeed = 4;
				vspeed = -5;
			}
			attacktimer = 0;
			attackcon = 1;
		}
		if (attackcon == 1)
		{
			attacktimer += 1;
			if (attacktimer == (10 / f))
				speed = 0;
			if (attacktimer == (30 / f))
			{
				if (ff == -1)
				{
					hspeed = 2;
					vspeed = -6;
					drawflip = 1;
				}
				else
				{
					hspeed = -2;
					vspeed = -6;
					drawflip = 0;
				}
			}
			if (attacktimer >= (40 / f) && attacktimer <= (50 / f))
				speed = 0;
			if (attacktimer == (50 / f))
				sprite_index = spr_bqueen_laser_down;
			if (attacktimer == (70 / f))
			{
				sprite_index = spr_bqueen_laser_down_flash;
				event_user(5);
				sprite_index = spr_bqueen_laser_down;
			}
			if (attacktimer == (80 / f))
			{
				vertical_laser_amount -= 1;
				sprite_index = spr_bqueen_laser_down;
				image_index = 0;
				vspeed = -0.5;
				instance_create(x - 7, y - 37, obj_bq_laser_circle);
			}
			if (attacktimer > (80 / f) && attacktimer < (110 / f))
				vspeed = -0.2;
			if (attacktimer >= (110 / f) && attacktimer <= (130 / f))
			{
				speed = 0;
				image_index = 0;
				attacktimer = 80;
			}
			if (attacktimer == (160 / f))
			{
				var rand = irandom(30);
				if (rand_fix == 1)
				{
					rand = 10 + irandom(20);
				}
				else if (rand_fix == 2)
				{
					rand = 20 + irandom(20);
					if (rand > 30)
						rand = 5;
				}
				else if (rand_fix == 3)
				{
					rand = irandom(20);
				}
				if (rand_fix != 0)
				{
					if (rand < 10)
					{
						hspeed = -20 * f;
						if (x > 360)
							hspeed = -40 * f;
					}
					else if (rand >= 10 && rand < 20)
					{
						hspeed = 20 * f;
						if (x < 280)
							hspeed = 40 * f;
					}
					else if (rand >= 20)
					{
						hspeed = -20 * f;
						if (x < 320)
							hspeed = 20 * f;
					}
				}
				else if (rand < 10)
				{
					rand_fix = 1;
					hspeed = -20 * f;
					vspeed = 2 * f;
				}
				else if (rand >= 10 && rand < 20)
				{
					rand_fix = 2;
					hspeed = 20 * f;
					vspeed = 2 * f;
				}
				else if (rand > 20)
				{
					rand_fix = 3;
					vspeed = 3 * f;
				}
			}
			if (attacktimer >= (160 / f) && attacktimer <= (166 / f) && hspeed != 0)
			{
				afterimage = instance_create(x, y, o_afterimage);
				afterimage.sprite_index = sprite_index;
				afterimage.hasboss = 0;
				afterimage.rate = 0.1;
				afterimage.image_xscale = -2;
				if (drawflip == 0)
					afterimage.image_xscale = 2;
				afterimage.image_yscale = 2;
			}
			if (attacktimer == (166 / f))
			{
				speed = 0;
				if (vertical_laser_amount > 1)
					attacktimer = 24;
				else
					attacktimer = 83;
			}
			if (attacktimer == (170 / f))
				sprite_index = spr_bqueen_laser_down;
			if (attacktimer == (190 / f))
			{
				sprite_index = spr_bqueen_laser_down_flash;
				event_user(5);
				sprite_index = spr_bqueen_laser_down;
			}
			if (attacktimer == (200 / f))
			{
				sprite_index = spr_bqueen_laser_down;
				image_index = 0;
				vspeed = -0.5;
				instance_create(x - 7, y - 37, obj_bq_laser_circle);
			}
			if (attacktimer > (200 / f) && attacktimer < (260 / f))
				vspeed = -0.2;
			if (attacktimer == (260 / f))
			{
				speed = 0;
				sprite_index = spr_bqueen_splash;
				image_index = 0;
				attacktimer = 140;
			}
			if (attacktimer == (280 / f))
			{
				var rand = irandom(20);
				if (rand < 10)
				{
					ff = -1;
					move_towards_point(60, 415, 70);
					drawflip = 0;
				}
				else
				{
					ff = 1;
					move_towards_point(580, 415, 70);
					drawflip = 1;
				}
			}
			if ((attacktimer >= (280 / f) && attacktimer <= (400 / f) && hspeed != 0) || (attacktimer >= (280 / f) && vspeed != 0))
			{
				var rand = irandom(20);
				if (ff == -1 && x < 60)
				{
					hspeed = 0;
					x = 60;
				}
				if (ff == 1 && x > 580)
				{
					hspeed = 0;
					x = 580;
				}
				if (y > 415)
				{
					vspeed = 0;
					y = 415;
				}
				afterimage = instance_create(x, y, o_afterimage);
				afterimage.sprite_index = sprite_index;
				afterimage.hasboss = 0;
				afterimage.rate = 0.4;
				afterimage.image_xscale = -2;
				if (drawflip == 0)
					afterimage.image_xscale = 2;
				afterimage.image_yscale = 2;
				attacktimer = 320 / f;
			}
			if (attacktimer == (320 / f) && vspeed == 0 && hspeed == 0)
			{
				event_user(5);
				attacktimer = 328 / f;
			}
			if (attacktimer == (330 / f) && vspeed == 0 && hspeed == 0)
			{
				sprite_index = spr_bqueen_laser_side;
				image_index = 0;
				if (ff == 1)
					drawflip = 0;
				else
					drawflip = 1;
				instance_create(x, y, obj_bq_laser_horizontal_telegraph);
			}
			if (attacktimer >= (330 / f) && attacktimer < (374 / f) && !instance_exists(obj_bq_laser_horizontal_telegraph) && !instance_exists(obj_bq_laser_circle))
			{
				circle = instance_create(x, y, obj_bq_laser_circle);
				circle.horizontal = 1;
				horizontal_laser_amount -= 1;
				attacktimer = 430 / f;
			}
			if (attacktimer == (450 / f))
			{
				sprite_index = spr_bqueen_laugh;
				image_index += 0.2;
				if (path_exists(path))
					path_delete(path);
				if (x < 320)
				{
					path = path_add();
					path_set_kind(path, 1);
					path_set_closed(path, false);
					path_add_point(path, x, y, 100);
					path_add_point(path, 320, 300, 100);
					path_add_point(path, 580, y, 100);
					path_start(path, 40, path_action_stop, 1);
				}
				else
				{
					path = path_add();
					path_set_kind(path, 1);
					path_set_closed(path, false);
					path_add_point(path, x, y, 100);
					path_add_point(path, 320, 300, 100);
					path_add_point(path, 60, y, 100);
					path_start(path, 40, path_action_stop, 1);
				}
				makedizzy = 150 / f;
			}
			if (attacktimer > (450 / f) && attacktimer < (496 / f))
			{
				if (x > 260 && x < 380)
				{
					blocking = -1;
					invincible_l = 0;
					invincible_r = 0;
				}
				else
				{
					blocking = -1;
					invincible_l = 1;
					invincible_r = 1;
				}
			}
			if (attacktimer > (470 / f) && attacktimer < (496 / f) && path_index == -1)
			{
				if (x < 70 && path_index == -1)
				{
					hspeed = 0;
					x = 60;
					sprite_index = spr_bqueen_laser_side;
					image_index = 0;
					if (x < 320)
						drawflip = 1;
					else
						drawflip = 0;
					attacktimer = 496 / f;
				}
				if (x > 570 && path_index == -1)
				{
					hspeed = 0;
					x = 580;
					sprite_index = spr_bqueen_laser_side;
					image_index = 0;
					if (x < 320)
						drawflip = 1;
					else
						drawflip = 0;
					attacktimer = 496 / f;
				}
			}
			if (attacktimer == (496 / f))
				instance_create(x, y, obj_bq_laser_horizontal_telegraph);
			if (attacktimer >= (496 / f) && attacktimer < (545 / f) && !instance_exists(obj_bq_laser_horizontal_telegraph) && !instance_exists(obj_bq_laser_circle))
			{
				circle = instance_create(x, y, obj_bq_laser_circle);
				circle.horizontal = 1;
				horizontal_laser_amount -= 1;
				if (horizontal_laser_amount > 0)
					attacktimer = 430 / f;
			}
			if (attacktimer == (570 / f))
			{
				if (x < 320)
					hspeed = -20;
				else
					hspeed = 20;
			}
			if (attacktimer == (576 / f))
			{
				attackcon = 3;
				attacktimer = 0;
			}
		}
		if (attackcon == 3)
		{
			y = basey;
			if (hspeed > 0)
			{
				x = -20;
				hspeed = 24 * f;
			}
			if (hspeed < 0)
			{
				x = 660;
				hspeed = -24 * f;
			}
			vspeed = 0;
			depth = original_depth;
			attack_succeeded = 1;
			attackcon = 4;
		}
		if (attackcon == 4)
		{
			if (x >= (basex - 60))
			{
				makedizzy = 200 / f;
				invincible_l = 0;
				invincible_r = 0;
				blocking = -1;
			}
			if (x >= (basex - 10) && x <= (basex + 10))
			{
				makedizzy = 200 / f;
				vspeed = 0;
				hspeed = 0;
				image_speed = 0;
				image_index = 0;
				sprite_index = spr_bqueen_leggy;
				x = basex;
				invincible_l = 0;
				invincible_r = 0;
				blocking = -1;
				attacktimer = 0;
				attackcon = 5;
			}
		}
		if (attackcon == 5)
		{
			attacktimer += 1;
			if (attacktimer >= ((45 / f) - ((attack_succeeded * 45) / f)))
			{
				speed = 0;
				image_index = 0;
				image_speed = 0;
				attackcon = 0;
				attack_succeeded = 0;
				event_user(1);
			}
		}
	}
	if (attacktype == 8)
	{
		if (attackcon == 0)
		{
			if (punch_type == 1)
				baseball_amount = 1;
			if (punch_type == 2)
				baseball_amount = 2;
			if (punch_type == 3)
				baseball_amount = 3;
			if (punch_type == 4)
				baseball_amount = 3;
			blocking = -1;
			invincible_l = 1;
			invincible_r = 1;
			arcadebaseballused++;
			attacktimer = 0;
			o_boxingcontroller.hit_baseball = 0;
			baseball_hit_boss_number = 0;
			baseball_timer = -24;
			sprite_index = spr_bqueen_laser_side;
			if (o_boxingcontroller.wireframe_boxing == 1)
				sprite_index = spr_bqueen_laser_side_wireframe;
			image_index = 0;
			y = basey;
			vspeed = -32;
			friction = 1.655;
			if (first_normal_baseball_throw == 1 || o_boxingcontroller.wireframe_boxing == 1)
			{
				vspeed = -48.338;
				friction = 2.5;
			}
			if (o_boxingcontroller.wireframe_boxing == 0)
				__view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0) + vspeed + 3);
			drawflip = 0;
			o_boxinghud.hide_ui = 1;
			attackcon = 1;
		}
		if (attackcon == 1)
		{
			attacktimer += 1;
			var end_attack_con_timer;
			if (first_normal_baseball_throw == 0)
				end_attack_con_timer = 40 / f;
			if (first_normal_baseball_throw == 1 || o_boxingcontroller.wireframe_boxing == 1)
				end_attack_con_timer = 30 / f;
			if (attacktimer < end_attack_con_timer)
			{
				var cam_speed = vspeed + 3;
				if (cam_speed > 0)
					cam_speed = 0;
				if (o_boxingcontroller.wireframe_boxing == 0)
					__view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0) + cam_speed);
			}
			if (attacktimer > end_attack_con_timer)
			{
				attackcon = 3;
				attacktimer = 0;
				sprite_index = spr_bqueen_laser_side;
				if (o_boxingcontroller.wireframe_boxing == 1)
					sprite_index = spr_bqueen_laser_side_wireframe;
			}
			if (attacktimer == (20 / f) && o_boxingcontroller.wireframe_boxing == 1)
			{
				baseball_amount -= 1;
				baseball = instance_create(x, -20, obj_bq_baseball);
			}
		}
		if (attackcon == 3)
		{
			attacktimer += 1;
			if (attacktimer == (2 / f))
			{
				if (o_boxingcontroller.wireframe_boxing == 0)
				{
					if (arcade)
						snd_play(snd_cardrive_bc);
					else
						snd_play(snd_cardrive);
				}
				specialcon = 1;
				attacktimer = 54 / f;
			}
			if (attacktimer == (56 / f))
			{
				sprite_index = spr_bqueen_laser_side_flash;
				if (o_boxingcontroller.wireframe_boxing == 1)
					sprite_index = spr_bqueen_laser_side_flash_wireframe;
				event_user(5);
				sprite_index = spr_bqueen_laser_side;
				if (o_boxingcontroller.wireframe_boxing == 1)
					sprite_index = spr_bqueen_laser_side_wireframe;
				if (first_normal_baseball_throw == 1 || o_boxingcontroller.wireframe_boxing == 1)
				{
					o_afterimage.rate = 0.4;
					attacktimer = 80 / f;
				}
			}
			if (attacktimer >= (82 / f) && attacktimer < (86 / f))
			{
				sprite_index = spr_bqueen_punch;
				if (o_boxingcontroller.wireframe_boxing == 1)
					sprite_index = spr_bqueen_punch_wireframe;
				image_index = 1;
			}
			if (attacktimer == (86 / f))
			{
				sprite_index = spr_bqueen_punch;
				if (o_boxingcontroller.wireframe_boxing == 1)
					sprite_index = spr_bqueen_punch_wireframe;
				image_index = 2;
			}
			if (attacktimer == (90 / f) && o_boxingcontroller.wireframe_boxing == 0)
			{
				baseball_amount -= 1;
				if (drawflip == 0)
					baseball = instance_create(x + 5, y - 40, obj_bq_baseball);
				if (drawflip == 1)
					baseball = instance_create(x - 5, y - 40, obj_bq_baseball);
				if (punch_type == 1)
					baseball.vspeed = 18 / f;
				if (punch_type == 4 && irandom(10) < 5)
					baseball.vspeed = 18 / f;
			}
			if (attacktimer > (90 / f) && attacktimer < (194 / f))
			{
				var cam_vspeed = 5 * f;
				if (instance_exists(obj_bq_baseball) && obj_bq_baseball.vspeed > (12 / f))
					cam_vspeed = 11 * f;
				if (__view_get(e__VW.YView, 0) < 0 && o_boxingcontroller.wireframe_boxing == 0)
					__view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0) + cam_vspeed);
				if (__view_get(e__VW.YView, 0) > 0 && o_boxingcontroller.wireframe_boxing == 0)
					__view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0));
			}
			if (attacktimer == (194 / f))
				__view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0));
			if (attacktimer >= (90 / f) && attacktimer < (194 / f) && baseball_amount > 0)
			{
				if (!instance_exists(obj_bq_baseball))
				{
					baseball_amount -= 1;
					if (drawflip == 0)
						baseball = instance_create(x + 5, y - 40, obj_bq_baseball);
					if (drawflip == 1)
						baseball = instance_create(x - 5, y + 70, obj_bq_baseball);
					if (punch_type == 1)
						baseball.vspeed = 20 / f;
					if (punch_type == 4 && irandom(10) < 5)
						baseball.vspeed = 20 / f;
					if (first_normal_baseball_throw == 1)
					{
						baseball.vspeed = 34 / f;
						if (punch_type == 1)
							baseball.vspeed = 34 / f;
						if (punch_type == 4 && irandom(10) < 5)
							baseball.vspeed = 34 / f;
					}
				}
			}
			if ((attacktimer > (194 / f) && instance_exists(obj_bq_baseball) && o_boxingcontroller.dead == 0) || (attacktimer > (194 / f) && baseball_amount > 0 && o_boxingcontroller.dead == 0))
				attacktimer = 188 / f;
			if ((attacktimer > (90 / f) && attacktimer < (194 / f) && !instance_exists(obj_bq_baseball) && baseball_amount < 1) || (attacktimer < (194 / f) && o_boxingcontroller.dead == 1 && o_boxingcontroller.wireframe_boxing == 0))
				attacktimer = 194 / f;
			if (o_boxingcontroller.dead == 1)
			{
				with (obj_bq_baseball)
					x = -9999;
			}
			if (o_boxingcontroller.wireframe_boxing == 1)
			{
				if (attacktimer == (196 / f))
				{
					sprite_index = spr_bqueen_laugh;
					if (o_boxingcontroller.wireframe_boxing == 1)
						sprite_index = spr_bqueen_laugh_wireframe;
					image_index += 0.2;
					y = -2;
					gravity = 5;
				}
				if (attacktimer == (220 / f))
				{
					invincible_l = 0;
					invincible_r = 0;
				}
				if (attacktimer >= (196 / f) && vspeed > 0 && y > (basey - 39))
				{
					invincible_l = 0;
					invincible_r = 0;
					y = basey;
					vspeed = 0;
					gravity = 0;
				}
				if (attacktimer >= (260 / f))
				{
					x = basex;
					attackcon = 4;
					attacktimer = 0;
				}
			}
			if (o_boxingcontroller.hit_baseball == 0 && o_boxingcontroller.wireframe_boxing == 0)
			{
				if (attacktimer == (196 / f))
				{
					if (o_boxingcontroller.dead == 0)
					{
						if (arcade)
							snd_play(snd_queen_laugh_0_bc);
						else
							snd_play(snd_queen_laugh_0);
					}
					sprite_index = spr_bqueen_laugh;
					if (o_boxingcontroller.wireframe_boxing == 1)
						sprite_index = spr_bqueen_laugh_wireframe;
					image_index += 0.2;
					x = 200;
					y = -2;
					gravity = 5;
				}
				if (attacktimer >= (196 / f) && vspeed > 0 && y > (basey - 39))
				{
					y = basey;
					vspeed = 0;
					gravity = 0;
					o_boxinghud.hide_ui = 2;
				}
				if (attacktimer >= (260 / f))
					hspeed = 32;
				if (attacktimer >= (260 / f) && x > (basex - 31))
				{
					x = basex;
					attackcon = 4;
					attacktimer = 0;
				}
			}
			if (o_boxingcontroller.hit_baseball > 0 && o_boxingcontroller.wireframe_boxing == 0)
			{
				if (attacktimer == (196 / f))
				{
					if (arcade)
						snd_play(snd_queen_laugh_0_bc);
					else
						snd_play(snd_queen_laugh_0);
					sprite_index = spr_bqueen_laugh;
					if (o_boxingcontroller.wireframe_boxing == 1)
						sprite_index = spr_bqueen_laugh_wireframe;
					image_index += 0.2;
					y = -2;
					gravity = 5;
					x = 200;
					o_boxinghud.hide_ui = 2;
				}
				if (attacktimer >= (196 / f) && vspeed > 0 && y > (basey - 23))
				{
					y = basey;
					vspeed = 0;
					gravity = 0;
				}
				if (attacktimer >= (200 / f) && vspeed == 0 && !instance_exists(obj_bq_baseball_hits_boss))
					instance_create(-10, -40, obj_bq_baseball_hits_boss);
				if (attacktimer >= (210 / f) && instance_exists(obj_bq_baseball_hits_boss) && obj_bq_baseball_hits_boss.state == 1)
				{
					if (o_boxingcontroller.boxingtimer < 15)
						o_boxingcontroller.boxingtimer = 15;
					baseball_hit_boss_number += 1;
					hspeed = 32;
					if (o_boxinghud.sub_healthbar_count == 2)
						health_count -= 300;
					if (o_boxinghud.sub_healthbar_count != 2)
						health_count -= 80;
					if (health_count < 1)
						health_count = 1;
					invincible_l = 0;
					invincible_r = 0;
					blocking = -1;
					makedizzy = 200 / f;
					first_normal_baseball_throw = 1;
					o_boxinghud.healthbar_flash = 100;
					o_boxingqueen.health_count_prev_timer = o_boxingqueen.health_count_prev_timer_set;
					if (drawflip == 0)
						o_boxingqueen.drawflip = 1;
					if (drawflip == 1)
						o_boxingqueen.drawflip = 0;
					hitanim = 0;
					if (arcade)
					{
						punchnoise = snd_play(snd_punchmed_bc);
						snd_play(snd_damage_bc);
					}
					else
					{
						punchnoise = snd_play(snd_punchmed);
						snd_play(snd_damage);
					}
					if (dizzytimer <= 0)
					{
						noattack += 1;
					}
					else
					{
						if (arcade)
							snd_play(snd_metalhit_bc);
						else
							snd_play(snd_metalhit);
						audio_sound_pitch(punchnoise, 0.8);
					}
					blocking = -1;
					image_index = 0;
					sprite_index = spr_bqueen_hurt_effect;
					if (o_boxingcontroller.wireframe_boxing == 1)
						sprite_index = spr_bqueen_hurt;
					enddizzy = 0;
					if (makedizzy > 0)
					{
						dizzytimer = makedizzy;
						if (o_boxingcontroller.flameactive == 1)
							dizzytimer = makedizzy * 1.5;
						makedizzy = 0;
					}
					else
					{
						dizzytimer -= 20;
					}
					if (dizzytimer > 0 && dizzytimer <= 60)
					{
						dizzytimer = 0;
						enddizzy = 1;
					}
					if (dizzytimer > 0)
					{
						sprite_index = spr_bqueen_dizzy_hurt;
						if (o_boxingcontroller.wireframe_boxing == 1)
							sprite_index = spr_bqueen_dizzy_hurt_wireframe;
					}
					if (drawflip == 0 || drawflip == -1)
					{
						if (dizzytimer >= 60)
							hitanim = 1;
						else
							hitnaim = 2;
						if (enddizzy == 1)
							hitanim = 3;
					}
					if (drawflip == 1)
					{
						if (dizzytimer >= 60)
							hitanim = -1;
						else
							hitanim = -2;
						if (enddizzy == 1)
							hitanim = -3;
					}
					if (hitanim == 3 || hitanim == -3)
						scr_move_precise(2, (2 * hitanim) / 3, 2);
					if (hitanim == 1 || hitanim == -1)
						scr_move_precise(1, (2 * hitanim) / 1, 2);
					if (hitanim == 2 || hitanim == -2)
						scr_move_precise(0, (2 * hitanim) / 2, 2);
					if (hitanim == 0)
						scr_move_precise(1, 2, 2);
					hurttimer = 0;
					state = 1;
					friction = 0;
				}
			}
		}
		if (attackcon == 4)
		{
			attack_succeeded = 1;
			makedizzy = 200 / f;
			vspeed = 0;
			hspeed = 0;
			image_speed = 0;
			image_index = 0;
			sprite_index = spr_bqueen_leggy;
			if (o_boxingcontroller.wireframe_boxing == 1)
				sprite_index = spr_bqueen_leggy_wireframe;
			x = basex;
			invincible_l = 0;
			invincible_r = 0;
			blocking = -1;
			attacktimer = 0;
			attackcon = 5;
		}
		if (attackcon == 5)
		{
			attacktimer += 1;
			if (attacktimer >= ((45 / f) - ((attack_succeeded * 45) / f)))
			{
				speed = 0;
				friction = 0;
				image_index = 0;
				image_speed = 0;
				attackcon = 0;
				attack_succeeded = 0;
				event_user(1);
			}
		}
	}
	if (attacktype == 9)
	{
		if (attackcon == 0)
		{
			baseball_amount = 1;
			attacktimer = 0;
			blocking = -1;
			invincible_l = 1;
			invincible_r = 1;
			o_boxingcontroller.hit_baseball = 0;
			baseball_hit_boss_number = 0;
			baseball_timer = -24;
			sprite_index = spr_bqueen_final_charge;
			y = basey;
			vspeed = -26 * f;
			friction = 2.2;
			__view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0) + vspeed + 3);
			drawflip = 0;
			o_boxinghud.hide_ui = 1;
			attackcon = 1;
		}
		if (attackcon == 1)
		{
			attacktimer += 1;
			if (attacktimer < (46 / f))
			{
				var cam_speed = vspeed - 1;
				if (cam_speed > 0)
					cam_speed = 0;
				__view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0) + cam_speed);
			}
			if (attacktimer > (46 / f))
			{
				attackcon = 3;
				attacktimer = 0;
			}
		}
		if (attackcon == 3)
		{
			attacktimer += 1;
			if (attacktimer == (2 / f))
			{
				if (o_boxingcontroller.wireframe_boxing == 0)
				{
					if (arcade)
						snd_play(snd_cardrive_bc);
					else
						snd_play(snd_cardrive);
					snd_pitch(snd_cardrive, 1);
				}
				specialcon = 2;
				attacktimer = 50 / f;
			}
			if (attacktimer == (52 / f))
			{
				instance_create(x + 5, y - 320, obj_bq_baseball_final);
				charge = instance_create(x + 5, y - 320, o_charge_ring_controller);
				charge.alarm[0] = 50;
			}
			if (attacktimer == (56 / f) && instance_exists(obj_bq_baseball_final) && obj_bq_baseball_final.image_xscale < 6)
				attacktimer -= 1;
			if (attacktimer == (56 / f))
			{
				sprite_index = spr_bqueen_final_charge_flash;
				event_user(5);
				sprite_index = spr_bqueen_final_charge;
			}
			if (attacktimer >= (82 / f) && attacktimer < (86 / f))
			{
				sprite_index = spr_bqueen_punch;
				image_index = 1;
			}
			if (attacktimer == (86 / f))
			{
				sprite_index = spr_bqueen_punch;
				image_index = 2;
			}
			if (attacktimer == (90 / f))
			{
				obj_bq_baseball_final.vspeed = 8 / f;
				obj_bq_baseball_final.hit = 0;
				snd_play(snd_fall_cool_deep);
				snd_loop(snd_quake_nes);
				snd_volume(snd_quake_nes, 0.4, 120);
			}
			if ((attacktimer > (90 / f) && attacktimer < (196 / f)) || (attacktimer > (160 / f) && instance_exists(obj_bq_baseball_final) && obj_bq_baseball_final.vspeed >= 0))
			{
				if (__view_get(e__VW.YView, 0) < 0)
					__view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0) + (6 * f));
				if (__view_get(e__VW.YView, 0) > 0)
					__view_set(e__VW.YView, 0, 0);
			}
			if (attacktimer > (190 / f) && instance_exists(obj_bq_baseball_final) && obj_bq_baseball_final.vspeed > 0)
				attacktimer = 188 / f;
			if (o_boxingcontroller.hit_baseball == 0)
			{
				if (attacktimer >= (196 / f))
				{
					sprite_index = spr_bqueen_laugh;
					image_index += 0.2;
					o_boxinghud.hide_ui = 2;
				}
				if (attacktimer >= (290 / f))
				{
					x = basex;
					attackcon = 4;
					attacktimer = 0;
				}
			}
			if (o_boxingcontroller.hit_baseball > 0)
			{
				global.turntimer = 100;
				o_boxingcontroller.boxingtimer = 10;
				o_boxingcontroller.cancontrol = 0;
				o_boxinghud.hide_ui_quick = 1;
				if (attacktimer >= (196 / f) && instance_exists(obj_bq_baseball_final) && obj_bq_baseball_final.vspeed < 0)
				{
					sprite_index = spr_bqueen;
					image_index = 26;
					if (__view_get(e__VW.YView, 0) > -750)
						__view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0) - (12 * f));
					if (__view_get(e__VW.YView, 0) < -750)
						__view_set(e__VW.YView, 0, -750);
				}
				if (attacktimer == (600 / f) && !instance_exists(obj_bq_baseball_final_hits_boss))
				{
					x = basex;
					obj_battlecontroller.gigaqueencon = 6;
					with (obj_boxingqueen_aura)
						instance_destroy();
					sprite_index = spr_bqueen;
					image_index = 26;
					final_sequence_red_state = 1;
				}
				if (attacktimer > (600 / f) && attacktimer < (740 / f))
				{
					x = (basex - 3) + random(6);
					y = (basey - 3) + random(6);
				}
				var aa = 120;
				if (attacktimer > (600 / f) && attacktimer < (740 / f))
				{
					crescent_explosion_timer++;
					if (crescent_explosion_timer == 3 || crescent_explosion_timer == 6)
					{
						fx = instance_create((x - 50) + random(100), y - 50 - random(150), obj_boxing_crescent);
						fx.depth = depth - 1;
						fx = instance_create((x - 50) + random(100), y - 50 - random(150), obj_boxing_smoke);
						fx.depth = depth - 1;
						if (crescent_explosion_timer == 3)
						{
							if (arcade)
							{
								if (audio_is_playing(snd_explosion_firework_bc))
									audio_stop_sound(snd_explosion_firework_bc);
								snd_pitch(snd_play(snd_explosion_firework_bc), 0.7 + random(0.6));
							}
							else
							{
								if (audio_is_playing(snd_explosion_firework))
									audio_stop_sound(snd_explosion_firework);
								snd_pitch(snd_play(snd_explosion_firework), 0.7 + random(0.6));
							}
						}
						if (crescent_explosion_timer == 6)
							crescent_explosion_timer = 0;
					}
				}
				if (attacktimer == (740 / f))
				{
					if (arcade)
						audio_stop_sound(snd_explosion_firework_bc);
					else
						audio_stop_sound(snd_explosion_firework);
					with (obj_boxing_crescent)
						instance_destroy();
					with (obj_boxing_smoke)
						instance_destroy();
				}
				if (attacktimer > (600 / f) && attacktimer <= (700 / f))
				{
					if (final_sequence_red_state == 1)
						final_sequence_red_alpha += 0.01;
				}
				if (attacktimer == (702 / f) && !i_ex(obj_writer))
				{
					scr_speaker("queen");
					if (text_state == 0)
						msgsetloc(0, "* Battle Power... Dropping.../%", "o_boxingqueen_slash_Step_0_gml_3078_0");
					if (text_state == 1 && !i_ex(obj_writer))
						msgsetloc(0, "* Overheat... Activated/%", "o_boxingqueen_slash_Step_0_gml_3082_0");
					if (text_state == 2 && !i_ex(obj_writer))
						msgsetloc(0, "* Listen Well/%", "o_boxingqueen_slash_Step_0_gml_3086_0");
					if (text_state == 3 && !i_ex(obj_writer))
						msgsetloc(0, "* You May Have Defeated Me/%", "o_boxingqueen_slash_Step_0_gml_3090_0");
					if (text_state == 4 && !i_ex(obj_writer))
						msgsetloc(0, "* But I Still Possess One Thing/%", "o_boxingqueen_slash_Step_0_gml_3094_0");
					if (text_state == 5 && !i_ex(obj_writer))
						msgsetloc(0, "* You Three Will Never Have/%", "o_boxingqueen_slash_Step_0_gml_3098_0");
					if (text_state < 6)
					{
						__view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0) + 28);
						instance_create(camerax() + 30, cameray() + 376, obj_writer);
						__view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0) - 28);
						with (obj_writer)
						{
							shake = 1;
							rate = 2;
							writingy = y - 320;
						}
					}
					text_state++;
				}
				if ((attacktimer > (704 / f) && attacktimer < (708 / f) && text_state >= 0 && text_state < 7) || (i_ex(obj_writer) && text_state >= 0 && text_state < 7))
					attacktimer = 700 / f;
				if (attacktimer == ((710 + aa) / f))
				{
					vspeed = -26 * f;
					friction = 2.2;
					sprite_index = spr_queen_rocket_punch_pose;
					if (arcade)
						snd_play(snd_rocket_bc);
					else
						snd_play(snd_rocket);
					instance_create(x - 8, y - 132, obj_boxingqueen_rocket_punch_idle);
				}
				if (attacktimer > ((710 + aa) / f) && attacktimer < ((758 + aa) / f))
				{
					var cam_speed = vspeed - 1;
					if (cam_speed > 0)
						cam_speed = 0;
					__view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0) + cam_speed);
				}
				if (attacktimer == ((766 + aa) / f))
				{
					basex = x;
					basey = y;
					sprite_index = spr_queen_rocket_punch_pose;
					image_index = 0;
					msgsetloc(0, "* Detachable Hands/%", "o_boxingqueen_slash_Step_0_gml_3148_0");
					global.typer = 70;
					global.fc = 4;
					__view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0) + 130);
					scr_battletext_default();
					__view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0) - 130);
					with (obj_writer)
						writingy = y - 320;
				}
				if (attacktimer > ((768 + aa) / f) && attacktimer < ((772 + aa) / f) && i_ex(obj_writer))
					attacktimer = (768 + aa) / f;
				if (attacktimer == ((772 + aa) / f))
				{
					scr_speaker("no_name");
					global.typer = 4;
					global.fc = 0;
					global.fe = 0;
					if (arcade)
					{
						if (audio_is_playing(snd_explosion_firework_bc))
							audio_stop_sound(snd_explosion_firework_bc);
					}
					else if (audio_is_playing(snd_explosion_firework))
					{
						audio_stop_sound(snd_explosion_firework);
					}
					if (i_ex(o_boxingqueen))
						o_boxingqueen.visible = 0;
					if (i_ex(o_boxingcontroller))
						o_boxingcontroller.visible = 0;
					if (i_ex(obj_3d_bg_effect))
						obj_3d_bg_effect.visible = 0;
					if (i_ex(obj_bg_square))
						obj_bg_square.visible = 0;
					with (obj_boxingqueen_rocket_punch_idle)
						instance_destroy();
					instance_create(o_boxingqueen.x, o_boxingqueen.y, obj_rocketpunch_queen);
				}
			}
		}
		if (attackcon == 4)
		{
			makedizzy = 200 / f;
			vspeed = 0;
			hspeed = 0;
			image_speed = 0;
			image_index = 0;
			sprite_index = spr_bqueen_leggy;
			x = basex;
			invincible_l = 0;
			invincible_r = 0;
			blocking = -1;
			attacktimer = 0;
			attackcon = 5;
		}
		if (attackcon == 5)
		{
			attacktimer += 1;
			attack_succeeded = 1;
			if (attacktimer >= ((45 / f) - ((attack_succeeded * 45) / f)))
			{
				speed = 0;
				image_index = 0;
				image_speed = 0;
				attackcon = 0;
				attack_succeeded = 0;
				event_user(1);
			}
		}
	}
}
if (state == 4)
{
	if (hspeed > 0 && x > basex)
	{
		hspeed = 0;
		x = basex;
	}
	dizzytimer -= 1;
	image_speed = 0;
	image_index += 0.1;
	if (image_index >= 2)
	{
		image_index = 0;
		drawflip *= -1;
	}
	if (dizzytimer <= 0)
		event_user(1);
}
dizzytimer -= 1;
