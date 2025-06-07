if (state == 3)
{
	if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 3))
	{
		global.monsterstatus[myself] = 1;
		if (global.monstercomment[myself] == " ")
			global.monstercomment[myself] = scr_84_get_lang_string("obj_headhathy_slash_Draw_0_gml_6_0");
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
		draw_sprite_ext(hurtsprite, 0, x + shakex, y, 2, 2, 0, image_blend, 1);
	}
}
if (state == 0)
{
	siner += 1;
	thissprite = idlesprite;
	if (global.mercymod[myself] >= global.mercymax[myself])
		thissprite = sparedsprite;
	draw_sprite_ext(thissprite, siner / 5, x, y, 2, 2, 0, image_blend, 1);
	if (flash == 1)
	{
		fsiner += 1;
		d3d_set_fog(true, c_white, 0, 1);
		draw_sprite_ext(thissprite, siner / 5, x, y, 2, 2, 0, image_blend, (-cos(fsiner / 5) * 0.4) + 0.6);
		d3d_set_fog(false, c_black, 0, 0);
	}
}
if (becomeflash == 0)
	flash = 0;
becomeflash = 0;
