if (bodymode == 0)
{
	if (state == 3)
	{
		scr_enemyhurt_tired_after_damage(0.5);
		hurttimer -= 1;
		if (hurttimer < 0 && global.monster[myself] > 0)
		{
			state = 0;
		}
		else
		{
			if (global.monster[myself] == 0)
				hurtsprite = idlesprite;
			hurtshake += 1;
			if (hurtshake > 1)
			{
				if (shakex > 0)
					shakex -= 1;
				if (shakex < 0)
					shakex += 1;
				shakex = -shakex;
				hurtshake = 0;
			}
			draw_sprite_ext(hurtsprite, 0, x + shakex + hurtspriteoffx, y + hurtspriteoffy, 2, 2, 0, image_blend, 1);
		}
	}
	if (global.flag[20] == 0)
	{
		idlesprite = spr_spamton_idle;
		shakeamt = 0;
	}
	if (global.flag[20] == 1)
	{
		idlesprite = spr_spamton_dark;
		shakeamt = 0;
	}
	if (global.flag[20] == 2)
	{
		idlesprite = spr_spamton_laugh_left;
		shakeamt = 2;
	}
	if (global.flag[20] == 3)
	{
		idlesprite = spr_cutscene_14_spamton_grab;
		shakeamt = 2;
	}
	if (global.flag[20] == 4)
	{
		idlesprite = spr_cutscene_14_spamton_arms_up;
		shakeamt = 0;
	}
	if (global.flag[20] == 5)
	{
		idlesprite = spr_cutscene_14_spamton_laugh_right;
		shakeamt = 2;
	}
	if (global.flag[20] == 6)
	{
		idlesprite = spr_cutscene_14_spamton_laugh_large;
		shakeamt = 2;
	}
	if (state == 0)
	{
		if (shakeamt > 0)
		{
			x = remx + random_range(-shakeamt, shakeamt);
			y = remy + random_range(-shakeamt, shakeamt);
		}
		else
		{
			x = remx;
			y = remy;
		}
	}
	scr_enemy_drawidle_generic(0.16666666666666666);
	if (becomeflash == 0)
		flash = 0;
	becomeflash = 0;
}
if (bodymode == 1)
{
	if (bodycon == 0)
	{
		bodytimer = 0;
		bodycon = 1;
	}
	if (bodycon == 1)
	{
		if (bodytimer <= 16)
			bodytimer++;
		if (bodytimer >= 16 && bodyadvance == 1)
		{
			bodyadvance = 0;
			bodysiner = 0;
			bodytimer = 0;
			bodycon = 2;
		}
		else
		{
			draw_sprite_ext(spr_spamton_head_grow, bodytimer / 3, x, y, image_xscale, image_xscale, image_angle, c_white, 1);
		}
	}
	if (bodycon == 2)
	{
		bodysiner++;
		headpiece.x = x - 12;
		headpiece.y = (y + (sin(bodysiner) * 6)) - 94;
		if (bodyadvance == 1)
		{
			bodyadvance = 0;
			bodytimer = 16;
			bodycon = 3;
			with (headpiece)
				x = -999;
		}
		else
		{
			draw_sprite_ext(spr_spamton_laugh_bottom, 0, x - 12, y - 94, image_xscale, image_xscale, image_angle, c_white, 1);
			draw_sprite_ext(spr_spamton_laugh_middle, 0, x - 12, y - 104 - (sin(bodysiner) * 4), image_xscale, image_xscale, image_angle, c_white, 1);
		}
	}
	if (bodycon == 3)
	{
		bodytimer--;
		if (bodytimer <= 0)
		{
			bodyadvance = 0;
			bodysiner = 0;
			bodytimer = 0;
			bodycon = 0;
			bodymode = 0;
		}
		draw_sprite_ext(spr_spamton_head_grow, bodytimer / 3, x, y, image_xscale, image_xscale, image_angle, c_white, 1);
	}
}
if (scr_debug())
{
	if (keyboard_check_pressed(ord("B")))
	{
		if (bodymode == 0)
		{
			bodymode = 1;
		}
		else
		{
			bodymode = 0;
			headpiece.x = -999;
		}
	}
	if (keyboard_check_pressed(ord("N")))
		bodyadvance = 1;
	if (keyboard_check_pressed(ord("1")))
		bulletoverride = 0;
	if (keyboard_check_pressed(ord("2")))
		bulletoverride = 1;
	if (keyboard_check_pressed(ord("3")))
		bulletoverride = 2;
	if (keyboard_check_pressed(ord("0")))
		bulletoverride = -1;
}
