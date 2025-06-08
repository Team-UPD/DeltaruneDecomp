sweettimer++;
if (sweetcon == 0)
{
	sweet = instance_create(768, cameray(), obj_marker);
	sweet.sprite_index = spr_sweet_dance;
	sweet.image_speed = 0.25;
	sweet.image_xscale = 2;
	sweet.image_yscale = 2;
	table = instance_create(768, cameray(), obj_marker);
	table.sprite_index = spr_cutscene_cyber01_dj_table_hover;
	table.image_speed = 0.25;
	table.image_xscale = 2;
	table.image_yscale = 2;
	sweetcon = -1;
}
if (sweetcon == 1)
{
	if (sweet.x > 541)
	{
		sweet.x = lerp(sweet.x, 540, 0.1);
	}
	else
	{
		sweet.x = 540;
		sweetcon = 2;
	}
}
if (i_ex(sweet))
{
	if (fadingOut == 0)
		sweet.y = (cameray() + 20) - (sin(sweettimer / 8) * 6);
	else
		sweet.y = lerp(sweet.y, -128, 0.125);
}
table.x = sweet.x - 54;
table.y = sweet.y + 58;
if (state == 0)
{
	if (instance_exists(obj_mainchara) && obj_mainchara.y > gameIntroY)
	{
		with (obj_mainchara)
		{
			sprite_index = spr_krisd_slide;
			fun = 1;
			autorun = 2;
			cutscene = 1;
			battlemode = 1;
		}
		if (instance_exists(obj_caterpillarchara))
		{
			with (obj_caterpillarchara)
			{
				if (name == "susie")
				{
					other.susX = x;
					other.susY = y;
					visible = false;
				}
				if (name == "ralsei")
				{
					other.ralX = x;
					other.ralY = y;
					visible = false;
				}
			}
		}
		slideSus = instance_create(susX, susY, obj_marker);
		slideRal = instance_create(ralX, ralY, obj_marker);
		with (slideSus)
		{
			con = 0;
			sprite_index = spr_susie_slide;
			image_xscale = 2;
			image_yscale = 2;
			image_speed = 0.25;
			depth = 900000;
			timer = 0;
		}
		with (slideRal)
		{
			con = 0;
			sprite_index = spr_ralsei_slide;
			image_xscale = 2;
			image_yscale = 2;
			image_speed = 0.25;
			depth = 900000;
			timer = 0;
		}
		snd_play(snd_noise);
		slideSound = snd_loop(snd_paper_surf);
		alarm[1] = 1;
		state = 1;
		instance_create(0, 0, obj_battlealphaer);
	}
}
if (slideRal != 0)
{
	with (slideRal)
	{
		depth = 900000;
		if (con == 0)
		{
			desiredpoint = 210;
			if ((charaX() - 64 - 10) > desiredpoint)
				desiredpoint = charaX() - 64 - 10;
			scr_move_to_point_over_time(desiredpoint, 148, 10);
			con++;
		}
		if (con == 1)
		{
			timer++;
			if (timer == 60)
				con++;
		}
		if (con == 2)
		{
			if (other.slideSus.con == 2)
			{
				other.slideSus.con = 3;
				con++;
			}
		}
		if (con == 3)
		{
			y += 8;
			image_alpha *= 0.99;
			if (y > (cameray() + 480 + 32))
				instance_destroy();
		}
		if (y > 360)
			image_alpha -= 0.1;
	}
}
if (slideSus != 0)
{
	with (slideSus)
	{
		depth = 900000;
		if (con == 0)
		{
			desiredpoint = 260;
			if (desiredpoint < (charaX() + 28 + 10))
				desiredpoint = charaX() + 28 + 10;
			desiredpoint = clamp(desiredpoint, 260, 390);
			scr_move_to_point_over_time(desiredpoint, 148, 10);
			con++;
		}
		if (con == 1)
		{
			timer++;
			if (timer == 60)
				con++;
		}
		if (con == 2)
		{
		}
		if (con == 3)
		{
			y += 10;
			image_alpha *= 0.99;
			if (y > (cameray() + 480 + 32))
				instance_destroy();
		}
		if (y > 360)
			image_alpha -= 0.1;
	}
}
if (state > 0)
{
	if (i_ex(obj_cyber_wall_lights))
	{
		with (obj_cyber_wall_lights)
			y -= 10;
	}
	layer_y(tileLayer, layer_get_y(tileLayer) - slideSpeed);
	if (layer_get_y(tileLayer) < -960)
		layer_y(tileLayer, layer_get_y(tileLayer) + 480);
	layer_y(spriteLayer, layer_get_y(spriteLayer) - slideSpeed);
	if (layer_get_y(spriteLayer) < -960)
		layer_y(spriteLayer, layer_get_y(spriteLayer) + 480);
	with (obj_mainchara)
		x = max(x, 200);
}
if (state == 1)
{
	sweetcon = 1;
	lanesFadein = scr_approach(lanesFadein, 1, 1/30);
	if (lanesFadein >= 1)
		state = 2;
}
if (state == 2)
{
	lanesEndFadein = scr_approach(lanesEndFadein, 1, 1/15);
	if (lanesEndFadein == 1)
	{
		state = 3;
		snd_free(global.currentsong[0]);
		mus_initloop("cyber.ogg");
	}
}
if (state == 3)
{
	with (obj_mainchara)
	{
		sprite_index = spr_krisd_slide;
		autorun = 2;
	}
	var _camY = cameray();
	if (snd_is_playing(global.currentsong[1]))
		soundTimeStep = audio_sound_get_track_position(global.currentsong[1]);
	else
		soundTimeStep += bpf;
	beats = soundTimeStep / spb;
	if (floor(beats) > floor(beatsPrev))
	{
		beats = soundTimeStep / spb;
		flashAlpha = 1;
	}
	beatsPrev = beats;
	with (obj_slidebullet)
	{
		framesAway = (targetBeat - other.beats) / other.bpf;
		var _percent = max(0, framesAway / frames);
		y = _camY + ease_out_cubic(_percent, other.lanesEndY, -other.lanesEndY, 1);
		y = max(y, _camY + 10);
		if (active && !hit)
			event_user(0);
		yChange = y - _camY - lastY;
		lastY = y - _camY;
		if (image_alpha >= 1)
			active = 1;
		if (framesAway < (frames + fadeInSpeed))
			image_alpha = scr_approach(image_alpha, 1, 1 / fadeInSpeed);
		if (framesAway < frames)
		{
			if (_percent <= 0)
			{
				instance_destroy();
				other.bigFlash = 0.2;
			}
		}
	}
	flashAlpha *= 0.9;
	bigFlash *= 0.95;
	if (beats >= 32)
		fadingOut = true;
}
if (fadingOut)
{
	fadeToWhite = scr_approach(fadeToWhite, 1, 1/30);
	if (fadeToWhite == 1)
	{
		with (obj_mainchara)
			battlemode = 0;
		with (instance_create(0, 0, obj_persistentfadein))
			image_blend = c_white;
		global.interact = 3;
		global.entrance = 1;
		room_goto_next();
	}
}
depth = obj_mainchara.depth + 1;
