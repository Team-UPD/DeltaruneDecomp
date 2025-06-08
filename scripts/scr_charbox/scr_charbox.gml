function scr_charbox()
{
	for (c = 0; c < 4; c += 1)
	{
		if (havechar[c] == 1)
		{
			if (c == 0)
				charcolor = hpcolor[0];
			if (c == 1)
				charcolor = hpcolor[1];
			if (c == 2)
				charcolor = hpcolor[2];
			if (c == 3)
				charcolor = hpcolor[3];
			gc = global.charturn;
			xchunk = 0;
			if (charpos[c] == 0 && chartotal == 3)
				xchunk = 0;
			if (charpos[c] == 1 && chartotal == 3)
				xchunk = 213;
			if (charpos[c] == 2 && chartotal == 3)
				xchunk = 426;
			if (charpos[c] == 0 && chartotal == 2)
				xchunk = 108;
			if (charpos[c] == 1 && chartotal == 2)
				xchunk = 322;
			if (charpos[c] == 0 && chartotal == 1)
				xchunk = 213;
			if (gc == charpos[c])
			{
				if (global.myfight == 0)
					scr_selectionmatrix(xx + xchunk, (480 - bp) + yy);
				if (mmy[c] > -32)
					mmy[c] -= 2;
				if (mmy[c] > -24)
					mmy[c] -= 4;
				if (mmy[c] > -16)
					mmy[c] -= 6;
				if (mmy[c] > -8)
					mmy[c] -= 8;
				if (mmy[c] < -32)
					mmy[c] = -64;
			}
			else if (mmy[c] < -14)
			{
				mmy[c] += 15;
			}
			else
			{
				mmy[c] = 0;
			}
			btc[0] = 0;
			btc[1] = 0;
			btc[2] = 0;
			btc[3] = 0;
			btc[4] = 0;
			if (gc == charpos[c])
				btc[global.bmenucoord[0][global.charturn]] = 1;
			if (global.fighting == 1)
			{
				spare_glow = 0;
				for (sglowi = 0; sglowi < 3; sglowi += 1)
				{
					if (global.monster[sglowi] == 1 && global.mercymod[sglowi] >= 100)
						spare_glow = 1;
				}
				pacify_glow = 0;
				if (c == 2 || c == 3)
				{
					for (sglowi = 0; sglowi < 3; sglowi += 1)
					{
						var tensionamount = 40;
						if (c == 3)
							tensionamount = 80;
						if (global.monster[sglowi] == 1 && global.monsterstatus[sglowi] == 1 && global.tension >= tensionamount)
							pacify_glow = 1;
						if (global.encounterno == 31)
							pacify_glow = 0;
					}
				}
				var icon_offset = 5;
				draw_sprite(scr_84_get_sprite("spr_btfight"), btc[0], xx + xchunk + 15 + icon_offset, (485 - bp) + yy);
				if (c == 0)
					draw_sprite(scr_84_get_sprite("spr_btact"), btc[1], xx + xchunk + 50 + icon_offset, (485 - bp) + yy);
				else
					draw_sprite(scr_84_get_sprite("spr_bttech"), btc[1], xx + xchunk + 50 + icon_offset, (485 - bp) + yy);
				draw_sprite(scr_84_get_sprite("spr_btitem"), btc[2], xx + xchunk + 85 + icon_offset, (485 - bp) + yy);
				draw_sprite(scr_84_get_sprite("spr_btspare"), btc[3], xx + xchunk + 120 + icon_offset, (485 - bp) + yy);
				draw_sprite(scr_84_get_sprite("spr_btdefend"), btc[4], xx + xchunk + 155 + icon_offset, (485 - bp) + yy);
				if (spare_glow == 1 && gc == charpos[c])
					draw_sprite_ext(scr_84_get_sprite("spr_btspare"), 2, xx + xchunk + 120 + icon_offset, (485 - bp) + yy, 1, 1, 0, c_white, 0.4 + (sin(global.time / 6) * 0.4));
				if (pacify_glow == 1 && gc == charpos[c])
					draw_sprite_ext(scr_84_get_sprite("spr_bttech"), 2, xx + xchunk + 50 + icon_offset, (485 - bp) + yy, 1, 1, 0, c_white, 0.4 + (sin(global.time / 6) * 0.4));
			}
			if (gc == charpos[c])
				draw_set_color(charcolor);
			else
				draw_set_color(bcolor);
			if (global.charselect == charpos[c] || global.charselect == 3)
				draw_set_color(charcolor);
			draw_rectangle(xx + xchunk, (480 - bp - 3) + yy + mmy[c], xx + xchunk + 212, ((480 - bp) + yy) - 2, false);
			draw_set_color(c_black);
			draw_rectangle(xx + xchunk + 2, (480 - bp - 1) + yy + mmy[c], xx + xchunk + 210, (480 - bp) + yy + mmy[c] + 33, false);
			b_offset = 480;
			if (global.fighting == 0)
				b_offset = 430;
			if (global.fighting == 1)
				b_offset = 336;
			if (c == 0)
			{
				if (global.chapter == 2 && instance_exists(o_boxingcontroller))
				{
					if (o_boxingcontroller.headsprite == spr_bhero_head_a)
						draw_sprite_ext(spr_headthrash, 1, xx + 41 + xchunk, bpoff + 8 + b_offset + mmy[c], 2, 2, 0, c_white, 1);
					if (o_boxingcontroller.headsprite == spr_bhero_head_b)
						draw_sprite_ext(spr_headthrash, 3, xx + 43 + xchunk, bpoff + 8 + b_offset + mmy[c], 2, 2, 0, c_white, 1);
					if (o_boxingcontroller.headsprite == spr_bhero_head_c)
						draw_sprite_ext(spr_headthrash, 2, xx + 43 + xchunk, bpoff + 8 + b_offset + mmy[c], 2, 2, 0, c_white, 1);
					if (o_boxingcontroller.headsprite == spr_bhero_head_d)
						draw_sprite_ext(spr_headthrash, 0, xx + 36 + xchunk, bpoff + 8 + b_offset + mmy[c], 1.6, 1.6, 0, c_white, 1);
					draw_sprite(scr_84_get_sprite("spr_bnamethrash"), 0, xx + 51 + xchunk, bpoff + b_offset + 3 + mmy[c]);
				}
				else
				{
					draw_sprite(spr_headkris, global.faceaction[charpos[c]], xx + 13 + xchunk, bpoff + b_offset + mmy[c]);
					draw_sprite(scr_84_get_sprite("spr_bnamekris"), 0, xx + 51 + xchunk, bpoff + b_offset + 3 + mmy[c]);
				}
			}
			if (c == 1)
			{
				draw_sprite(spr_headsusie, global.faceaction[charpos[c]], xx + 13 + xchunk, bpoff + b_offset + mmy[c]);
				draw_sprite(scr_84_get_sprite("spr_bnamesusie"), 0, xx + 51 + xchunk, bpoff + b_offset + 3 + mmy[c]);
			}
			if (c == 2)
			{
				draw_sprite(spr_headralsei, global.faceaction[charpos[c]], xx + 13 + xchunk, bpoff + b_offset + mmy[c]);
				draw_sprite(scr_84_get_sprite("spr_bnameralsei"), 0, xx + 51 + xchunk, bpoff + b_offset + 3 + mmy[c]);
			}
			if (c == 3)
			{
				draw_sprite(spr_headnoelle, global.faceaction[charpos[c]], xx + 13 + xchunk, bpoff + b_offset + mmy[c]);
				draw_sprite(scr_84_get_sprite("spr_bnamenoelle"), 0, xx + 51 + xchunk, bpoff + b_offset + 3 + mmy[c]);
			}
			draw_sprite(spr_hpname, 0, xx + 109 + xchunk, bpoff + b_offset + 11 + mmy[c]);
			draw_set_color(c_white);
			draw_set_font(global.hpfont);
			if ((global.hp[c + 1] / global.maxhp[c + 1]) <= 0.25)
				draw_set_color(c_yellow);
			if (global.hp[c + 1] <= 0)
				draw_set_color(c_red);
			draw_set_halign(fa_right);
			if (global.chapter == 2 && instance_exists(o_boxingcontroller) && o_boxingcontroller.dead != 0)
				draw_text(xx + 160 + xchunk, ((bpoff + b_offset) - 2) + mmy[c], string_hash_to_newline(0));
			else
				draw_text(xx + 160 + xchunk, ((bpoff + b_offset) - 2) + mmy[c], string_hash_to_newline(global.hp[c + 1]));
			draw_sprite(spr_hpslash, 0, xx + 159 + xchunk, ((bpoff + b_offset) - 4) + mmy[c]);
			draw_text(xx + 205 + xchunk, ((bpoff + b_offset) - 2) + mmy[c], string_hash_to_newline(global.maxhp[c + 1]));
			draw_set_halign(fa_left);
			draw_set_color(c_maroon);
			draw_rectangle(xx + 128 + xchunk, bpoff + b_offset + 11 + mmy[c], xx + 203 + xchunk, bpoff + b_offset + 19 + mmy[c], false);
			if (global.hp[c + 1] > 0 && global.maxhp[c + 1] > 0)
			{
				draw_set_color(charcolor);
				if (global.chapter == 2 && instance_exists(o_boxingcontroller) && o_boxingcontroller.dead != 0)
					draw_rectangle(xx + 128 + xchunk, bpoff + b_offset + 11 + mmy[c], xx + xchunk + 128 + ceil((0 / global.maxhp[c + 1]) * 75), bpoff + b_offset + 19 + mmy[c], false);
				else
					draw_rectangle(xx + 128 + xchunk, bpoff + b_offset + 11 + mmy[c], xx + xchunk + 128 + ceil((global.hp[c + 1] / global.maxhp[c + 1]) * 75), bpoff + b_offset + 19 + mmy[c], false);
			}
		}
	}
}
