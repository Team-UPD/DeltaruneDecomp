draw_timer++;
if (draw_timer < 6)
	exit;
if (disable_surface == 1)
	exit;
draw_sprite_ext(spr_whitepx, 0, -10, -10, 9999, 9999, 0, c_black, 1);
if (cyber_bg_alpha < 0.3)
	cyber_bg_alpha += 0.01;
if (hidebg == 0)
	draw_sprite_ext(bg_boxing_wireframe, 0, camerax(), cameray(), 2, 2, 0, c_white, cyber_bg_alpha);
draw_janky_timer = 0;
o_boxingqueen_janky_x = o_boxingqueen.x;
o_boxingqueen_janky_y = o_boxingqueen.y;
o_boxingqueen_janky_sprite_index = o_boxingqueen.sprite_index;
o_boxingqueen_janky_image_index = o_boxingqueen.image_index;
o_boxingcontroller_janky_x = o_boxingcontroller.x;
o_boxingcontroller_janky_y = o_boxingcontroller.y;
o_boxingcontroller_sprite_index = o_boxingcontroller.sprite_index;
o_boxingcontroller_image_index = o_boxingcontroller.image_index;
if (o_boxingcontroller.disable_queen_blocking == 0 && o_boxingqueen.health_count < (o_boxingqueen.health_count_max * 0.5) && o_boxingqueen_janky_sprite_index == 2140 && o_boxingqueen_janky_image_index < 2)
	o_boxingqueen_janky_sprite_index = 2156;
if (o_boxingcontroller.disable_queen_blocking == 0 && o_boxingqueen.health_count < (o_boxingqueen.health_count_max * 0.5) && o_boxingqueen_janky_sprite_index == 2141)
	o_boxingqueen_janky_sprite_index = 2156;
if (pacifist_state <= 0 && introcon == 1)
	pacifist_timer++;
if (pacifist_timer >= 2970 && pacifist_state <= 0)
	pacifist_state = 1;
if (surface_exists(surface))
{
	surface_set_target(surface);
	if (hidebg == 0)
		draw_background(2217, 0, 0);
	if (hidebg == 1)
	{
		draw_set_color(c_black);
		draw_rectangle(-1000, -1000, 1000, 1000, 0);
	}
	if (o_boxingqueen.sprite_index == spr_bqueen_hurt_effect_wireframe)
		o_boxingqueen_janky_sprite_index = 2150;
	if (o_boxingqueen.sprite_index == spr_bqueen_headless_wireframe)
		o_boxingqueen_janky_sprite_index = 2157;
	if (!instance_exists(obj_vector_explosion_big))
	{
		if (o_boxingqueen.drawflip == 0 && o_boxingcontroller.dead < 2)
			draw_sprite_ext(o_boxingqueen_janky_sprite_index, o_boxingqueen_janky_image_index, o_boxingqueen_janky_x / 2, ((o_boxingqueen_janky_y / 2) - 4) + 14, 1, 1, 0, c_white, 1);
		if (o_boxingqueen.drawflip == 1 && o_boxingcontroller.dead < 2)
			draw_sprite_ext(o_boxingqueen_janky_sprite_index, o_boxingqueen_janky_image_index, o_boxingqueen_janky_x / 2, ((o_boxingqueen_janky_y / 2) - 4) + 14, -1, 1, 0, c_white, 1);
		d3d_set_fog(1, c_white, 0, 0);
		if (o_boxingqueen.drawflip == 0 && instance_exists(o_afterimage))
			draw_sprite_ext(o_boxingqueen_janky_sprite_index, o_boxingqueen_janky_image_index, o_boxingqueen_janky_x / 2, ((o_boxingqueen_janky_y / 2) - 4) + 14, image_xscale * 1, 1, 0, c_white, 1);
		if (o_boxingqueen.drawflip == 1 && instance_exists(o_afterimage))
			draw_sprite_ext(o_boxingqueen_janky_sprite_index, o_boxingqueen_janky_image_index, o_boxingqueen_janky_x / 2, ((o_boxingqueen_janky_y / 2) - 4) + 14, image_xscale * -1, 1, 0, c_white, 1);
		d3d_set_fog(0, c_white, 0, 0);
		if (o_boxingcontroller.drawflip == 0 && o_boxingcontroller.dead == 0)
			draw_sprite_ext(o_boxingcontroller_sprite_index, o_boxingcontroller_image_index, o_boxingcontroller_janky_x / 2, (o_boxingcontroller_janky_y / 2) + 14, 1, 1, 0, c_white, 1);
		if (o_boxingcontroller.drawflip == 1 && o_boxingcontroller.dead == 0)
			draw_sprite_ext(o_boxingcontroller_sprite_index, o_boxingcontroller_image_index, o_boxingcontroller_janky_x / 2, (o_boxingcontroller_janky_y / 2) + 14, -1, 1, 0, c_white, 1);
	}
	for (var i = 0; i < instance_number(obj_octagon_attack); i++)
	{
		var inst = instance_find(obj_octagon_attack, i);
		draw_sprite_ext(inst.sprite_index, inst.image_index, inst.x / 2, inst.y / 2, 1, 1, inst.image_angle, c_white, 1);
	}
	for (var i = 0; i < instance_number(o_boxing_wheel); i++)
	{
		var inst = instance_find(o_boxing_wheel, i);
		draw_sprite_ext(spr_octagon, inst.image_index, inst.x / 2, inst.y / 2, 0.5, 0.5, inst.image_angle, c_white, 1);
	}
	for (var i = 0; i < instance_number(obj_bq_baseball); i++)
	{
		var inst = instance_find(obj_bq_baseball, i);
		draw_sprite_ext(spr_octagon, 0, inst.x / 2, inst.y / 2, 0.5, 0.5, inst.image_angle, c_white, 1);
		draw_sprite_ext(spr_baseball_reticle, 0, (inst.x / 2) - 1, inst.y / 2, 1.5, 1.5, image_angle * -1, c_white, inst.reticletimer / 7);
		text_timer++;
		if (text_timer >= 0 && text_timer < (20 / f))
			draw_sprite_ext(spr_arcade_arrow, 0, (inst.x / 2) + 50, inst.y / 2, -1, 1, 0, c_lime, 1);
		if (text_timer >= (24 / f))
			text_timer = 0;
		draw_set_halign(fa_left);
		draw_set_color(c_black);
		draw_text_ext((inst.x / 2) + 70, (inst.y / 2) - 8, stringsetloc("HIT IT", "o_boxing_wireframe_slash_Draw_0_gml_85_0"), 100, 100);
		draw_set_color(c_lime);
		draw_text_ext((inst.x / 2) + 70, (inst.y / 2) - 8, stringsetloc("HIT IT", "o_boxing_wireframe_slash_Draw_0_gml_87_0"), 100, 100);
	}
	for (var i = 0; i < instance_number(obj_octagon_triangle); i++)
	{
		var inst = instance_find(obj_octagon_triangle, i);
		draw_sprite_ext(spr_octagon_triangle, 0, inst.x / 2, inst.y / 2, 1, 1, inst.image_angle, c_white, 1);
	}
	if (instance_exists(obj_vector_explosion))
		draw_sprite_ext(obj_vector_explosion.sprite_index, obj_vector_explosion.image_index, obj_vector_explosion.x / 2, obj_vector_explosion.y / 2, obj_vector_explosion.image_xscale, obj_vector_explosion.image_yscale, 0, c_white, 1);
	if (instance_exists(obj_vector_queen_face))
		draw_sprite_ext(obj_vector_queen_face.sprite_index, obj_vector_queen_face.image_index, obj_vector_queen_face.x / 2, obj_vector_queen_face.y / 2, obj_vector_queen_face.image_xscale, obj_vector_queen_face.image_yscale, 0, c_white, 1);
	draw_set_halign(fa_center);
	if ((text != o_boxingcontroller.default_string && text != "" && introcon == 1) || (down_arrow_con == 1 && introcon == 1))
	{
		text_timer++;
		if (text_reset_timer > 0)
			text_reset_timer++;
		if (text_reset_timer > 140)
		{
			text = "";
			text_reset_timer = 0;
		}
		if (o_boxingqueen.health_count != o_boxingqueen.health_count_max && o_boxingcontroller.dead == 0)
		{
			if (text == o_boxingcontroller.duck_string || down_arrow_con == 1)
			{
				if (text_timer < 25)
					down_arrow_con = 1;
				if ((text_timer >= 25 && text_timer < 31) || (text_timer >= 36 && text_timer < 42) || (text_timer >= 47 && text_timer < 53))
				{
					draw_sprite_ext(spr_arcade_arrow, 0, (o_boxingcontroller.basex / 2) - 64, (o_boxingcontroller.basey / 2) - 32, -1, 1, 90, c_lime, 1);
					draw_sprite_ext(spr_arcade_arrow, 0, (o_boxingcontroller.basex / 2) + 50, (o_boxingcontroller.basey / 2) - 32, -1, 1, 90, c_lime, 1);
				}
				if (text_timer >= 53)
					down_arrow_con = 0;
			}
			if (text == o_boxingcontroller.dodge_string)
			{
				if (text_timer >= 0 && text_timer < (20 / f))
				{
					draw_sprite_ext(spr_arcade_arrow, 0, (o_boxingcontroller.basex / 2) - 64, (o_boxingcontroller.basey / 2) - 32, -1, 1, 0, c_lime, 1);
					draw_sprite_ext(spr_arcade_arrow, 0, (o_boxingcontroller.basex / 2) + 50, (o_boxingcontroller.basey / 2) - 32, -1, 1, 180, c_lime, 1);
				}
				if (text_timer >= (24 / f))
					text_timer = 0;
			}
		}
		else if (pacifist_state < 1 && o_boxingcontroller.dead == 0 && introtalk == 0)
		{
			msgsetsubloc(0, "Press ~1&Or ~2 If&You Dare", scr_get_input_name(4), scr_get_input_name(5), "o_boxing_wireframe_slash_Draw_0_gml_145_0");
			global.typer = 50;
			queenbubble = scr_enemyblcon(camerax() + 428, cameray() + 388, 7);
			talktimer = 0;
			talking = true;
			with (queenbubble)
			{
				depth = obj_ch2_scene10.qu_actor.depth - 1;
				auto_length = 1;
				side = -1;
			}
			talktype = 1;
			introtalk = 1;
			alarm[1] = 240;
		}
	}
	if ((o_boxingqueen_janky_sprite_index == 2156 && o_boxingcontroller.dead == 0 && o_boxingcontroller.arcade_times_blocked > 2) || (o_boxingqueen_janky_sprite_index == 2155 && o_boxingcontroller.dead == 0 && o_boxingcontroller.arcade_times_blocked > 2) || zx_timer > 0)
	{
		if (zx_state == 0)
		{
			draw_set_color(c_black);
			if (o_boxingqueen.drawflip == 0)
				draw_text_ext((o_boxingqueen_janky_x / 2) + 38, (o_boxingqueen_janky_y / 2) - 100, "X", 100, 100);
			if (o_boxingqueen.drawflip == 1)
				draw_text_ext((o_boxingqueen_janky_x / 2) - 39, (o_boxingqueen_janky_y / 2) - 100, "Z", 100, 100);
			draw_set_color(c_lime);
			if (o_boxingqueen.drawflip == 0)
			{
				draw_text_ext((o_boxingqueen_janky_x / 2) + 38, (o_boxingqueen_janky_y / 2) - 100, "X", 100, 100);
				draw_rectangle_color(((o_boxingqueen_janky_x / 2) + 42) - 10, (o_boxingqueen_janky_y / 2) - 100 - 1, (o_boxingqueen_janky_x / 2) + 42 + 4, ((o_boxingqueen_janky_y / 2) - 100) + 16, c_lime, c_lime, c_lime, c_lime, true);
			}
			if (o_boxingqueen.drawflip == 1)
			{
				draw_text_ext((o_boxingqueen_janky_x / 2) - 39, (o_boxingqueen_janky_y / 2) - 100, "Z", 100, 100);
				draw_rectangle_color((o_boxingqueen_janky_x / 2) - 42 - 4, (o_boxingqueen_janky_y / 2) - 100 - 1, ((o_boxingqueen_janky_x / 2) - 42) + 10, ((o_boxingqueen_janky_y / 2) - 100) + 16, c_lime, c_lime, c_lime, c_lime, true);
			}
			zx_timer++;
			if (zx_timer >= (12 / f))
			{
				zx_timer = 0;
				zx_state = 1;
			}
		}
		if (zx_state == 1)
		{
			draw_set_color(c_black);
			if (o_boxingqueen.drawflip == 0)
				draw_text_ext((o_boxingqueen_janky_x / 2) + 38, (o_boxingqueen_janky_y / 2) - 100, "X", 100, 100);
			if (o_boxingqueen.drawflip == 1)
				draw_text_ext((o_boxingqueen_janky_x / 2) - 39, (o_boxingqueen_janky_y / 2) - 100, "Z", 100, 100);
			draw_set_color(c_white);
			if (o_boxingqueen.drawflip == 0)
			{
				draw_text_ext((o_boxingqueen_janky_x / 2) + 38, (o_boxingqueen_janky_y / 2) - 100, "X", 100, 100);
				draw_rectangle_color(((o_boxingqueen_janky_x / 2) + 42) - 10, (o_boxingqueen_janky_y / 2) - 100 - 1, (o_boxingqueen_janky_x / 2) + 42 + 4, ((o_boxingqueen_janky_y / 2) - 100) + 16, c_white, c_white, c_white, c_white, true);
			}
			if (o_boxingqueen.drawflip == 1)
			{
				draw_text_ext((o_boxingqueen_janky_x / 2) - 39, (o_boxingqueen_janky_y / 2) - 100, "Z", 100, 100);
				draw_rectangle_color((o_boxingqueen_janky_x / 2) - 42 - 4, (o_boxingqueen_janky_y / 2) - 100 - 1, ((o_boxingqueen_janky_x / 2) - 42) + 10, ((o_boxingqueen_janky_y / 2) - 100) + 16, c_white, c_white, c_white, c_white, true);
			}
			zx_timer++;
			if (zx_timer >= (12 / f))
			{
				zx_timer = 0;
				zx_state = 0;
			}
		}
	}
	surface_reset_target();
	draw_surface(surface, 160, 120);
}
else
{
	surface = surface_create(320, 240);
	surface_set_target(surface);
	surface_reset_target();
}
if (o_boxingcontroller.dead == 0 && o_boxinghud.sub_healthbar_count != -1 && introcon == 1)
{
	scr_84_set_draw_font("mainbig");
	draw_set_color(c_lime);
	draw_text_ext_transformed(318, 112, ceil((2970 - pacifist_timer) / 30), 100, 100, 1, 1, 0);
	draw_set_color(c_white);
	draw_sprite_ext(spr_arcade_time, 0, 280, 91, 1, 1, 0, c_white, 1);
	if (o_boxingqueen.health_count > 0)
	{
		draw_set_color(c_lime);
		draw_rectangle(460 - (o_boxingqueen.health_count / 10), 130, 460, 140, false);
		draw_set_halign(fa_right);
		draw_sprite_ext(spr_queen_hp, 0, 377, 147, 1, 1, 0, c_white, 1);
	}
	if (o_boxingcontroller.health_count > 0)
	{
		draw_set_color(c_aqua);
		draw_rectangle(180, 130, 180 + (o_boxingcontroller.health_count / 5), 140, false);
		draw_set_halign(fa_left);
		draw_sprite_ext(spr_hero_hp, 0, 180, 147, 1, 1, 0, c_white, 1);
	}
	if (pacifist_state == 1)
	{
		if (draw_draw_timer < (20 / f))
			draw_sprite_ext(spr_acrade_draw, 0, 294, 230, 1, 1, 0, c_white, 1);
		draw_draw_timer++;
		if (draw_draw_timer >= (40 / f))
			draw_draw_timer = 0;
	}
}
if (o_boxingcontroller.dead == 3)
{
	draw_sprite(spr_arcade_youlose, 0, 320, 240);
	lose_timer++;
	if (lose_timer == (120 / f))
		o_boxingcontroller.dead = 4;
}
if (o_boxingcontroller.dead == 4 || o_boxingcontroller.dead == 5)
{
	draw_selection_buffer_timer++;
	draw_set_color(c_lime);
	draw_sprite_ext(spr_acrade_giveup, 0, 279, 220, 1, 1, 0, c_white, 1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	if (o_boxingcontroller.dead == 4)
		draw_sprite_ext(spr_acrade_fightagain, 1, 190, 260, 1, 1, 0, c_white, 1);
	else
		draw_sprite_ext(spr_acrade_fightagain, 0, 190, 260, 1, 1, 0, c_white, 1);
	if (o_boxingcontroller.dead == 5)
		draw_sprite_ext(scr_84_get_sprite("spr_acrade_retire"), 1, 370, 260, 1, 1, 0, c_white, 1);
	else
		draw_sprite_ext(scr_84_get_sprite("spr_acrade_retire"), 0, 370, 260, 1, 1, 0, c_white, 1);
	if (right_p() && draw_selection_buffer_timer > 24)
		o_boxingcontroller.dead = 5;
	if (left_p() && draw_selection_buffer_timer > 24)
		o_boxingcontroller.dead = 4;
	if (o_boxingcontroller.dead == 4 && draw_selection_buffer_timer > 24)
	{
		if (button1_p() || button2_p())
		{
			o_boxingcontroller.health_count = 500;
			o_boxingcontroller.dead = 0;
			o_boxingcontroller.cancontrol = 1;
			o_boxingcontroller.arcaderesettimer = 5;
			o_boxingcontroller.failed_kick_tutorial_counter = 1;
			draw_selection_buffer_timer = 0;
			pacifist_state = 0;
			pacifist_timer = 0;
			lose_timer = 0;
			with (o_boxingqueen)
			{
				attackpattern = 50;
				arcadebaseballused = 0;
				health_count = 1000;
				phase_transition = 0;
				attackcount = 0;
				attackcountmax = 0;
				useattacklist = 1;
				dodgehintcount = 3;
				duckhintcount = 3;
				scr_qb(0, 0, 4, 30);
				scr_qb(0, 0, 4, 30);
				scr_qb(0, 0, 4, 30);
				scr_qb(0, 0, 4, 30);
				with (o_boxingcontroller)
					boxingtimer = 270;
			}
			losscount++;
			if (losscount > 1)
			{
				with (obj_writer)
					instance_destroy();
				obj_ch2_scene10_arcade_bg.punch_r_timer = 0;
				obj_ch2_scene10_arcade_bg.dodge_l_timer = 5;
				msgsetloc(0, "Shut up, that was&just a warm up!", "o_boxing_wireframe_slash_Draw_0_gml_316_0");
				global.typer = 50;
				susieballoon1 = scr_enemyblcon(obj_ch2_scene10.su_actor.x + 0, obj_ch2_scene10.su_actor.y + 20, 10);
				talktimer = 0;
				talking = true;
				with (susieballoon1)
					depth = obj_ch2_scene10.su_actor.depth - 1;
				talktype = 0;
			}
		}
	}
	if (o_boxingcontroller.dead == 5 && !instance_exists(obj_battleblcon) && draw_selection_buffer_timer > 24)
	{
		if (button1_p() || button2_p())
		{
			alarm[0] = 1;
			obj_ch2_scene10_arcade_bg.punch_r_timer = 0;
			obj_ch2_scene10_arcade_bg.dodge_l_timer = 5;
			msgsetloc(0, "Shut up! That was&just practice!", "o_boxing_wireframe_slash_Draw_0_gml_334_0");
			global.typer = 50;
			susieballoon2 = scr_enemyblcon(obj_ch2_scene10.su_actor.x + 0, obj_ch2_scene10.su_actor.y + 20, 10);
			talktimer = 0;
			talking = true;
			with (susieballoon2)
				depth = obj_ch2_scene10.su_actor.depth - 1;
			talktype = 0;
		}
	}
}
if (pacifist_state > 0)
{
	draw_selection_buffer_timer++;
	if ((button1_p() && draw_selection_buffer_timer > 24) || (button2_p() && draw_selection_buffer_timer > 24))
	{
		o_boxingcontroller.health_count = 500;
		o_boxingcontroller.dead = 0;
		o_boxingcontroller.cancontrol = 1;
		o_boxingcontroller.failed_kick_tutorial_counter = 1;
		draw_selection_buffer_timer = 0;
		pacifist_state = 0;
		pacifist_timer = 0;
		lose_timer = 0;
		with (o_boxingqueen)
		{
			attackpattern = 50;
			arcadebaseballused = 0;
			health_count = 1000;
			phase_transition = 0;
			attackcount = 0;
			attackcountmax = 0;
			useattacklist = 1;
			dodgehintcount = 3;
			duckhintcount = 3;
			scr_qb(0, 0, 4, 30);
			scr_qb(0, 0, 4, 30);
			scr_qb(0, 0, 4, 30);
			scr_qb(0, 0, 4, 30);
			with (o_boxingcontroller)
				boxingtimer = 270;
		}
	}
}
draw_set_halign(fa_left);
if (introcon == 0)
{
	introtimer++;
	if (introtimer >= 20 && introtimer < 50)
		draw_sprite_ext(spr_arcade_round1, 0, 256, 114, 2, 2, 0, c_white, 1);
	if (introtimer >= 72 && introtimer < 102)
		draw_sprite_ext(spr_arcade_fight, 0, 266, 114, 2, 2, 0, c_white, 1);
	if (introtimer == 20)
		snd_play(snd_boxing_round1_bc);
	if (introtimer == 72)
		snd_play(snd_boxing_fight_bc);
	if (introtimer == 112)
		introcon = 1;
}
