function scr_texttype()
{
	textscale = 1;
	var extra_ja_vspace = 0;
	if (!variable_global_exists("chemg_typer"))
		global.chemg_typer = -1;
	if (global.chemg_typer != global.typer)
		global.chemg_typer = global.typer;
	var font_set = true;
	switch (global.typer)
	{
		case 0:
			font_set = false;
			break;
		case 1:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 13, 8, 18, 0);
			break;
		case 2:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 148, 8, 18, 0);
			break;
		case 3:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 13, 8, 18, 1);
			break;
		case 4:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 13, 16, 28, 1);
			extra_ja_vspace = 2;
			break;
		case 5:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 13, 8, 18, 0);
			break;
		case 6:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 13, 16, 36, 1);
			break;
		case 7:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 12, 8, 18, 0);
			break;
		case 8:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 12, 8, 18, 0);
			break;
		case 10:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 4, 8, 18, 0);
			break;
		case 11:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 4, 8, 18, 0);
			break;
		case 12:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 5, 8, 18, 0);
			break;
		case 13:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 6, 8, 18, 0);
			break;
		case 14:
			scr_textsetup(scr_84_get_font("comicsans"), 16777215, x, y, 33, 0, 1, 2, 8, 18, 0);
			break;
		case 15:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 13, 8, 18, 0);
			break;
		case 16:
			font_set = false;
			break;
		case 17:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 3, 8, 18, 0);
			break;
		case 18:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 0, 8, 18, 0);
			break;
		case 19:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 13, 8, 18, 0);
			break;
		case 20:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 11, 8, 18, 0);
			break;
		case 21:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 11, 8, 18, 0);
			break;
		case 22:
			scr_textsetup(scr_84_get_font("tinynoelle"), 16777215, x, y + 7, 33, 0, 1, 11, 6, 18, 0);
			break;
		case 23:
			scr_textsetup(scr_84_get_font("tinynoelle"), 16777215, x, y + 7, 33, 0, 1, 5, 6, 18, 0);
			break;
		case 30:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 4, 16, 36, 1);
			break;
		case 31:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 7, 16, 36, 1);
			break;
		case 32:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 10, 16, 36, 1);
			break;
		case 33:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 61, 16, 36, 1);
			break;
		case 35:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 9, 16, 36, 1);
			break;
		case 36:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 148, 16, 36, 1);
			break;
		case 37:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 3, 4, 18, 36, 1);
			break;
		case 40:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 148, 8, 18, 0);
			break;
		case 41:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 3, 148, 8, 18, 0);
			break;
		case 42:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 2, 148, 16, 36, 1);
			break;
		case 45:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 7, 16, 28, 1);
			extra_ja_vspace = 2;
			break;
		case 46:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 10, 16, 28, 1);
			extra_ja_vspace = 2;
			break;
		case 47:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 4, 16, 28, 1);
			extra_ja_vspace = 2;
			break;
		case 48:
			scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 1, 61, 16, 28, 1);
			extra_ja_vspace = 2;
			break;
		case 50:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 13, 9, 20, 0);
			break;
		case 51:
			if (global.lang == "ja")
				scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 14, 13, 16, 36, 1);
			else
				scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 10, 13, 16, 36, 1);
			break;
		case 52:
			if (global.lang == "ja")
				scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 6, 13, 16, 36, 1);
			else
				scr_textsetup(scr_84_get_font("mainbig"), 16777215, x, y, 33, 0, 4, 13, 16, 36, 1);
			break;
		case 53:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 1, 4, 9, 20, 0);
			break;
		case 54:
			scr_textsetup(scr_84_get_font("dotumche"), 0, x, y, 33, 0, 2, 4, 9, 20, 0);
			break;
		case 55:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 1, 8, 8, 18, 0);
			break;
		case 60:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 8, 148, 8, 18, 0);
			break;
		case 666:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 4, 148, 12, 20, 2);
			break;
		case 667:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 2, 148, 12, 20, 2);
			break;
		case 999:
			scr_textsetup(scr_84_get_font("main"), 16777215, x, y, 33, 0, 4, 145, 8, 18, 3);
			break;
		default:
			font_set = false;
			break;
	}
	if (font_set && global.lang == "ja")
	{
		if (myfont == 1)
		{
			hspace = ((hspace * 26) / 16) + 1;
			if (vspace == 32)
				vspace = 36;
		}
		else if (myfont == 10)
		{
			hspace = ((hspace * 13) / 8) + 1;
		}
		else if (myfont == 0)
		{
			textscale = 0.5;
			hspace = ((hspace * 13) / 8) + 3;
		}
		else if (myfont == 2)
		{
			hspace = ((hspace * 13) / 8) + 1;
		}
		else if (myfont == 9)
		{
			hspace = ((hspace * 26) / 16) + 1;
		}
		else if (myfont == 8)
		{
			hspace = ((hspace * 13) / 8) + 1;
		}
		vspace += extra_ja_vspace;
	}
}
