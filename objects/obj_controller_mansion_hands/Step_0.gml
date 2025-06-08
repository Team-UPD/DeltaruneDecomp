if (con == 1 && !d_ex())
{
	global.interact = 1;
	hand2 = instance_create(498, 258, obj_marker);
	hand2.sprite_index = spr_dw_mansion_hands_cutscene;
	hand2.image_xscale = -2;
	hand2.image_yscale = 2;
	hand2.depth = depth - 30;
	hand2.image_index = 1;
	hand2.image_speed = 0;
	coverup = instance_create(416, 246, obj_marker);
	coverup.sprite_index = spr_mansion_hands_coverup;
	coverup.image_xscale = 2;
	coverup.image_yscale = 2;
	coverup.depth = hand2.depth - 20;
	bubbles2 = instance_create(420, 238, obj_marker);
	bubbles2.sprite_index = spr_mansion_hands_bubbles;
	bubbles2.image_speed = 0.25;
	bubbles2.image_xscale = 2;
	bubbles2.image_yscale = 2;
	bubbles2.depth = hand2.depth - 100;
	con++;
}
if (con == 2)
{
	if (hand2.y > 64)
	{
		hand2.y -= 2;
	}
	else
	{
		hand2.y = 64;
		timer = 0;
		con++;
	}
}
if (con == 3)
{
	timer++;
	if (timer == 1)
	{
		with (coverup)
			instance_destroy();
		timer = 0;
		con++;
	}
}
if (con == 4)
{
	timer++;
	if (timer == 5)
		con++;
}
if (con == 5)
{
	with (hand1)
		scr_move_to_point_over_time(x - 64, y, 14);
	with (hand2)
		scr_move_to_point_over_time(x + 64, y, 14);
	timer = 0;
	con++;
}
if (con == 6)
{
	timer++;
	if (timer == 15)
		con++;
}
if (con == 7)
{
	with (hand1)
		scr_move_to_point_over_time(x + 164, y, 8);
	with (hand2)
		scr_move_to_point_over_time(x - 164, y, 8);
	timer = 0;
	con++;
}
if (con == 8)
{
	timer++;
	if (timer < 8 && (timer % 2) == 0)
	{
		with (hand1)
			scr_afterimagefast();
		with (hand2)
			scr_afterimagefast();
	}
	if (timer == 8)
	{
		snd_play(snd_whip_crack_only);
		instance_create(x, y, obj_shake);
	}
	if (timer == 9)
	{
		with (hand1)
			scr_move_to_point_over_time(x - 100, y, 16);
		with (hand2)
			scr_move_to_point_over_time(x + 100, y, 16);
		timer = 0;
		with (obj_bridgeSwapper)
			alarm[0] = 1;
		con++;
	}
}
if (con == 9)
{
	timer++;
	if (timer == 45)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (Looks like the hand is out of the way now...)/%", "obj_controller_mansion_hands_slash_Step_0_gml_115_0");
		d_make();
		con++;
		timer = 0;
	}
}
if (con == 10 && !d_ex())
{
	if (timer == 0)
		scr_camerareset(12);
	timer++;
	if (timer == 13)
	{
		global.interact = 0;
		global.facing = 0;
		scr_tempsave();
		con++;
	}
}
if (con > 3)
{
	if (i_ex(bubbles2))
	{
		with (bubbles2)
			x = other.hand2.x - 82;
	}
}
if (i_ex(bubbles1))
{
	with (bubbles1)
		x = other.hand1.x - 82;
}
