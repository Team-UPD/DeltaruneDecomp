if (fireworks_con == 1 && !d_ex())
{
	global.interact = 1;
	fireworks_con = 2;
}
if (fireworks_con == 2)
{
	check1 = instance_create(430, 260, obj_marker);
	check1.sprite_index = spr_queenscreen;
	check1.image_index = 10;
	check1.image_speed = 0;
	check1.image_yscale = 0.05;
	check1.image_xscale = 0.1;
	check1.depth = hacker.depth + 10;
	check2 = instance_create(430, 260, obj_marker);
	check2.sprite_index = spr_queenscreen;
	check2.image_index = 10;
	check2.image_speed = 0;
	check2.image_yscale = 0.05;
	check2.image_xscale = 0.1;
	check2.depth = hacker.depth + 10;
	check3 = instance_create(430, 260, obj_marker);
	check3.sprite_index = spr_queenscreen;
	check3.image_index = 10;
	check3.image_speed = 0;
	check3.image_yscale = 0.05;
	check3.image_xscale = 0.1;
	check3.depth = hacker.depth + 10;
	fireworks_con++;
	timer = 0;
}
if (fireworks_con == 3)
{
	timer++;
	with (check1)
	{
		if (image_xscale != 2)
			image_xscale = lerp(image_xscale, 2, 0.125);
	}
	with (check2)
	{
		if (image_xscale != 2)
			image_xscale = lerp(image_xscale, 2, 0.125);
	}
	with (check3)
	{
		if (image_xscale != 2)
			image_xscale = lerp(image_xscale, 2, 0.125);
	}
	with (check1)
	{
		if (image_yscale != 2)
			image_yscale = lerp(image_yscale, 2, 0.15);
	}
	with (check2)
	{
		if (image_yscale != 2)
			image_yscale = lerp(image_yscale, 2, 0.15);
	}
	with (check3)
	{
		if (image_yscale != 2)
			image_yscale = lerp(image_yscale, 2, 0.15);
	}
	if ((timer % 2) == 0)
	{
		with (check1)
			scr_afterimagefast();
		with (check2)
			scr_afterimagefast();
		with (check3)
			scr_afterimagefast();
	}
	with (check1)
	{
		if (x != 240)
			x = lerp(x, 240, 0.125);
		if (y != 160)
			y = lerp(y, 160, 0.125);
	}
	with (check2)
	{
		if (x != 320)
			x = lerp(x, 320, 0.125);
		if (y != 80)
			y = lerp(y, 80, 0.125);
	}
	with (check3)
	{
		if (x != 400)
			x = lerp(x, 400, 0.125);
		if (y != 160)
			y = lerp(y, 160, 0.125);
	}
	if (timer == 40)
	{
		fireworks_con = 4;
		timer = 0;
		check1.vspeed = -0.02;
		check1.hspeed = 0.02;
		check2.vspeed = -0.02;
		check3.vspeed = -0.02;
		check3.hspeed = -0.02;
	}
}
if (fireworks_con == 4)
{
	timer++;
	if (i_ex(check1))
	{
		check1.vspeed *= 1.1;
		check1.hspeed *= 1.1;
		with (check1)
			scr_afterimagefast();
		if (check1 < -80)
		{
			with (check1)
				instance_destroy();
		}
	}
	if (i_ex(check2))
	{
		check2.vspeed *= 1.1;
		with (check2)
			scr_afterimagefast();
		if (check2 < -80)
		{
			with (check2)
				instance_destroy();
		}
	}
	if (i_ex(check3))
	{
		with (check3)
			scr_afterimagefast();
		check3.vspeed *= 1.1;
		check3.hspeed *= 1.1;
		if (check3 < -80)
		{
			with (check3)
				instance_destroy();
		}
	}
	if (timer == 25)
	{
		if (i_ex(obj_fireworks_manager))
		{
			with (obj_fireworks_manager)
				is_active = true;
		}
		if (i_ex(obj_cyber_shadowMaker_fireworks))
		{
			with (obj_cyber_shadowMaker_fireworks)
				is_active = true;
		}
	}
	if (timer >= 90)
	{
		global.interact = 0;
		global.facing = 0;
		fireworks_con++;
	}
}
