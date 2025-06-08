draw_set_alpha(image_alpha);
draw_rectangle_color(x1, y1, x2, y2, c_black, c_black, c_black, c_black, 0);
draw_set_alpha(1);
if (con == 0)
{
	repeat (5)
	{
		if (x1 > camerax())
			x1 -= 2.66;
		if (y1 > cameray())
			y1 -= 2;
		if (x2 < (camerax() + 640))
			x2 += 2.66;
		if (y2 < (cameray() + 480))
			y2 += 2.66;
	}
	timer++;
	if (timer <= 30)
	{
		obj_ch2_scene10.kr_actor.y = lerp(su_y_save, cameray() + 370, timer / 30);
		obj_ch2_scene10.kr_actor.depth = -19999;
		obj_ch2_scene10.su_actor.y = lerp(su_y_save, cameray() + 370, timer / 30);
		obj_ch2_scene10.su_actor.depth = -19999;
		obj_ch2_scene10.ra_actor.y = lerp(ra_y_save, cameray() + 430, timer / 30);
		obj_ch2_scene10.ra_actor.depth = -19998;
		obj_ch2_scene10.qu_actor.y = lerp(qu_y_save, cameray() + 370, timer / 30);
		obj_ch2_scene10.qu_actor.depth = -19998;
	}
	if (timer >= 60)
	{
		con = 1;
		timer = 0;
	}
}
if (con == 1.5)
{
	depth = 4;
	instance_create(288, 192, o_boxingcontroller);
	instance_create(206, 60, o_boxingqueen);
	instance_create(64, 96, obj_3d_bg_effect);
	con = 2;
}
if (con == 1)
{
	depth = 4;
	instance_create(x, y, obj_ch2_scene10_arcade_fg);
	con = 1.5;
}
if (con == 3)
{
	image_alpha -= 0.1;
	timer++;
	if (timer == 10)
	{
		with (obj_ch2_scene10)
			alarm[0] = 1;
	}
	if (timer == 12)
	{
		with (obj_ch2_scene10)
		{
			with (obj_marker)
				instance_destroy();
		}
	}
	if (timer <= 10)
	{
		obj_ch2_scene10.kr_actor.x = lerp(261, 261, timer / 10);
		obj_ch2_scene10.kr_actor.y = lerp(cameray() + 370, 143, timer / 10);
		obj_ch2_scene10.kr_actor.sprite_index = spr_krisu_dark;
		obj_ch2_scene10.su_actor.x = lerp(282, 282, timer / 10);
		obj_ch2_scene10.su_actor.y = lerp(cameray() + 370, 143, timer / 10);
		obj_ch2_scene10.su_actor.sprite_index = spr_susie_walk_up_dw;
		obj_ch2_scene10.su_actor.depth = obj_ch2_scene10.kr_actor.depth - 1;
		obj_ch2_scene10.ra_actor.x = lerp(231, 231, timer / 10);
		obj_ch2_scene10.ra_actor.y = lerp(cameray() + 370, 147, timer / 10);
		obj_ch2_scene10.ra_actor.sprite_index = spr_ralsei_walk_up;
		obj_ch2_scene10.ra_actor.depth = obj_ch2_scene10.kr_actor.depth - 1;
		obj_ch2_scene10.qu_actor.x = lerp(325, 325, timer / 10);
		obj_ch2_scene10.qu_actor.y = lerp(cameray() + 370, 90, timer / 10);
		obj_ch2_scene10.qu_actor.sprite_index = spr_queen_walk_up;
	}
	if (timer >= 15)
	{
		instance_destroy();
		with (obj_ch2_scene10_arcade_fg2)
			instance_destroy();
	}
}
if (con == 2)
{
	if (punch_r_timer > 0)
	{
		punch_r_timer -= 1;
		obj_ch2_scene10.kr_actor.sprite_index = spr_cutscene_10_susie_kris_t_pose_back_punch_right;
		obj_ch2_scene10.su_actor.sprite_index = spr_cutscene_10_susie_kris_t_pose_back_punch_right;
		var rand = punch_r_timer;
		obj_ch2_scene10.kr_actor.y = (cameray() + 370) - rand;
		obj_ch2_scene10.su_actor.y = (cameray() + 370) - rand;
	}
	else if (punch_l_timer > 0)
	{
		punch_l_timer -= 1;
		obj_ch2_scene10.kr_actor.sprite_index = spr_cutscene_10_susie_kris_t_pose_back_punch_left;
		obj_ch2_scene10.su_actor.sprite_index = spr_cutscene_10_susie_kris_t_pose_back_punch_left;
		var rand = punch_l_timer;
		obj_ch2_scene10.kr_actor.y = (cameray() + 370) - rand;
		obj_ch2_scene10.su_actor.y = (cameray() + 370) - rand;
	}
	else if (dodge_r_timer > 0)
	{
		dodge_r_timer -= 1;
		obj_ch2_scene10.kr_actor.sprite_index = spr_cutscene_10_susie_kris_t_pose_back_dodge_right;
		obj_ch2_scene10.su_actor.sprite_index = spr_cutscene_10_susie_kris_t_pose_back_dodge_right;
		var rand = dodge_r_timer;
		obj_ch2_scene10.kr_actor.x = kr_x_save + rand;
		obj_ch2_scene10.su_actor.x = su_x_save + rand;
	}
	else if (dodge_l_timer > 0)
	{
		dodge_l_timer -= 1;
		obj_ch2_scene10.kr_actor.sprite_index = spr_cutscene_10_susie_kris_t_pose_back_dodge_left;
		obj_ch2_scene10.su_actor.sprite_index = spr_cutscene_10_susie_kris_t_pose_back_dodge_left;
		var rand = dodge_l_timer;
		obj_ch2_scene10.kr_actor.x = kr_x_save - rand;
		obj_ch2_scene10.su_actor.x = su_x_save - rand;
	}
	else if (dodge_d_timer > 0)
	{
		dodge_d_timer -= 1;
		obj_ch2_scene10.kr_actor.sprite_index = spr_cutscene_10_susie_kris_t_pose_back;
		obj_ch2_scene10.su_actor.sprite_index = spr_cutscene_10_susie_kris_t_pose_back;
		var rand = dodge_d_timer;
		obj_ch2_scene10.kr_actor.y = cameray() + 370 + rand;
		obj_ch2_scene10.su_actor.y = cameray() + 370 + rand;
	}
	else
	{
		obj_ch2_scene10.kr_actor.sprite_index = spr_cutscene_10_susie_kris_t_pose_back;
		obj_ch2_scene10.su_actor.sprite_index = spr_cutscene_10_susie_kris_t_pose_back;
	}
}
