if (state == 3)
{
	if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 3))
	{
		global.monsterstatus[myself] = 1;
		if (global.monstercomment[myself] == " ")
			global.monstercomment[myself] = "(Weak)";
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
			hspeed = 12;
			turnt -= 8;
			vspeed = -4;
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
		draw_sprite_ext(spr_ponman_idle, 0, x + shakex, y, 2, 2, 0, image_blend, 1);
		if (sleeping == 0)
			draw_sprite_ext(spr_ponman_eye, 0, x + 28 + eyex, y + 32 + eyey, 2, 2, 0, c_white, 1);
		if (sleeping == 1)
		{
			scr_mercyadd(myself, -100);
			sprite_index = spr_ponman_idle;
			image_index = 0;
			sleeping = 0;
		}
	}
}
if (state == 0)
{
	thissprite = spr_ponman_idle;
	this_index = image_index;
	if (sleeping == 1)
	{
		thissprite = spr_ponman_appear;
		this_index = sleep_index;
		if (sleep_index > 0.5)
			sleep_index -= 0.25;
	}
	draw_sprite_ext(thissprite, this_index, x, y, 2, 2, 0, image_blend, 1);
	if (sleeping == 0)
		draw_sprite_ext(spr_ponman_eye, 0, x + 28 + eyex, y + 32 + eyey, 2, 2, 0, c_white, 1);
	if (flash == 1)
	{
		fsiner += 1;
		d3d_set_fog(true, c_white, 0, 1);
		draw_sprite_ext(thissprite, this_index, x, y, 2, 2, 0, image_blend, (-cos(fsiner / 5) * 0.4) + 0.6);
		d3d_set_fog(false, c_black, 0, 0);
	}
}
if (becomeflash == 0)
	flash = 0;
becomeflash = 0;
