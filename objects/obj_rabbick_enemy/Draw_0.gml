animsiner += 1;
image_xscale = 2 - (blowamt / 100);
if (blown == 1)
	image_xscale = 2;
xoff = 0;
if (image_xscale < 2)
	xoff = (originalwidth - sprite_width) / 2;
blowanimtimer -= 1;
if (blowanimtimer > 6 && blown == 0)
{
	if (onoff == 2)
		onoff = 0;
	if (onoff == 1.5)
		onoff = 2;
	if (onoff == 0.5)
		onoff = 1;
	if (onoff == 0)
	{
		ashake = -shakeamt;
		onoff = 0.5;
	}
	if (onoff == 1)
	{
		ashake = shakeamt;
		if (shakeamt > 0)
			shakeamt -= 1;
		onoff = 1.5;
	}
	if (image_xscale > 1.5)
		draw_sprite_ext(spr_rabbick_enemy_hurt, 0, x + xoff + ashake, y, image_xscale, image_yscale, 0, c_white, 1);
	else
		draw_sprite_ext(spr_rabbick_enemy_hurt, 1, (x + xoff + ashake) - 8, y, image_xscale + 0.5, image_yscale, 0, c_white, 1);
}
else
{
	if (state == 3)
	{
		if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 3))
		{
			global.monsterstatus[myself] = 1;
			if (global.monstercomment[myself] == " ")
				global.monstercomment[myself] = scr_84_get_lang_string("obj_rabbick_enemy_slash_Draw_0_gml_45_0");
		}
		hurttimer -= 1;
		if (hurttimer < 0)
		{
			state = 0;
		}
		else
		{
			if (global.monster[myself] == 0)
				scr_defeatrun();
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
			thissprite = hurtsprite;
			if (image_xscale > 1.5)
				draw_sprite_ext(thissprite, 0, x + xoff + shakex, y, image_xscale, image_yscale, 0, c_white, 1);
			else
				draw_sprite_ext(thissprite, 1, (x + xoff + shakex) - 8, y, image_xscale + 0.5, image_yscale, 0, c_white, 1);
		}
	}
	if (state == 0)
	{
		thissprite = idlesprite;
		if (global.mercymod[myself] >= global.mercymax[myself] || blown == 1)
			thissprite = sparedsprite;
		draw_sprite_ext(thissprite, animsiner / 5, x + xoff, y, image_xscale, image_yscale, 0, image_blend, 1);
		if (flash == 1)
		{
			fsiner += 1;
			d3d_set_fog(true, c_white, 0, 1);
			draw_sprite_ext(thissprite, animsiner / 5, x + xoff, y, image_xscale, image_yscale, 0, c_white, (-cos(fsiner / 5) * 0.4) + 0.6);
			d3d_set_fog(false, c_black, 0, 0);
		}
	}
	if (becomeflash == 0)
		flash = 0;
	becomeflash = 0;
}
