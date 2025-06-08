if (con == 0)
{
	var kris_x, kris_y, sus_x, sus_y, ral_x, ral_y;
	if (i_ex(obj_actor))
	{
		with (obj_actor)
		{
			if (name == "kris")
			{
				kris_x = x;
				kris_y = y;
			}
			if (name == "susie")
			{
				sus_x = x;
				sus_y = y;
			}
			if (name == "ralsei")
			{
				ral_x = x;
				ral_y = y;
			}
		}
	}
	for (i = 0; i < 3; i++)
	{
		fallmarker[i] = scr_dark_marker((camerax() + 400) - (i * 100), cameray() - 100, spr_kris_fall_d_dw);
		fallmarker[i].vspeed = 2;
		fallmarker[i].hspeed = -5;
		fallmarker[i].gravity = 0.2;
		fallmarker[i].image_speed = 0.25;
		fallmarker[i].depth = 0;
	}
	fallmarker[1].sprite_index = spr_susie_dw_fall_d;
	fallmarker[2].sprite_index = spr_ralsei_jump;
	with (fallmarker[0])
	{
		x = kris_x;
		y = kris_y;
	}
	with (fallmarker[1])
	{
		x = sus_x;
		y = sus_y;
	}
	with (fallmarker[2])
	{
		x = ral_x;
		y = ral_y;
	}
	con = 0.5;
}
if (con == 0.1)
{
	if (fallmarker[0].y >= 720)
		con = 0.5;
}
if (con == 0.5)
{
	hspeed = 36;
	friction = 1;
	con = 1;
}
if (con == 1)
{
	if (x >= (camerax() + 360))
	{
		for (i = 0; i < 3; i++)
		{
			with (fallmarker[i])
				instance_destroy();
		}
		timer = 0;
		con = 2;
		coasterSprite[1] = spr_kris_dw_landed;
		coasterSprite[2] = spr_susie_dw_landed;
		coasterSprite[3] = spr_teacup_ralsei_land;
		coasterVisible[1] = 1;
		coasterVisible[2] = 1;
		coasterVisible[3] = 1;
		for (i = 1; i < 4; i++)
		{
			dx[i] = 65 - sprite_get_width(coasterSprite[i]);
			dy[i] = (-sprite_get_height(coasterSprite[i]) * 2) + 44;
		}
	}
}
if (con == 2)
{
	timer++;
	if (timer >= 15)
	{
		coasterSprite[1] = spr_krisr_dark;
		coasterSprite[2] = spr_susier_dark_eyes;
		coasterSprite[3] = spr_ralsei_walk_right;
		for (i = 1; i < 4; i++)
		{
			dx[i] = 65 - sprite_get_width(coasterSprite[i]);
			dy[i] = (-sprite_get_height(coasterSprite[i]) * 2) + 44;
		}
		con = 3;
		timer = 0;
	}
}
if (con == 3)
	timer++;
if (con == 4)
{
	hspeed = 4;
	friction = -0.5;
	con = 5;
}
if (con == 1 || con == 2)
	y = lerp(y, cameray() + 280, 0.09);
spacing = 100;
for (i = 0; i < 20; i++)
{
	coasterSiner[i] += 1;
	if (coasterVisible[i])
		draw_sprite_ext(coasterSprite[i], coasterImageIndex[i] + (coasterSiner[i] * coasterImageSpeed[i]), (((x + coasterX[i]) - (spacing * i)) + dx[i]) - 30, y + (sin(coasterSiner[i] / 8) * 4) + coasterY[i] + dy[i] + 4, coasterXscale[i], 2, image_angle, c_white, image_alpha);
	if (coasterCarVisible[i])
		draw_sprite_ext(spr_berdly_coaster_front, coasterSiner[i] * coasterImageSpeed[i], (130 + x) - (spacing * i), y + (sin(coasterSiner[i] / 8) * 4), -2, 2, image_angle, c_white, image_alpha);
}
