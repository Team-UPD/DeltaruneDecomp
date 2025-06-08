if (fade_away)
{
	if (main_alpha > 0)
	{
		main_alpha -= 0.1;
	}
	else
	{
		fade_away = false;
		beam_offset = 0;
		show_laser_outline = false;
		show_laser_beam = false;
	}
}
if (show_lightners)
{
	show_lightners = false;
	kris_screen = instance_create(camerax() + screen_offset, cameray() + 80, obj_queenscreen);
	kris_screen.image_index = 38;
	kris_screen.aligned = 1;
	sus_screen = instance_create(camerax() + (screen_offset * 2), cameray() + 80, obj_queenscreen);
	sus_screen.image_index = 39;
	sus_screen.aligned = 1;
	no_screen = instance_create(camerax() + (screen_offset * 3), cameray() + 80, obj_queenscreen);
	no_screen.image_index = 7;
	no_screen.aligned = 1;
}
if (merge_lightners)
{
	make_new = true;
	merge_lightners = false;
	beam_offset = 0;
	with (kris_screen)
		scr_move_to_point_over_time(other.sus_screen.x, other.sus_screen.y, other.merge_timer);
	with (no_screen)
		scr_move_to_point_over_time(other.sus_screen.x, other.sus_screen.y, other.merge_timer);
}
if (make_new)
{
	merge_timer--;
	if (merge_timer <= 0)
	{
		make_new = false;
		fade_screens = true;
		show_mini_fountains = false;
		main_alpha = 1;
		beam_offset = 0;
		show_laser_beam = true;
		show_laser_outline = true;
	}
}
if (fade_screens)
{
	screen_alpha -= 0.1;
	with (obj_queenscreen)
		image_alpha = other.screen_alpha;
	if (screen_alpha <= 0)
	{
		fade_screens = false;
		with (obj_queenscreen)
			instance_destroy();
	}
}
if (show_hands)
{
	if (!hand_init)
	{
		hand_init = true;
		hand_right_xpos = camerax() + view_wport[0];
	}
	if (hand_both_reveal)
	{
		hand_right_xpos = lerp(hand_right_xpos, camerax() + (view_wport[0] / 2) + 60, 0.2);
		if (hand_right_xpos <= (camerax() + (view_wport[0] / 2) + 60))
		{
			hand_both_reveal = false;
			hand_both_reveal_finish = true;
		}
	}
	if (knife_reveal)
	{
		knife_alpha = lerp(knife_alpha, 1, 0.2);
		knife_ypos = lerp(knife_ypos, 10, 0.2);
		if (knife_ypos >= 9)
		{
			knife_reveal = false;
			knife_hover = true;
		}
	}
	if (knife_hover)
	{
		knife_siner += 0.075;
		knife_ypos = 10 + (sin(knife_siner / 0.65) * 5);
	}
	if (knife_stab)
	{
		knife_hover = false;
		stab_timer += 0.05;
		knife_ypos = lerp_ease_ext(knife_ypos, 200, true, false, stab_timer, -1);
		if (stab_timer >= 0.5 && !hand_retreat)
			hand_retreat = true;
		if (stab_timer >= 1)
		{
			stab_timer = 0;
			knife_stab = false;
			show_laser_beam = true;
		}
	}
	if (hand_retreat)
	{
		retreat_timer += 0.05;
		hand_right_xpos = lerp_ease_ext(hand_right_xpos, camerax() + view_wport[0], true, false, retreat_timer, 4);
		if (retreat_timer >= 1)
		{
			retreat_timer = 0;
			hand_retreat = false;
			show_hands = false;
		}
	}
}
