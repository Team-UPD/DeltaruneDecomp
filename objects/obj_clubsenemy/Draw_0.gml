if (state == 3)
{
	if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 2))
	{
		global.monsterstatus[myself] = 1;
		if (global.monstercomment[myself] == " ")
			global.monstercomment[myself] = scr_84_get_lang_string("obj_clubsenemy_slash_Draw_0_gml_6_0");
	}
	hurttimer -= 1;
	if (hurttimer < 0)
	{
		state = 0;
	}
	else
	{
		if (global.monster[myself] == 0)
		{
			global.flag[522] += 1;
			scr_defeatrun();
		}
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
		draw_sprite_ext(spr_clubs_hurt, 0, x + shakex, y, 2, 2, 0, image_blend, 1);
	}
}
if (state == 0)
{
	siner += 1;
	thissprite = spr_clubs_idle;
	if (global.mercymod[myself] >= global.mercymax[myself])
		thissprite = spr_clubs_spared;
	draw_sprite_ext(thissprite, siner / 6, x, y, 2, 2, 0, image_blend, 1);
	if (flash == 1)
	{
		fsiner += 1;
		d3d_set_fog(true, c_white, 0, 1);
		draw_sprite_ext(thissprite, siner / 6, x, y, 2, 2, 0, image_blend, (-cos(fsiner / 5) * 0.4) + 0.6);
		d3d_set_fog(false, c_black, 0, 0);
	}
}
if (becomeflash == 0)
	flash = 0;
becomeflash = 0;
