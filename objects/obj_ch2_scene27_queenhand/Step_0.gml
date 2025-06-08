if (release)
{
	if (image_alpha == 0)
	{
		image_alpha = 1;
		x = camerax();
		y = cameray();
		ral_x = camerax();
	}
	if (y_pos < 0)
		y_pos = view_hport[0] + 100;
	climbtimer++;
	if (climbtimer == 1)
		rem_y_pos = y_pos;
	if (climbtimer == 2)
	{
		wobble++;
		var new_ypos = rem_y_pos - 120;
		if (new_ypos < 95)
			new_ypos = 95;
		scr_lerpvar_instance(id, "y_pos", rem_y_pos, new_ypos, 30, -1, "out");
		var x_offset = ((wobble % 2) == 0) ? -20 : 20;
		var new_xpos = (new_ypos == 95) ? (camerax() + 78) : (rem_x_pos + x_offset);
		scr_lerpvar_instance(id, "x_pos", rem_x_pos, new_xpos, 20, -1, "out");
	}
	if (climbtimer == 40)
	{
		climbtimer = 0;
		rem_y_pos = y_pos;
		rem_x_pos = x_pos;
	}
	if (y_pos <= 95)
		release = false;
}
if (release_normal)
{
	if (image_alpha == 0)
	{
		image_alpha = 1;
		x = camerax();
		y = cameray();
		ral_x = camerax();
	}
	if (y_pos < 0)
		y_pos = view_hport[0] + 100;
	y_pos = clamp(y_pos - 10, 95, view_hport[0] + 100);
	if (y_pos <= 95)
		release_normal = false;
}
if (leave)
{
	if (y_pos == 95)
		hand_sprite = spr_cutscene_26_queen_giga_hand_left;
	y_pos = clamp(y_pos + 10, 95, view_hport[0] + 100);
	if (y_pos >= (view_hport[0] + 100))
	{
		leave = false;
		instance_destroy();
	}
}
if (su_struggle)
{
	su_struggle = false;
	su_sprite = spr_cutscene_27_susie_struggle;
	su_animate = true;
}
if (su_shocked)
{
	su_shocked = false;
	su_sprite = spr_cutscene_27_susie_surprise;
	su_animate = false;
}
if (su_look_left)
{
	su_look_left = false;
	su_sprite = spr_cutscene_27_susie_look_left;
	su_animate = false;
}
if (su_look_right)
{
	su_look_right = false;
	su_sprite = spr_cutscene_27_susie_look_right;
	su_animate = false;
}
if (su_concerned)
{
	su_concerned = false;
	su_sprite = spr_cutscene_27_susie_concerned;
	su_animate = false;
}
if (su_grin_1 || su_grin_2)
{
	su_anim_index = su_grin_2 ? 1 : 0;
	su_grin_1 = false;
	su_grin_2 = false;
	su_sprite = spr_cutscene_27_susie_grin;
	su_animate = false;
}
if (su_squint_1 || su_squint_2)
{
	su_anim_index = su_squint_2 ? 1 : 0;
	su_squint_1 = false;
	su_squint_2 = false;
	su_sprite = spr_cutscene_27_susie_squint;
	su_animate = false;
}
if (su_animate)
{
	su_animsiner++;
	su_anim_index = su_animsiner / 10;
}
else if (su_animsiner != 0)
{
	su_animsiner = 0;
}
if (ra_struggle)
{
	ra_struggle = false;
	ra_sprite = spr_cutscene_27_ralsei_struggle;
	ra_animate = true;
}
if (ra_huh)
{
	ra_huh = false;
	ra_sprite = spr_cutscene_27_ralsei_huh;
	ra_animate = false;
}
if (ra_look)
{
	ra_look = false;
	ra_sprite = spr_cutscene_27_ralsei_look;
	ra_animate = false;
}
if (ra_smile)
{
	ra_smile = false;
	ra_sprite = spr_cutscene_27_ralsei_smile;
	ra_animate = false;
}
if (ra_scared)
{
	ra_scared = false;
	ra_sprite = spr_cutscene_27_ralsei_scared;
	ra_animate = false;
}
if (ra_stern)
{
	ra_stern = false;
	ra_sprite = spr_cutscene_27_ralsei_stern;
	ra_animate = false;
}
if (ra_mu)
{
	ra_mu = false;
	ra_sprite = spr_cutscene_27_ralsei_mu;
	ra_animate = false;
}
if (ra_animate)
{
	ra_animsiner++;
	ra_anim_index = ra_animsiner / 10;
}
else if (ra_animsiner != 0)
{
	ra_animsiner = 0;
	ra_anim_index = 0;
}
