if (release)
{
	if (!head_init)
		head_init = true;
	if (head_x_pos < 0)
		head_x_pos = (camerax() + (view_wport[0] / 2)) - sprite_get_width(spr_cutscene_26_queen_giga_head);
	if (head_y_pos == -1)
		head_y_pos = cameray() + view_hport[0] + 100;
	head_y_pos = clamp(head_y_pos - 10, cameray() - 15, cameray() + view_hport[0] + 100);
	if (head_y_pos <= (cameray() - 15))
		release = false;
}
if (release_fast)
{
	head_y_pos = clamp(head_y_pos - 35, cameray() - 15, cameray() + view_hport[0] + 100);
	if (head_y_pos <= (cameray() - 15))
		release_fast = false;
}
if (leave)
{
	head_y_pos = clamp(head_y_pos + 10, cameray() - 15, cameray() + view_hport[0] + 100);
	if (head_y_pos >= (cameray() + view_hport[0] + 100))
		leave = false;
}
if (leave_fast)
{
	head_y_pos = clamp(head_y_pos + 30, cameray() - 15, cameray() + view_hport[0] + 100);
	if (head_y_pos >= (cameray() + view_hport[0] + 100))
		leave = false;
}
if (laugh)
{
	animsiner++;
	if (pilot_alpha == 0)
		pilot_alpha = 1;
	head_sprite = damaged ? spr_cutscene_27_queen_laugh_damaged : spr_cutscene_26_queen_giga_head_laugh;
	anim_index = animsiner / 4;
}
else
{
	animsiner = 0;
	anim_index = 0;
}
if (surprised)
{
	surprised = false;
	head_sprite = spr_cutscene_27_queen_shock_damaged;
	pilot_alpha = 0;
	if (!damaged)
		head_sprite = spr_cutscene_27_queen_giga_surprise;
}
if (unhappy)
{
	unhappy = false;
	head_sprite = spr_cutscene_26_queen_giga_head_unhappy;
	pilot_sprite = spr_cutscene_26_queen_pilot;
	pilot_alpha = 1;
}
if (static_start)
{
	static_start = false;
	head_sprite = spr_cutscene_27_queen_look_down_damaged;
	pilot_alpha = 0;
	static_happened = true;
	my_static = instance_create(252, 123, obj_ch2_queen_static);
	with (my_static)
		scr_depth();
	crack = scr_dark_marker(my_static.x, my_static.y, spr_cutscene_27_queen_static_googles_crack);
	crack.depth = my_static.depth - 100;
}
if (static_stop)
{
	static_stop = false;
	static_start = false;
	static_happened = false;
	pilot_alpha = 1;
	if (i_ex(obj_ch2_queen_static))
	{
		instance_destroy(obj_ch2_queen_static);
		instance_destroy(crack);
	}
}
if (damagedfx)
{
	smoketimer++;
	if (smoketimer >= 3)
	{
		smoke = instance_create(head_x_pos + 300, head_y_pos + 120, obj_afterimage_grow);
		smoke.depth = depth + 200;
		smoke.sprite_index = spr_cakesmoke;
		smoke.gravity = -0.5;
		smoke.image_alpha = 2;
		smoke.hspeed = random(2);
		smoke.image_xscale = 2;
		smoke.image_yscale = 2;
		smoke.visible = 1;
		smoke = instance_create(head_x_pos + 330, head_y_pos + 180, obj_afterimage_grow);
		smoke.depth = depth + 200;
		smoke.sprite_index = spr_cakesmoke;
		smoke.gravity = -0.5;
		smoke.image_alpha = 1.6;
		smoke.hspeed = random(2) + 2;
		smoke.image_xscale = 0;
		smoke.image_yscale = 0;
		smoke.visible = 1;
		smoketimer = 0;
	}
	if (climb > 0)
		shaketimer = 0;
	else
		shaketimer++;
	if (shaketimer == 53)
	{
		smoke = instance_create(head_x_pos + 240, head_y_pos + 180, obj_afterimage_grow);
		smoke.depth = depth - 10;
		smoke.sprite_index = spr_plugboy_spare_electricity;
		smoke.hspeed = -2;
		smoke.gravity = -0.5;
		smoke.image_alpha = 1.6;
		smoke.hspeed = 0;
		smoke.image_xscale = 0;
		smoke.image_yscale = 0;
		smoke.visible = 1;
	}
	if (shaketimer >= 55 && shaketimer <= 60)
	{
		head_x_pos = rem_head_x_pos + random_range(2, -2);
		head_y_pos = rem_head_y_pos + random_range(1, -1);
	}
	if (shaketimer == 61)
		shaketimer = 0;
}
if (climb == 1)
{
	if (!head_init)
		head_init = true;
	climbtimer++;
	if (climbtimer == 1)
		rem_head_y_pos = head_y_pos;
	if (climbtimer == 2)
		scr_lerpvar_instance(id, "head_y_pos", rem_head_y_pos, rem_head_y_pos - 120, 30, -3, "out");
	if (climbtimer == 10)
	{
		var deepsnd = snd_play(snd_closet_impact);
		snd_pitch(deepsnd, 0.5);
		instance_create(0, 0, obj_shake);
	}
	if (climbtimer == 40)
	{
		climbtimer = 0;
		climb = 0;
		rem_head_y_pos = head_y_pos;
	}
}
