if (hide_ui == 1)
{
	if (topyy >= -800)
	{
		topyy *= 1.1;
		topyy -= 50;
		if (topyy <= -800)
			topyy = -800;
	}
}
else if (hide_ui == 2)
{
	if (topyy >= -800)
	{
		topyy *= 0.95;
		topyy += 23;
		if (topyy >= 50)
		{
			hide_ui = 0;
			topyy = 50;
		}
	}
}
else if (global.boxingphase == 0 || global.boxingphase == 3 || o_boxingqueen.phase_transition > 0)
{
	if (topyy >= 0)
	{
		topyy *= 0.8;
		topyy -= 1;
		if (topyy <= 0)
			topyy = 0;
	}
	if (bottomyy < 160)
	{
		bottomyy += 1;
		bottomyy *= 1.2;
		if (bottomyy >= 160)
			bottomyy = 160;
	}
}
else if (global.boxingphase == 1 || global.boxingphase == 2)
{
	if (topyy <= 50)
	{
		topyy *= 1.2;
		topyy += 4;
		if (topyy >= 50)
			topyy = 50;
	}
	if (bottomyy > 60)
	{
		bottomyy -= 1;
		bottomyy *= 0.8;
		if (bottomyy <= 60)
			bottomyy = 60;
	}
}
if (hide_ui_quick == 1 || instance_exists(obj_thrash_intro) || instance_exists(obj_thrash_transformation_transition))
	exit;
if (sub_healthbar_count == 0 && o_boxingqueen.health_count < 1 && o_boxingcontroller.wireframe_boxing == 0)
{
	o_boxingqueen.health_count = 1;
	if (o_boxingqueen.attackpattern != 99)
	{
		with (o_boxingqueen)
			scr_qb_reset();
	}
}
if (o_boxingcontroller.health_count > 0 && sub_healthbar_count != -1 && o_boxingqueen.sprite_index != spr_bqueen_defeated)
{
	var _ratio = 3.75;
	if (sub_healthbar_count == 0)
		_ratio = 4.5;
	draw_set_color(c_white);
	draw_text(50, -31 + topyy, stringsetloc("BOSS", "o_boxinghud_slash_Draw_0_gml_66_0"));
	draw_set_color(c_black);
	draw_rectangle(118, (-30 + topyy) - 2, 122 + (o_boxingqueen.health_count_max / _ratio), -20 + topyy + 2, false);
	col = merge_colour(c_red, c_black, 0.85);
	draw_set_color(col);
	draw_rectangle(120, -30 + topyy, 120 + (o_boxingqueen.health_count_max / _ratio), -20 + topyy, false);
	draw_set_color(c_red);
	draw_rectangle(120, -30 + topyy, 120 + (o_boxingqueen.health_count_prev / _ratio), -20 + topyy, false);
	draw_set_color(c_lime);
	draw_rectangle(120, -30 + topyy, 120 + (o_boxingqueen.health_count / _ratio), -20 + topyy, false);
	draw_set_color(c_white);
	draw_set_alpha(healthbar_flash / 100);
	healthbar_flash -= 10;
	draw_rectangle_colour(120, -30 + topyy, 120 + (o_boxingqueen.health_count / _ratio), -20 + topyy, c_white, c_white, c_white, c_white, false);
	draw_set_alpha(1);
	o_boxingqueen.health_count_prev_timer -= 1;
	if (o_boxingqueen.health_count_prev_timer < 1 && o_boxingqueen.health_count_prev > o_boxingqueen.health_count)
	{
		o_boxingqueen.health_count_prev -= 8;
		if (o_boxingqueen.health_count_prev < o_boxingqueen.health_count)
			o_boxingqueen.health_count_prev = o_boxingqueen.health_count;
	}
	if (o_boxingqueen.health_count < 1)
	{
		sub_healthbar_count -= 1;
		if (sub_healthbar_count == -1)
		{
			if (o_boxingcontroller.wireframe_boxing == 0)
				o_boxingqueen.health_count = 0;
			if (o_boxingcontroller.wireframe_boxing == 1)
				o_boxingqueen.phase_transition = 1;
		}
		else
		{
			if (arcade)
			{
				if (audio_is_playing(snd_squeaky_bc))
					audio_stop_sound(snd_squeaky);
				if (audio_is_playing(snd_punchheavythunder_bc))
					audio_stop_sound(snd_punchheavythunder);
				if (audio_is_playing(snd_ultraswing_bc))
					audio_stop_sound(snd_ultraswing);
				if (audio_is_playing(punch_ish_1_bc))
					audio_stop_sound(punch_ish_1);
				if (audio_is_playing(snd_criticalswing_bc))
					audio_stop_sound(snd_criticalswing);
				snd_play(snd_scytheburst_bc);
			}
			else
			{
				if (audio_is_playing(snd_squeaky))
					audio_stop_sound(snd_squeaky);
				if (audio_is_playing(snd_punchheavythunder))
					audio_stop_sound(snd_punchheavythunder);
				if (audio_is_playing(snd_ultraswing))
					audio_stop_sound(snd_ultraswing);
				if (audio_is_playing(punch_ish_1))
					audio_stop_sound(punch_ish_1);
				if (audio_is_playing(snd_criticalswing))
					audio_stop_sound(snd_criticalswing);
				snd_play(snd_scytheburst);
			}
			if (o_boxinghud.sub_healthbar_count == 0)
				o_boxingqueen.health_count_max = 1800;
			o_boxingqueen.health_count = o_boxingqueen.health_count_max;
			o_boxingqueen.health_count_prev = o_boxingqueen.health_count_max;
			o_boxingqueen.phase_transition = 1;
			o_boxingqueen.state = 1;
			o_boxingqueen.combo = 0;
			o_boxingqueen.times_hit_in_a_row = 0;
			o_boxingqueen.pattern_state = 0;
			if (o_boxingcontroller.beat_phase1_no_damage_taken_check == 0)
				global.flag[527] = 1;
			if (o_boxingcontroller.beat_phase2_no_damage_taken_check == 0 && sub_healthbar_count == 0)
				o_boxingcontroller.beat_phase2_no_damage_taken = 1;
			if (o_boxinghud.sub_healthbar_count == 1)
			{
				with (o_boxingqueen)
				{
					scr_qb_reset();
					attackpattern = 2;
					if (usedbaseball == 0)
					{
						attackpattern = 1.4;
						usedbaseball = 1;
					}
				}
				obj_gigaqueen_enemy.recentphasetransition = 2;
			}
			if (o_boxinghud.sub_healthbar_count == 0 && o_boxingcontroller.beat_phase2_no_damage_taken == 0)
			{
				with (o_boxingqueen)
				{
					scr_qb_reset();
					attackpattern = 15;
				}
				obj_gigaqueen_enemy.recentphasetransition = 3;
			}
			if (o_boxinghud.sub_healthbar_count == 0 && o_boxingcontroller.beat_phase2_no_damage_taken == 1)
			{
				with (o_boxingqueen)
				{
					scr_qb_reset();
					attackpattern = 21;
				}
				o_boxingcontroller.phase3_hit_check = 1;
				obj_gigaqueen_enemy.recentphasetransition = 3;
			}
			instance_create(o_boxingcontroller.x, y, obj_bq_fist_flash);
			obj_bq_fist_flash.rep = 3;
		}
	}
	if (sub_healthbar_count == 2)
	{
		draw_sprite_ext(spr_sub_healthbar, 0, 140, topyy - 7, image_xscale * 1.2, image_yscale * 1.2, 0, c_black, 1);
		draw_sprite_ext(spr_sub_healthbar, 0, 140, topyy - 7, image_xscale, image_yscale, 0, c_white, 1);
	}
	if (sub_healthbar_count >= 1)
	{
		draw_sprite_ext(spr_sub_healthbar, 0, 125, topyy - 7, image_xscale * 1.2, image_yscale * 1.2, 0, c_black, 1);
		draw_sprite_ext(spr_sub_healthbar, 0, 125, topyy - 7, image_xscale, image_yscale, 0, c_white, 1);
	}
	if (sub_healthbar_count <= 1)
	{
		draw_sprite_ext(spr_sub_healthbar_black, 0, 140, topyy - 7, image_xscale * 1.2, image_yscale * 1.2, 0, c_black, 1);
		draw_sprite_ext(spr_sub_healthbar_black, 0, 140, topyy - 7, image_xscale, image_yscale, 0, c_white, 1);
	}
	if (sub_healthbar_count == 0)
	{
		draw_sprite_ext(spr_sub_healthbar_black, 0, 125, topyy - 7, image_xscale * 1.2, image_yscale * 1.2, 0, c_black, 1);
		draw_sprite_ext(spr_sub_healthbar_black, 0, 125, topyy - 7, image_xscale, image_yscale, 0, c_white, 1);
	}
}
