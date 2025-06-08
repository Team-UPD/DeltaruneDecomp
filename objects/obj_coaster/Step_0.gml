if (type == 0 && !init)
{
	init = true;
	character_sprite = spr_krisr_dark;
	actor = scr_dark_marker(0, 0, spr_krisr_dark);
	actor.image_speed = 0;
	actor.visible = 0;
}
if (type == 1 && !init)
{
	init = true;
	default_sprite_front = spam_car ? spr_sneo_car_front : spr_susie_coaster_front;
	default_sprite_back = spam_car ? spr_sneo_car_back : spr_susie_coaster_back;
	hurt_sprite_front = spr_susie_coaster_hurt_front;
	hurt_sprite_back = spr_susie_coaster_hurt_back;
	hurt_character_sprite = spr_susie_hurt;
	character_sprite = spr_susie_walk_right_dw;
	actor = scr_dark_marker(0, 0, spr_susie_walk_right_dw);
	actor.image_speed = 0;
	actor.visible = 0;
	coaster_offset_x = -20;
	coaster_offset_y = 55;
}
if (type == 2 && !init)
{
	init = true;
	default_sprite_front = spam_car ? spr_sneo_car_front : spr_ralsei_coaster_front;
	default_sprite_back = spam_car ? spr_sneo_car_back : spr_ralsei_coaster_back;
	hurt_sprite_front = spr_ralsei_coaster_hurt_front;
	hurt_sprite_back = spr_ralsei_coaster_hurt_back;
	hurt_character_sprite = spr_ralsei_hurt_overworld;
	character_sprite = spr_ralsei_walk_right;
	actor = scr_dark_marker(0, 0, spr_ralsei_walk_right);
	actor.image_speed = 0;
	actor.visible = 0;
	coaster_offset_x = -30;
	coaster_offset_y = 45;
}
if (type == 3 && !init)
{
	init = true;
	default_sprite_front = spr_berdly_coaster_front;
	default_sprite_back = spr_berdly_coaster_back;
	hurt_sprite_front = spr_berdly_coaster_hurt_front;
	hurt_sprite_back = spr_berdly_coaster_hurt_back;
	hurt_character_sprite = spr_berdlyb_shocked;
	character_sprite = spr_berdly_walk_left_dw;
	actor = scr_dark_marker(0, 0, spr_berdly_walk_left_dw);
	actor.image_speed = 0;
	actor.visible = 0;
	coaster_offset_x = -65;
	coaster_offset_y = 30;
}
if (type == 4 && !init)
{
	init = true;
	default_sprite_front = spr_noelle_coaster_front;
	default_sprite_back = -1;
	character_sprite = spr_noelle_walk_left_dw;
	actor = scr_dark_marker(0, 0, spr_noelle_walk_left_dw);
	actor.image_speed = 0;
	actor.visible = 0;
	coaster_offset_x = -65;
	coaster_offset_y = 45;
}
if (character_sprite != actor.sprite_index)
{
	actor.sprite_index = character_sprite;
	actor.image_index = 0;
}
if (con == 0)
{
	actor.image_speed = animate ? 0.25 : 0;
}
else
{
	image_speed = 0;
	if (type == 0 && actor.image_index < 6)
		actor.image_index += 0.25;
	if (type == 1 && actor.image_index < 5)
		actor.image_index += 0.25;
	if (type == 2 && actor.image_index < 10)
		actor.image_index += 0.5;
}
if (stop_siner == 1)
{
	sinerx = 0;
	battlecoasterx = (camerax() + 122) - (type * 20);
	if (type == 3)
		battlecoasterx = camerax() + 515;
	if (type == 0)
		battlecoasterx += 4;
	repeat (4)
	{
		if (x < battlecoasterx)
			x += 1;
		if (x > battlecoasterx)
			x -= 1;
	}
}
else
{
	sinerx = 0;
	sinery = 0;
	if (siner_add0 != 0)
	{
		siner0 += siner_add0;
		if (siner_type0 == "sin")
			sinmove = sin(siner0) * siner_amplitude0;
		else
			sinmove = cos(siner0) * siner_amplitude0;
		if (siner_visual0 == 1)
		{
			sinerx += lengthdir_x(sinmove, siner_direction0);
			sinery += lengthdir_y(sinmove, siner_direction0);
		}
		else
		{
			x += lengthdir_x(sinmove, siner_direction0);
			y += lengthdir_y(sinmove, siner_direction0);
		}
	}
}
