if (con == 0)
{
	if (obj_mainchara.y > 700 && obj_mainchara.x > 1900 && global.flag[408] == 0)
	{
		global.flag[408] = 1;
		con++;
	}
}
if (con == 1)
{
	sweet = 0;
	nisekk = 0;
	djtable = 0;
	nisehatguy = 0;
	nisekk = instance_create(3074, (cameray() - 64 - 128 - 32 - 4) + 82, obj_marker);
	nisehatguy = instance_create(3072, (cameray() - 64 - 256) + 106, obj_marker);
	sweet = instance_create(3100, cameray() - 64 - 32, obj_marker);
	djtable = instance_create(sweet.x - 40, sweet.y + 64, obj_marker);
	with (sweet)
	{
		scr_depth();
		vspeed = 18;
		sprite_index = spr_sweet_dance;
		image_speed = 0.25;
		image_xscale = 2;
		image_yscale = 2;
	}
	with (nisehatguy)
	{
		scr_depth();
		vspeed = 18;
		sprite_index = spr_hatguy_idle;
		image_speed = 0.25;
		image_xscale = 2;
		image_yscale = 2;
	}
	with (nisekk)
	{
		scr_depth();
		vspeed = 18;
		sprite_index = spr_kk_button_press;
		image_speed = 0.25;
		image_xscale = 2;
		image_yscale = 2;
	}
	with (djtable)
	{
		scr_depth();
		vspeed = 18;
		sprite_index = spr_cutscene_cyber01_dj_table_side;
		image_speed = 0.25;
		image_xscale = 2;
		image_yscale = 2;
	}
	con++;
}
if (con == 2)
{
	if (charaX() < 2680)
	{
		global.flag[7] = 1;
		block = instance_create(2720, 2600, obj_solidblocksized);
		blocklock = 0;
		con = 3;
	}
}
if (con == 3)
{
	if (i_ex(realsus))
		susx = realsus.x;
	if (i_ex(obj_mainchara))
		plx = obj_mainchara.x + obj_mainchara.sprite_width + 2;
	if (block.x > plx)
		block.x = plx;
	if (block.x > susx)
		block.x -= 2;
	if (block.x < 560)
		block.x = 560;
	if (charaX() <= 480)
	{
		global.flag[7] = 0;
		con++;
	}
}
if (con == 4)
	block.x = 560;
if (instance_exists(obj_marker))
{
	with (obj_marker)
	{
		if (y > room_height)
			instance_destroy();
	}
}
if (con >= 3)
{
	if (instance_exists(obj_caterpillarchara))
	{
		with (obj_caterpillarchara)
		{
			if (name == "susie")
				other.realsus = id;
			if (name == "ralsei")
				other.realral = id;
		}
	}
	if (realsus.x < 2440 && watch == 0)
	{
		with (realsus)
		{
			fun = 1;
			sprite_index = spr_susie_walk_up_dw;
			image_index = 0;
			image_speed = 0;
			hspeed = -4;
			follow = 0;
		}
		watch = 1;
	}
	if (watch == 1)
	{
	}
	if (realral.x < 2480 && ralwatch == 0)
	{
		with (realral)
		{
			fun = 1;
			sprite_index = spr_ralsei_walk_up;
			image_index = 0;
			image_speed = 0;
			hspeed = -4;
			follow = 0;
		}
		ralwatch = 1;
	}
	if (realsus.x < 540 && watch == 1)
	{
		watch = 2;
		with (realsus)
		{
			fun = 0;
			hspeed = 0;
			follow = 1;
			scr_caterpillar_interpolate();
		}
	}
	if (realral.x < 540 && ralwatch == 1)
	{
		ralwatch = 2;
		with (realral)
		{
			fun = 0;
			hspeed = 0;
			follow = 1;
			scr_caterpillar_interpolate();
		}
	}
}
