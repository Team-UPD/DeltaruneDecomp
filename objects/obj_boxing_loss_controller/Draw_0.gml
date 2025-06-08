timer++;
if (state == 0)
{
	if (timer > (200 / f))
		state = 1;
}
if (state == 1)
{
	if (image_alpha > 2.2)
	{
		if (button1_p() || button2_p() || button3_p())
		{
			state = 2;
			instance_create(x, y, o_bq_whitefade);
			o_bq_whitefade.depth = -150;
		}
		if (right_p())
			con = 1;
		if (left_p())
			con = 0;
	}
	else
	{
		image_alpha += 0.02;
	}
}
if (state == 2)
{
	image_alpha += 0.01;
	if (image_alpha > 2.6 && con == 1)
	{
		with (obj_event_manager)
			resolve_trophies();
		gameend = instance_create(0, 0, DEVICE_FAILURE);
		gameend.EVENT = 8;
	}
	if (image_alpha > 2.6 && con == 0)
	{
		with (obj_event_manager)
			resolve_trophies();
		for (j = 0; j < 13; j += 1)
			global.item[j] = obj_gigaqueen_enemy.items[j];
		for (j = 0; j < 3; j += 1)
		{
			for (i = 0; i < 13; i += 1)
				obj_battlecontroller.tempitem[i][j] = global.item[i];
		}
		global.battlemsg[0] = stringsetloc("* GIGA Queen blocks the way!", "scr_encountersetup_slash_scr_encountersetup_gml_1104_0");
		instance_create(0, 0, o_bq_whitefade_persistent);
		global.batmusic[0] = snd_init("boxing_boss.ogg");
		mus_loop_ext(global.batmusic[0], 1, 1);
		global.boxingphase = 3;
		with (obj_gigaqueen_enemy)
		{
			balloonorder = 0;
			ballooncon = 0;
			balloonend = 1;
			talkedcon = 0;
			playerhasntdodged = 0;
			playerhasntdodgedorder = 0;
			init = 0;
			didntcounterthisturn = 0;
			didntpunchthisturn = 0;
			didntdodgethisturn = 0;
			recentphasetransition = 0;
		}
		with (o_boxingcontroller)
		{
			global.hp[1] = global.maxhp[1];
			global.tension = 0;
			specialcon = 0;
			health_count = 200;
			dead = 0;
			cancontrol = 1;
			drawflip = 1;
			image_xscale = 2;
			dead = 0;
			x = xstart;
			y = ystart;
			sprite_index = spr_bhero;
			image_index = 0;
			vspeed = 0;
			specialcon = 0;
			specialcontimer = 0;
			special_punch_count = 0;
			special_punch_turns = 0;
			flameactive = 0;
			flametimer = 0;
			flamepunch = 0;
			swordactive = 0;
			swordtimer = 0;
			swordpunch = 0;
			laseractive = 0;
			lasertimer = 0;
			laserpunch = 0;
			duckactive = 0;
			ducktimer = 0;
			duckpunch = 0;
			turboactive = 0;
			turbotimer = 0;
			turbopunch = 0;
			healactive = 0;
			healtimer = 0;
			healpunch = 0;
		}
		with (o_boxinghud)
		{
			sub_healthbar_count = 2;
			healthbar_flash = 0;
			hide_ui = 0;
			hide_ui_quick = 0;
		}
		with (o_boxing_wireframe)
		{
			pacifist_timer = 0;
			pacifist_state = 0;
			draw_draw_timer = 0;
		}
		with (o_boxingqueen)
		{
			health_count = 1500;
			phase_transition = 0;
			attackcount = 0;
			attackcountmax = 0;
			useattacklist = 1;
			pattern_state = 0;
			player_dead_timer = 0;
			attackpattern = 0;
			attackcon = 0;
			attacktype = 1;
			punch_amount = 1;
			state = 0;
			sprite_index = spr_bqueen_idle;
			x = xstart;
			y = ystart;
			scr_qb_reset();
			with (o_boxingcontroller)
				boxingtimer = 270;
			event_user(1);
		}
		with (obj_closing_block_left)
			instance_destroy();
		with (obj_closing_block_right)
			instance_destroy();
		with (obj_rotating_sprite)
			instance_destroy();
		with (obj_rotating_sprites_controller)
			instance_destroy();
		instance_destroy();
	}
}
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_alpha(image_alpha);
draw_text_transformed(340, 150, stringsetloc("Don't give up...!", "obj_boxing_loss_controller_slash_Draw_0_gml_116_0"), 2, 2, 0);
draw_sprite(spr_bhero_bench, 0, 320, 320);
if (o_boxingcontroller.headsprite == spr_bhero_head_a)
	draw_sprite(spr_bhero_head_a, 9, 322, 305);
if (o_boxingcontroller.headsprite == spr_bhero_head_b)
	draw_sprite(spr_bhero_head_b, 9, 320, 306);
if (o_boxingcontroller.headsprite == spr_bhero_head_c)
	draw_sprite(spr_bhero_head_c, 9, 321, 303);
if (o_boxingcontroller.headsprite == spr_bhero_head_d)
	draw_sprite(spr_bhero_head_d, 9, 321, 300);
draw_set_alpha(image_alpha - 1);
draw_sprite(spr_bhero_bench, 0, 320, 320);
if (o_boxingcontroller.headsprite == spr_bhero_head_a)
	draw_sprite(spr_bhero_head_a, 9, 322, 305);
if (o_boxingcontroller.headsprite == spr_bhero_head_b)
	draw_sprite(spr_bhero_head_b, 9, 320, 306);
if (o_boxingcontroller.headsprite == spr_bhero_head_c)
	draw_sprite(spr_bhero_head_c, 9, 321, 303);
if (o_boxingcontroller.headsprite == spr_bhero_head_d)
	draw_sprite(spr_bhero_head_d, 9, 321, 300);
draw_set_halign(fa_left);
draw_set_alpha(1);
if (con == 0)
	draw_sprite_ext(spr_acrade_fightagain, 1, 190, 400, 1, 1, 0, c_white, image_alpha);
else
	draw_sprite_ext(spr_acrade_fightagain, 0, 190, 400, 1, 1, 0, c_white, image_alpha);
if (con == 1)
	draw_sprite_ext(scr_84_get_sprite("spr_acrade_retire"), 1, 370, 400, 1, 1, 0, c_white, image_alpha);
else
	draw_sprite_ext(scr_84_get_sprite("spr_acrade_retire"), 0, 370, 400, 1, 1, 0, c_white, image_alpha);
