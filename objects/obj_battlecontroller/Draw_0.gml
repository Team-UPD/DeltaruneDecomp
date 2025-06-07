xx = __view_get(e__VW.XView, 0);
yy = __view_get(e__VW.YView, 0);
tpoff = (tp - tpy) + yy;
bpoff = -bp + bpy + yy;
var spell_offset = 500;
if (global.lang == "ja")
	spell_offset = 496;
if (intro == 1)
{
	if (bp < (bpy - 1))
	{
		if ((bpy - bp) < 40)
			bp += round((bpy - bp) / 2.5);
		else
			bp += 30;
	}
	else
	{
		bp = bpy;
	}
	if (bp == bpy)
		intro = 0;
}
if (intro == 2)
{
	if (bp > 0)
	{
		if (round((bpy - bp) / 5) > 15)
			bp -= round((bpy - bp) / 2.5);
		else
			bp -= 30;
	}
	else
	{
		bp = 0;
	}
}
draw_set_color(c_black);
draw_rectangle(xx - 10, 481 + yy, xx + 700, (480 - bp) + yy, false);
draw_set_color(bcolor);
draw_rectangle(xx - 10, (480 - bp - 2) + yy, xx + 700, (480 - bp) + yy, false);
draw_set_color(bcolor);
draw_rectangle(xx - 10, (480 - bp) + 34 + yy, xx + 700, (480 - bp) + 36 + yy, false);
scr_charbox();
if (global.bmenuno == 1 || global.bmenuno == 3 || global.bmenuno == 11 || global.bmenuno == 12)
{
	if (global.myfight == 0)
	{
		draw_sprite(spr_heart, 0, xx + 55, yy + 385 + (global.bmenucoord[global.bmenuno][global.charturn] * 30));
		scr_84_set_draw_font("mainbig");
		for (i = 0; i < 3; i += 1)
		{
			with (global.monsterinstance[global.bmenucoord[global.bmenuno][global.charturn]])
			{
				if (flash == 0)
					fsiner = 0;
				flash = 1;
				becomeflash = 1;
			}
			if (global.monster[i] == 1)
			{
				draw_set_color(c_white);
				mercydraw = 0;
				tireddraw = 0;
				mnamecolor1 = 16777215;
				mnamecolor2 = 16777215;
				aqcolor = merge_color(c_aqua, c_blue, 0.3);
				if (global.monsterstatus[i] == 1)
					tireddraw = 1;
				if (global.mercymod[i] >= global.mercymax[i])
					mercydraw = 1;
				namewidth = string_width(string_hash_to_newline(global.monstername[i]));
				if (tireddraw == 1)
				{
					if (global.encounterno != 31)
					{
						draw_set_color(aqcolor);
						mnamecolor1 = aqcolor;
						mnamecolor2 = aqcolor;
					}
					draw_sprite(spr_tiredmark, 0, xx + 80 + namewidth + 40, yy + 385 + (i * 30));
				}
				if (mercydraw == 1)
				{
					draw_set_color(c_yellow);
					mnamecolor1 = 65535;
					if (tireddraw == 0)
						mnamecolor2 = 65535;
					draw_sprite(spr_sparestar, 0, xx + 80 + namewidth + 20, yy + 385 + (i * 30));
				}
				draw_text_colour(xx + 80, yy + 375 + (i * 30), string_hash_to_newline(global.monstername[i]), mnamecolor1, mnamecolor2, mnamecolor2, mnamecolor1, 1);
				draw_set_color(c_gray);
				draw_text(xx + 80 + namewidth + 60, yy + 375 + (i * 30), string_hash_to_newline(global.monstercomment[i]));
				draw_set_color(c_maroon);
				draw_rectangle(xx + 510, yy + 380 + (i * 30), xx + 590, yy + 380 + (i * 30) + 15, false);
				draw_set_color(c_lime);
				draw_rectangle(xx + 510, yy + 380 + (i * 30), xx + 510 + ((global.monsterhp[i] / global.monstermaxhp[i]) * 80), yy + 380 + (i * 30) + 15, false);
				mercyamt = global.mercymod[i];
				if (mercyamt >= 100)
					mercyamt = 100;
			}
		}
	}
}
if (global.bmenuno == 2 && global.myfight == 0)
{
	thischar = global.char[global.charturn];
	spellcoord = global.bmenucoord[2][global.charturn];
	page = 0;
	if (spellcoord > 5)
	{
		page = 1;
		spellcoord -= 6;
	}
	icx = 10;
	icy = 385;
	if (spellcoord == 1 || spellcoord == 3 || spellcoord == 5)
		icx = 230;
	if (spellcoord > 1 && spellcoord < 4)
		icy = 415;
	if (spellcoord > 3)
		icy = 445;
	draw_sprite(spr_heart, 0, xx + icx, yy + icy);
	scr_84_set_draw_font("mainbig");
	for (i = 0; i < 3; i += 1)
	{
		draw_set_color(c_white);
		if (global.tension < global.spellcost[thischar][(page * 6) + (i * 2)])
		{
			draw_set_color(c_gray);
		}
		else if (global.spell[thischar][(page * 6) + (i * 2)] == 3)
		{
			pacify_glow = 0;
			for (sglowi = 0; sglowi < 3; sglowi += 1)
			{
				if (global.monster[sglowi] == 1 && global.monsterstatus[sglowi] == 1)
				{
					if (global.encounterno != 31)
						pacify_glow = 1;
				}
			}
			if (pacify_glow == 1)
				draw_set_color(merge_color(c_aqua, c_blue, 0.3));
		}
		draw_text(xx + 30, yy + 375 + (i * 30), string_hash_to_newline(global.spellnameb[thischar][(page * 6) + (i * 2)]));
		draw_set_color(c_white);
		if (global.tension < global.spellcost[thischar][(page * 6) + (i * 2) + 1])
			draw_set_color(c_gray);
		draw_text(xx + 260, yy + 375 + (i * 30), string_hash_to_newline(global.spellnameb[thischar][(page * 6) + (i * 2) + 1]));
	}
	draw_set_color(c_gray);
	draw_text(xx + spell_offset, yy + 375, string_hash_to_newline(global.spelldescb[thischar][(page * 6) + spellcoord]));
	thiscost = round((global.spellcost[thischar][(page * 6) + spellcoord] / global.maxtension) * 100);
	draw_set_color(c_orange);
	draw_text(xx + spell_offset, yy + 440, string_hash_to_newline(string(thiscost) + scr_84_get_lang_string("obj_battlecontroller_slash_Draw_0_gml_171_0")));
}
if (global.bmenuno == 4 && global.myfight == 0)
{
	itemcoord = global.bmenucoord[4][global.charturn];
	page = 0;
	if (itemcoord > 5)
	{
		page = 1;
		itemcoord -= 6;
	}
	icx = 10;
	icy = 385;
	if (itemcoord == 1 || itemcoord == 3 || itemcoord == 5)
		icx = 230;
	if (global.lang == "ja")
	{
		if (itemcoord == 1 || itemcoord == 3 || itemcoord == 5)
			icx = 240;
	}
	if (itemcoord > 1 && itemcoord < 4)
		icy = 415;
	if (itemcoord > 3)
		icy = 445;
	draw_sprite(spr_heart, 0, xx + icx, yy + icy);
	scr_84_set_draw_font("mainbig");
	for (i = 0; i < 3; i += 1)
	{
		if (global.lang == "ja")
		{
			draw_set_color(c_white);
			jp_string_lengthtest[0] = string_width(string_hash_to_newline(tempitemnameb[(page * 6) + (i * 2)][global.charturn]));
			jp_string_lengthtest[1] = string_width(string_hash_to_newline(tempitemnameb[(page * 6) + (i * 2) + 1][global.charturn]));
			if (jp_string_lengthtest[0] >= 200)
			{
				jp_string_xscale = 200 / jp_string_lengthtest[0];
				draw_text_transformed(xx + 30, yy + 375 + (i * 30), string_hash_to_newline(tempitemnameb[(page * 6) + (i * 2)][global.charturn]), jp_string_xscale, 1, 0);
			}
			else
			{
				draw_text(xx + 30, yy + 375 + (i * 30), string_hash_to_newline(tempitemnameb[(page * 6) + (i * 2)][global.charturn]));
			}
			draw_set_color(c_white);
			if (jp_string_lengthtest[1] >= 200)
			{
				jp_string_xscale = 200 / jp_string_lengthtest[1];
				draw_text_transformed(xx + 260, yy + 375 + (i * 30), string_hash_to_newline(tempitemnameb[(page * 6) + (i * 2) + 1][global.charturn]), jp_string_xscale, 1, 0);
			}
			else
			{
				draw_text(xx + 260, yy + 375 + (i * 30), string_hash_to_newline(tempitemnameb[(page * 6) + (i * 2) + 1][global.charturn]));
			}
		}
		else
		{
			draw_set_color(c_white);
			draw_text(xx + 30, yy + 375 + (i * 30), string_hash_to_newline(tempitemnameb[(page * 6) + (i * 2)][global.charturn]));
			draw_text(xx + 260, yy + 375 + (i * 30), string_hash_to_newline(tempitemnameb[(page * 6) + (i * 2) + 1][global.charturn]));
		}
	}
	if (page == 0 && global.item[6] != 0)
		draw_sprite(spr_morearrow, 0, xx + 470, yy + 445 + (sin(s_siner / 10) * 2));
	if (page == 1)
		draw_sprite_ext(spr_morearrow, 0, xx + 470, (yy + 395) - (sin(s_siner / 10) * 2), 1, -1, 0, c_white, 1);
	draw_set_color(c_gray);
	draw_text(xx + spell_offset, yy + 375, string_hash_to_newline(tempitemdescb[(page * 6) + itemcoord][global.charturn]));
}
if (global.bmenuno == 9 && global.myfight == 0)
{
	actcoord = global.bmenucoord[9][global.charturn];
	page = 0;
	icx = 10;
	icy = 385;
	if (actcoord == 1 || actcoord == 3 || actcoord == 5)
		icx = 240;
	if (actcoord > 1 && actcoord < 4)
		icy = 415;
	if (actcoord > 3)
		icy = 445;
	draw_sprite(spr_heart, 0, xx + icx, yy + icy);
	scr_84_set_draw_font("mainbig");
	for (i = 0; i < 6; i += 1)
	{
		cant = 0;
		chartime = global.actactor[global.bmenucoord[11][global.charturn]][i];
		charoffset = 0;
		xoffset = 0;
		if (i == 1 || i == 3 || i == 5)
			xoffset = 230;
		yoffset = 0;
		if (i == 2 || i == 3)
			yoffset = 30;
		if (i == 4 || i == 5)
			yoffset = 60;
		drawsus = 0;
		drawral = 0;
		susblend = 16777215;
		ralblend = 16777215;
		if (chartime == 2 || chartime == 4)
		{
			drawsus = 1;
			if (havechar[1] == 0 || global.hp[2] <= 0)
			{
				susblend = 8421504;
				cant = 1;
			}
			charoffset = 36;
		}
		if (chartime == 3 || chartime == 4)
		{
			drawral = 1;
			if (havechar[2] == 0 || global.hp[3] <= 0)
			{
				ralblend = 8421504;
				cant = 1;
			}
			charoffset = 36;
		}
		if (global.tension < global.actcost[global.bmenucoord[11][global.charturn]][i])
			cant = 1;
		if (chartime == 4)
			charoffset = round(charoffset * 1.8);
		draw_set_color(c_white);
		if (cant == 1)
			draw_set_color(c_gray);
		if (chartime == 2)
			draw_sprite_ext(spr_headsusie, 0, xx + 30 + xoffset, yy + 375 + yoffset, 1, 1, 0, susblend, 1);
		if (chartime == 3)
			draw_sprite_ext(spr_headralsei, 0, xx + 30 + xoffset, yy + 375 + yoffset, 1, 1, 0, susblend, 1);
		if (chartime == 4)
		{
			draw_sprite_ext(spr_headsusie, 0, xx + 30 + xoffset, yy + 375 + yoffset, 1, 1, 0, susblend, 1);
			draw_sprite_ext(spr_headralsei, 0, xx + 60 + xoffset, yy + 375 + yoffset, 1, 1, 0, susblend, 1);
		}
		if (global.lang == "ja")
		{
			jp_string_lengthtest_act = string_width(string_hash_to_newline(global.actname[global.bmenucoord[11][global.charturn]][i]));
			if ((jp_string_lengthtest_act + 30 + charoffset) >= 235 && xoffset == 0)
			{
				jp_string_xscale = (206 - charoffset) / jp_string_lengthtest_act;
				draw_text_transformed(xx + 30 + charoffset + xoffset, yy + 375 + yoffset, string_hash_to_newline(global.actname[global.bmenucoord[11][global.charturn]][i]), jp_string_xscale, 1, 0);
			}
			else
			{
				draw_text(xx + 30 + charoffset + xoffset, yy + 375 + yoffset, string_hash_to_newline(global.actname[global.bmenucoord[11][global.charturn]][i]));
			}
		}
		else
		{
			draw_text(xx + 30 + charoffset + xoffset, yy + 375 + yoffset, string_hash_to_newline(global.actname[global.bmenucoord[11][global.charturn]][i]));
		}
	}
	draw_set_color(c_gray);
	draw_text(xx + 500, yy + 375, string_hash_to_newline(global.actdesc[global.bmenucoord[11][global.charturn]][actcoord]));
	if (global.tensionselect > 0)
	{
		thiscost = round((global.actcost[global.bmenucoord[11][global.charturn]][actcoord] / global.maxtension) * 100);
		draw_set_color(c_orange);
		draw_text(xx + 500, yy + 440, string_hash_to_newline(string(thiscost) + scr_84_get_lang_string("obj_battlecontroller_slash_Draw_0_gml_280_0")));
	}
	with (global.monsterinstance[global.bmenucoord[11][global.charturn]])
	{
		if (flash == 0)
			fsiner = 0;
		flash = 1;
		becomeflash = 1;
	}
}
if (global.bmenuno == 7 || global.bmenuno == 8)
{
	if (global.myfight == 0)
	{
		draw_sprite(spr_heart, 0, xx + 55, yy + 385 + (global.bmenucoord[global.bmenuno][global.charturn] * 30));
		scr_84_set_draw_font("mainbig");
		for (i = 0; i < 3; i += 1)
		{
			if (global.char[i] != 0)
			{
				with (global.charinstance[global.bmenucoord[global.bmenuno][global.charturn]])
				{
					if (flash == 0)
						fsiner = 0;
					flash = 1;
					becomeflash = 1;
				}
				draw_set_color(c_white);
				draw_text(xx + 80, yy + 375 + (i * 30), string_hash_to_newline(global.charname[global.char[i]]));
				draw_set_color(c_maroon);
				draw_rectangle(xx + 400, yy + 380 + (i * 30), xx + 500, yy + 380 + (i * 30) + 15, false);
				draw_set_color(c_lime);
				draw_rectangle(xx + 400, yy + 380 + (i * 30), xx + 400 + ((global.hp[global.char[i]] / global.maxhp[global.char[i]]) * 100), yy + 380 + (i * 30) + 15, false);
			}
		}
	}
}
