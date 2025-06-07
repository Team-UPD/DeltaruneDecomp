if (state == 3)
{
	shakesine = 0;
	siner = 0;
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
		if ((global.monsterhp[myself] / global.monstermaxhp[myself]) <= 0.65)
			hurtlevel = 1;
		if ((global.monsterhp[myself] / global.monstermaxhp[myself]) <= 0.2)
			hurtlevel = 2;
		draw_sprite_ext(hurtsprite, 0, x + (shakex * 2), y, 2, 2, 0, image_blend, 1);
	}
}
if (state == 0)
{
	shakesine += 1;
	siner += 1;
	shx = random((sin(shakesine / 6) * hurtlevel) / 1.5);
	thissprite = idlesprite;
	if (global.mercymod[myself] >= global.mercymax[myself])
		thissprite = sparedsprite;
	draw_sprite_ext(thissprite, hurtlevel, x + shx, y, 2, 2, 0, image_blend, 1);
	if (flash == 1)
	{
		fsiner += 1;
		d3d_set_fog(true, c_white, 0, 1);
		draw_sprite_ext(thissprite, hurtlevel, x, y, 2, 2, 0, image_blend, (-cos(fsiner / 5) * 0.4) + 0.6);
		d3d_set_fog(false, c_black, 0, 0);
	}
}
if (becomeflash == 0)
	flash = 0;
becomeflash = 0;
