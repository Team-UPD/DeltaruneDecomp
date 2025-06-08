if (flip == false)
	draw_self();
if (flip == true)
{
	con = 0;
	global.interact = 1;
	if (flipcon == 0)
	{
		draw_set_alpha(0.2);
		draw_rectangle(x - 38, y + 2, x + 38, (y + 120) - 2, 0);
		draw_set_alpha(1);
		if (flipped == 0)
		{
			draw_sprite_ext(spriteindex2, image_index, x + 2, y, image_xscale, image_yscale, image_angle, c_gray, image_alpha);
			draw_sprite_ext(spriteindex2, image_index, x + 1, y, image_xscale, image_yscale, image_angle, c_gray, image_alpha);
		}
		if (flipped == 1)
		{
			draw_sprite_ext(spriteindex1, image_index, x + 2, y, image_xscale, image_yscale, image_angle, c_gray, image_alpha);
			draw_sprite_ext(spriteindex1, image_index, x + 1, y, image_xscale, image_yscale, image_angle, c_gray, image_alpha);
		}
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
		if (image_xscale > 0.1)
		{
			image_xscale *= flipfactor;
			image_xscale = clamp(image_xscale, 0, 2);
		}
		else
		{
			flipcon = 1;
			image_xscale = 0.1;
			fliptimer = 0;
		}
	}
	if (flipcon == 1)
	{
		draw_sprite_ext(spriteindex1, 0, x - 2, y, image_xscale, image_yscale, 0, c_white, 1);
		draw_sprite_ext(spriteindex2, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
		fliptimer++;
		if (fliptimer == 2)
		{
			if (flipped == 0)
			{
				sprite_index = spriteindex2;
				flipped = true;
				flipcon = 2;
			}
			else
			{
				sprite_index = spriteindex1;
				flipped = false;
				flipcon = 2;
			}
		}
	}
	if (flipcon == 2)
	{
		draw_set_alpha(0.2);
		draw_rectangle(x - 38, y + 2, x + 38, (y + 120) - 2, 0);
		draw_set_alpha(1);
		draw_self();
		if (image_xscale < 1.99)
		{
			image_xscale *= (1 / flipfactor);
			image_xscale = clamp(image_xscale, 0, 2);
		}
		else
		{
			image_xscale = 2;
			flip = false;
			global.interact = 0;
			flipcon = 0;
		}
	}
}
if (decorative == true && flip == false)
{
	shadow = instance_create(x, y, obj_marker);
	shadow.image_xscale = 2;
	shadow.image_yscale = 2;
	shadow.sprite_index = sprite_index;
	shadow.image_index = image_index;
	shadow.depth = depth;
	shadow.image_speed = image_speed;
	instance_destroy();
}
if (isswitch && dontshine == 0)
{
	if (!shine_init)
	{
		shine_init = true;
		shine = scr_dark_marker(x - 8, y + 84, spr_shine_white);
		shine.depth = depth - 10;
		shine.image_speed = 0.1;
	}
}
