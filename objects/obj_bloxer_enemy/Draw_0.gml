threebuffer -= 1;
ss = sin(siner / 4);
ssb = cos(siner / 4);
if (swaptime == 5)
{
	returncount = 0;
	for (i = 0; i < 3; i += 1)
	{
		movex[i] += xspeed;
		if (movex[i] <= 0)
		{
			movex[i] = 0;
			returncount += 1;
		}
	}
	if (returncount >= 3)
	{
		swaptime = 6;
		part[1] = selectpart[0];
		part[2] = selectpart[1];
		part[3] = selectpart[2];
		if (part[1] == 1 && part[2] == 2 && part[3] == 3)
		{
			part[1] = 6;
			scr_mercyadd(myself, 100);
		}
	}
	else
	{
		xspeed -= 2;
		draw_sprite_ext(spr_blockguy_part, part[3], x + movex[2], partyb[2], 2, 2, 0, c_white, 1);
		draw_sprite_ext(spr_blockguy_part, part[2], x + movex[1], partyb[1], 2, 2, 0, c_white, 1);
		draw_sprite_ext(spr_blockguy_part, part[1], x + movex[0], partyb[0], 2, 2, 0, c_white, 1);
	}
}
if (swaptime == 2 || swaptime == 3)
{
	if (sinmomentum < 0.8)
		sinmomentum += 0.05;
	floatsin += sinmomentum;
	if (threebuffer <= 0)
		selecty = y + 30 + (selecttotal * 26);
	if (select[0] < 0)
		partyb[0] = y + 53 + (sin((floatsin / 8) + custom[0]) * 25);
	if (select[1] < 0)
		partyb[1] = y + 53 + (sin((floatsin / 8) + custom[1]) * 25);
	if (select[2] < 0)
		partyb[2] = y + 53 + (sin((floatsin / 8) + custom[2]) * 25);
	closest = -1;
	closefactor = 99;
	for (i = 0; i < 3; i += 1)
	{
		scolor[i] = 8421504;
		if (select[i] < 0)
		{
			cfactor = abs(partyb[i] - selecty);
			if (cfactor < closefactor && cfactor < 24)
			{
				closefactor = cfactor;
				closest = i;
			}
		}
		else
		{
			if (movex[i] < 60)
				movex[i] += 6;
			scolor[i] = 65535;
			idealy = y + 28 + (select[i] * 25);
			if (abs(partyb[i] - idealy) < 6)
				partyb[i] = idealy;
			if (partyb[i] < idealy)
				partyb[i] += 6;
			if (partyb[i] > idealy)
				partyb[i] -= 6;
		}
	}
	arrowcolor = c_white;
	for (i = 0; i < 3; i += 1)
	{
		if (closest == i)
		{
			scolor[i] = 16777215;
			arrowcolor = c_yellow;
		}
	}
	draw_sprite_ext(spr_blockguy_part, part[3], x + movex[2], partyb[2], 2, 2, 0, scolor[2], 1);
	draw_sprite_ext(spr_blockguy_part, part[2], x + movex[1], partyb[1], 2, 2, 0, scolor[1], 1);
	draw_sprite_ext(spr_blockguy_part, part[1], x + movex[0], partyb[0], 2, 2, 0, scolor[0], 1);
	arrowpush = threebuffer * 4;
	if (arrowpush < 0)
		arrowpush = 0;
	ypush = 0;
	if (threebuffer == 1)
		ypush = 15;
	draw_set_color(arrowcolor);
	if (finishtimer < 8 && selecttotal < (maxpart - 2))
		draw_arrow((x - 50) + (sin(floatsin / 6) * 2) + arrowpush, selecty + 10 + ypush, (x - 10) + (sin(floatsin / 6) * 2) + arrowpush, selecty + 10 + ypush, 16);
	if (button3_p() && threebuffer < 0 && selecttotal < (maxpart - 2))
	{
		if (closest >= 0)
		{
			selectpart[selecttotal] = part[1 + closest];
			select[closest] = selecttotal;
			selecttotal += 1;
			threebuffer = 6;
		}
		if (selecttotal >= (maxpart - 2))
			swaptime = 3;
	}
	if (swaptime == 3)
		finishtimer += 1;
	if (finishtimer >= 13)
	{
		swaptime = 5;
		xspeed = 4;
	}
}
if (swaptime == 0 || swaptime == 1 || swaptime == 6)
{
	hurk = 0;
	if (state == 3)
	{
		hurk = 1;
		if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 3))
		{
			global.monsterstatus[myself] = 1;
			if (global.monstercomment[myself] == " ")
				global.monstercomment[myself] = scr_84_get_lang_string("obj_bloxer_enemy_slash_Draw_0_gml_141_0");
		}
		hurttimer -= 1;
		if (hurttimer < 0)
		{
			state = 0;
		}
		else
		{
			if (global.monster[myself] == 0)
				hspeed = 10;
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
		}
	}
	if (swaptime == 0)
		siner += 1;
	if (swaptime == 1)
		swapx += 2;
	if (swaptime == 6)
	{
		if (swapx > 0)
			swapx -= 2;
		if (swapx <= 0)
			swaptime = 0;
	}
	if (swapx >= 16 && swaptime == 1)
		swaptime = 2;
	if (swaptime == 0)
	{
		if (part[1] == 1 && part[2] == 2 && part[3] == 3)
			part[1] = 6;
	}
	if (swaptime == 1 && part[1] == 6)
		part[1] = 1;
	thissprite = spr_blockguy_part;
	if (hurk == 1)
		thissprite = spr_blockguy_part_hurt;
	draw_sprite_ext(thissprite, 5, (x - 24) + (ss * 2) + (swapx * 1.5) + shakex, y + 54 + (ssb * 2), 2, 2, 0, c_white, 1);
	draw_sprite_ext(thissprite, part[4], (x - ss) + shakex, (y + 100) - swapx, 2, 2, 0, c_white, 1);
	if (swaptime == 1 || swaptime == 6)
		draw_sprite_ext(thissprite, part[0], x + (ss * 2) + shakex, y + swapx, 2, 2, 0, c_white, 1);
	draw_sprite_ext(thissprite, part[3], (x - 4) + (ss * 2) + shakex, y + 78, 2, 2, 0, c_white, 1);
	draw_sprite_ext(thissprite, part[2], ((x + 4) - (ss * 2)) + shakex, y + 54, 2, 2, 0, c_white, 1);
	draw_sprite_ext(thissprite, part[1], x + (ss * 2) + shakex, y + 28, 2, 2, 0, c_white, 1);
	if (swaptime == 0)
		draw_sprite_ext(thissprite, part[0], x + (ss * 2) + shakex, y + swapx, 2, 2, 0, c_white, 1);
	if (state == 0 && flash == 1)
	{
		fsiner += 1;
		d3d_set_fog(true, c_white, 0, 1);
		draw_sprite_ext(thissprite, 5, (x - 24) + (ss * 2) + (swapx * 1.5) + shakex, y + 54 + (ssb * 2), 2, 2, 0, image_blend, (-cos(fsiner / 5) * 0.4) + 0.6);
		draw_sprite_ext(thissprite, part[4], (x - ss) + shakex, (y + 100) - swapx, 2, 2, 0, image_blend, (-cos(fsiner / 5) * 0.4) + 0.6);
		if (swaptime == 1 || swaptime == 6)
			draw_sprite_ext(thissprite, part[0], x + (ss * 2) + shakex, y + swapx, 2, 2, 0, image_blend, (-cos(fsiner / 5) * 0.4) + 0.6);
		draw_sprite_ext(thissprite, part[3], (x - 4) + (ss * 2) + shakex, y + 78, 2, 2, 0, image_blend, (-cos(fsiner / 5) * 0.4) + 0.6);
		draw_sprite_ext(thissprite, part[2], ((x + 4) - (ss * 2)) + shakex, y + 54, 2, 2, 0, image_blend, (-cos(fsiner / 5) * 0.4) + 0.6);
		draw_sprite_ext(thissprite, part[1], x + (ss * 2) + shakex, y + 28, 2, 2, 0, image_blend, (-cos(fsiner / 5) * 0.4) + 0.6);
		d3d_set_fog(false, c_black, 0, 0);
	}
}
if (swaptime == 10)
{
	introtimer = 0;
	idealy[0] = 0;
	idealy[1] = 28;
	idealy[2] = 54;
	idealy[3] = 78;
	idealy[4] = 100;
	for (i = 0; i < 5; i += 1)
	{
		cury[i] = 100;
		yfactor[i] = (100 - idealy[i]) / 16;
	}
	cury[0] = 78;
	yfactor[0] = 4.875;
	swaptime = 11;
}
if (swaptime == 11)
{
	draw_sprite_ext(spr_blockguy_part, 5, (x - (introtimer * 2)) + 6, y + cury[2], 2, 2, 0, c_white, 1);
	for (i = 4; i >= 0; i -= 1)
	{
		cury[i] -= yfactor[i];
		draw_sprite_ext(spr_blockguy_part, part[i], x, y + cury[i], 2, 2, 0, c_white, 1);
	}
	draw_sprite_ext(spr_blockguy_part, part[headpart], x, y + cury[headpart], 2, 2, 0, c_white, 1);
	draw_sprite_ext(spr_blockguy_part, part[0], x, y + cury[0], 2, 2, 0, c_white, 1);
	introtimer += 1;
	if (introtimer >= 16)
		swaptime = 0;
}
if (becomeflash == 0)
	flash = 0;
becomeflash = 0;
