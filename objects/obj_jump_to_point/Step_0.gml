if (i_ex(target))
{
	if (init == 0)
	{
		dark = global.darkzone + 1;
		fakegravity = jumpspeed / (jumptime * 0.5);
		ignoredepth = 0;
		init = 1;
		body_obj = scr_dark_marker(target.x, target.y, target.sprite_index);
		body_obj.sprite_index = target.sprite_index;
		body_obj.image_index = target.image_index;
		body_obj.image_speed = target.image_speed;
		body_obj.image_xscale = target.image_xscale;
		body_obj.image_yscale = target.image_yscale;
		body_obj.depth = target.depth;
		checksprite = body_obj.sprite_index;
		var __depthcheck = 0;
		with (body_obj)
		{
			_remdepth = depth;
			scr_depth();
			if (_remdepth != depth)
				__depthcheck = 1;
			depth = _remdepth;
		}
		if (__depthcheck == 1)
			ignoredepth = 1;
		remy = y;
		shadowoffx = 0;
		shadowoffy = 0;
		shadowheight = sprite_get_height(checksprite);
		y = endy;
		scr_depth();
		y = remy;
		target.visible = 0;
		falseendx = endx;
		falseendy = endy;
		if (usesprites == 1)
		{
			usespritetimer = 0;
			if (landsprite > 0)
			{
				body_obj.sprite_index = landsprite;
				body_obj.image_speed = 0;
				body_obj.image_index = 0;
				if (landsprite == spr_kris_dw_landed)
				{
					body_obj.x -= 2 * dark;
					body_obj.y += 1 * dark;
					falseendx -= (4 * dark);
					startx -= (4 * dark);
					starty -= (4 * dark);
				}
				if (landsprite == spr_susie_dw_landed)
				{
					body_obj.x -= 4 * dark;
					falseendx -= (4 * dark);
					startx += (6 * dark);
					starty -= (6 * dark);
				}
				if (landsprite == spr_teacup_ralsei_land)
				{
					body_obj.y += 2 * dark;
					starty += 4;
					startx -= 6;
					falseendx -= 6;
					falseendy += (2 * dark);
				}
				if (jumpsprite == spr_ralsei_jump)
				{
					shadowoffx -= 10;
					shadowoffy -= 4;
				}
			}
			con = 1;
		}
		else
		{
			con = 2;
		}
	}
	if (con == 1)
	{
		usespritestimer++;
		if (usespritestimer >= 5)
		{
			body_obj.sprite_index = jumpsprite;
			body_obj.image_speed = 0.25;
			con = 2;
		}
	}
	if (con == 2)
	{
		timer++;
		jumpspeed -= fakegravity;
		jumpy -= jumpspeed;
		x = lerp(startx, falseendx, timer / jumptime);
		nowy = lerp(starty, falseendy, timer / jumptime);
		y = nowy;
		target.x = x;
		target.y = nowy;
		body_obj.x = x;
		body_obj.y = nowy + jumpy;
		if (ignoredepth == 0)
		{
			scr_depth();
			depth -= 5000;
			body_obj.depth = depth;
		}
		if (timer >= jumptime)
		{
			body_obj.x = falseendx;
			body_obj.y = falseendy;
			target.x = endx;
			target.y = endy;
			con = 3;
			usespritestimer = 0;
		}
	}
	if (con == 3)
	{
		if (usesprites == 1)
		{
			body_obj.sprite_index = landsprite;
			usespritestimer++;
		}
		else
		{
			usespritestimer = 10;
		}
		if (usespritestimer >= 5)
		{
			target.visible = 1;
			instance_destroy();
		}
	}
}
else
{
	instance_destroy();
}
if (i_ex(body_obj))
	body_obj.image_alpha = image_alpha;
