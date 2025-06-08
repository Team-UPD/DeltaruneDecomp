function scr_texttype()
{
	var font_set = true;
	var extra_ja_vspace = 0;
	textscale = 1;
	switch (global.typer)
	{
		case 0:
			font_set = false;
			break;
		case 1:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 33, 8, 18, 0);
			break;
		case 2:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 259, 8, 18, 0);
			break;
		case 3:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 33, 8, 18, 1);
			break;
		case 4:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 33, 16, 28, 1);
			extra_ja_vspace = 2;
			break;
		case 5:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 33, 8, 18, 0);
			break;
		case 6:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 33, 16, 36, 1);
			break;
		case 7:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 32, 8, 18, 0);
			break;
		case 8:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 32, 8, 18, 0);
			break;
		case 10:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 24, 8, 18, 0);
			break;
		case 11:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 24, 8, 18, 0);
			break;
		case 12:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 25, 8, 18, 0);
			break;
		case 13:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 26, 8, 18, 0);
			break;
		case 14:
			scr_textsetup(scr_84_get_font("comicsans"), 16777215, x, y, 33, 0, 1, 22, 8, 18, 0);
			break;
		case 15:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 33, 8, 18, 0);
			break;
		case 16:
			font_set = false;
			break;
		case 17:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 23, 8, 18, 0);
			break;
		case 18:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 20, 8, 18, 0);
			break;
		case 19:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 33, 8, 18, 0);
			break;
		case 20:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 31, 8, 18, 0);
			break;
		case 21:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 31, 8, 18, 0);
			break;
		case 22:
			scr_textsetup(scr_84_get_font("tinynoelle"), 16777215, x, y + 7, 33, 0, 1, 31, 6, 18, 0);
			break;
		case 23:
			scr_textsetup(scr_84_get_font("tinynoelle"), 16777215, x, y + 7, 33, 0, 1, 25, 6, 18, 0);
			break;
		case 30:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 24, 16, 36, 1);
			break;
		case 31:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 27, 16, 36, 1);
			break;
		case 32:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 30, 16, 36, 1);
			break;
		case 33:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 114, 16, 36, 1);
			break;
		case 35:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 29, 16, 36, 1);
			break;
		case 36:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 259, 16, 36, 1);
			break;
		case 37:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 3, 24, 18, 36, 1);
			break;
		case 40:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 259, 8, 18, 0);
			break;
		case 41:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 3, 259, 8, 18, 0);
			break;
		case 42:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 2, 259, 16, 36, 1);
			break;
		case 45:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 27, 16, 28, 1);
			extra_ja_vspace = 2;
			break;
		case 46:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 30, 16, 28, 1);
			extra_ja_vspace = 2;
			break;
		case 47:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 24, 16, 28, 1);
			extra_ja_vspace = 2;
			break;
		case 48:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 114, 16, 28, 1);
			extra_ja_vspace = 2;
			break;
		case 50:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 33, 9, 20, 0);
			break;
		case 51:
			var rate = langopt(10, 14);
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, rate, 33, 16, 36, 1);
			break;
		case 52:
			var rate = langopt(6, 4);
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, rate, 33, 16, 36, 1);
			break;
		case 53:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 24, 9, 20, 0);
			break;
		case 54:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 2, 24, 9, 20, 0);
			break;
		case 55:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 28, 8, 18, 0);
			break;
		case 56:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 25, 16, 36, 1);
			break;
		case 57:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 26, 16, 36, 1);
			break;
		case 58:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 7, 16, 36, 1);
			break;
		case 59:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 25, 16, 28, 1);
			extra_ja_vspace = 2;
			break;
		case 60:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 27, 12, 20, 0);
			break;
		case 61:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 24, 12, 20, 0);
			break;
		case 62:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 34, 16, 36, 1);
			break;
		case 63:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 25, 8, 18, 0);
			break;
		case 64:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 1, 2, 25, 8, 18, 0);
			break;
		case 65:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 37, 16, 36, 1);
			break;
		case 66:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 35, 16, 36, 1);
			break;
		case 67:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 36, 16, 36, 1);
			break;
		case 68:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 35, 9, 20, 0);
			break;
		case 69:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 26, 9, 20, 0);
			extra_ja_vspace = 2;
			break;
		case 70:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 7, 9, 20, 0);
			extra_ja_vspace = 2;
			break;
		case 71:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 7, 9, 20, 0);
			extra_ja_vspace = 2;
			break;
		case 72:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 36, 9, 20, 0);
			extra_ja_vspace = 2;
			break;
		case 74:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 27, 9, 20, 0);
			extra_ja_vspace = 2;
			break;
		case 75:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 24, 9, 20, 0);
			extra_ja_vspace = 2;
			break;
		case 76:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 25, 9, 20, 0);
			extra_ja_vspace = 2;
			break;
		case 77:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 26, 16, 28, 1);
			extra_ja_vspace = 2;
			break;
		case 78:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 36, 0, 1, 33, 16, 36, 1);
			break;
		case 666:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 4, 259, 12, 20, 2);
			break;
		case 667:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 259, 12, 20, 2);
			break;
		case 999:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 4, 256, 8, 18, 3);
			break;
		default:
			font_set = false;
			break;
	}
	if (font_set && global.lang == "ja")
	{
		if (myfont == 11)
		{
			hspace = ((hspace * 26) / 16) + 1;
			if (vspace == 32)
				vspace = 36;
		}
		else if (myfont == 8)
		{
			hspace = ((hspace * 13) / 8) + 1;
		}
		else if (myfont == 6)
		{
			textscale = 0.5;
			hspace = ((hspace * 13) / 8) + 3;
		}
		else if (myfont == 10)
		{
			textscale = 0.5;
			hspace = ((hspace * 13) / 8) + 1;
		}
		else if (myfont == 7)
		{
			hspace = ((hspace * 26) / 16) + 1;
		}
		else if (myfont == 9)
		{
			hspace = ((hspace * 13) / 8) + 1;
		}
		vspace += extra_ja_vspace;
	}
}
