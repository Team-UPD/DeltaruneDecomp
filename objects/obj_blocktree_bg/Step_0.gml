oo = 0;
if (spec == 1)
{
	if (instance_exists(obj_darkponman_ow))
	{
		oo = -0.8 + (obj_darkponman_ow.battlealpha * obj_darkponman_ow.max_battlealpha * 1.5);
		if (oo < 0)
			oo = 0;
		if (oo > 1)
			oo = 1;
		image_blend = merge_color(c_white, c_black, oo);
	}
}
if (spec == 2)
{
	if (instance_exists(obj_darkponman_ow))
	{
		oo = 4 - (obj_darkponman_ow.battlealpha * obj_darkponman_ow.max_battlealpha * 4);
		if (oo > 1)
			oo = 1;
		if (oo < 0)
			oo = 0;
		image_blend = merge_color(c_white, c_black, oo);
	}
}
if (spec < 2)
	blocktimer += 1;
if (blocktimer == 20)
{
	xv = x + (sprite_width / 4) + random(sprite_width / 2);
	yv = y + (sprite_height / 4) + random(sprite_height / 4);
	block = scr_dark_marker(xv, yv, spr_blocktree_block);
	with (block)
	{
		hspeed = 0.4 + random(1);
		vspeed = 0.7 + random(1.5);
		gravity_direction = 0;
		gravity = 0.1;
		image_alpha = 0;
		friction = -0.1;
	}
	block.depth = depth - 1;
	block.image_blend = merge_color(c_white, c_black, oo);
	if (oo >= 0.8)
	{
		with (block)
			instance_destroy();
	}
}
if (blocktimer >= 20 && blocktimer <= 30)
{
	with (block)
	{
		if (image_alpha < 1)
			image_alpha += 0.2;
	}
}
if (blocktimer >= 38)
{
	with (block)
		image_alpha -= 0.1;
}
if (blocktimer >= 48)
{
	blocktimer = 0;
	with (block)
		instance_destroy();
}
