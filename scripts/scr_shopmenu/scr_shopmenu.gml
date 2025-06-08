function scr_shopmenu(arg0)
{
	if (arg0 == 0)
	{
		if (menu == 1 || menu == 2)
		{
			scr_darkbox_black(400, minimenuy, 640, 255);
			draw_set_color(c_white);
			scr_84_set_draw_font("mainbig");
			if (menuc[1] == 0)
				draw_text(440, minimenuy + 28, string_hash_to_newline(shopdesc[0]));
			if (menuc[1] == 1)
				draw_text(440, minimenuy + 28, string_hash_to_newline(shopdesc[1]));
			if (menuc[1] == 2)
				draw_text(440, minimenuy + 28, string_hash_to_newline(shopdesc[2]));
			if (menuc[1] == 3)
				draw_text(440, minimenuy + 28, string_hash_to_newline(shopdesc[3]));
			scr_84_set_draw_font("dotumche");
			if (itemtype[menuc[1]] == "weapon" || itemtype[menuc[1]] == "armor")
			{
				for (i = 0; i < 3; i += 1)
				{
					can_index = 0;
					facetype = spr_headkris;
					which = global.char[i];
					if (global.char[i] == 1)
						facetype = spr_headkris;
					if (global.char[i] == 2)
						facetype = spr_headsusie;
					if (global.char[i] == 3)
						facetype = spr_headralsei;
					if (which != 0)
					{
						if (i == 0)
						{
							locx = 0;
							locy = 0;
						}
						if (i == 1)
						{
							locx = 100;
							locy = 0;
						}
						if (i == 2)
						{
							locx = 0;
							locy = 45;
						}
						if (canequip[menuc[1]][which] == 0)
							can_index = 8;
						draw_sprite(facetype, can_index, 426 + locx, minimenuy + 140 + locy);
						if (itemtype[menuc[1]] == "weapon" && can_index != 8)
						{
							draw_set_color(c_white);
							sum[0] = itematk[menuc[1]] - global.itemat[which][0];
							sum[1] = itemmagic[menuc[1]] - global.itemmag[which][0];
							for (j = 0; j < 2; j += 1)
							{
								dcolor = c_white;
								addt = "";
								draw_set_color(c_white);
								if (sum[j] > 0)
								{
									draw_set_color(c_yellow);
									addt = "+";
								}
								if (sum[j] < 0)
									draw_set_color(c_aqua);
								draw_sprite_ext(spr_shopicon, j, 470 + locx, minimenuy + locy + 135 + (20 * j), 1, 1, 0, dcolor, 1);
								draw_text(490 + locx, minimenuy + locy + 135 + (20 * j), string_hash_to_newline(addt + string(sum[j])));
							}
						}
						if (itemtype[menuc[1]] == "armor" && can_index != 8)
						{
							sum[0] = itemdef[menuc[1]] - global.itemdf[which][1];
							sum[1] = itemdef[menuc[1]] - global.itemdf[which][2];
							for (j = 0; j < 2; j += 1)
							{
								dcolor = c_white;
								addt = "";
								draw_set_color(c_white);
								if (sum[j] > 0)
								{
									draw_set_color(c_yellow);
									addt = "+";
								}
								if (sum[j] < 0)
									draw_set_color(c_aqua);
								draw_sprite_ext(spr_shopicon, 2 + j, 470 + locx, minimenuy + locy + 135 + (20 * j), 1, 1, 0, dcolor, 1);
								draw_text(490 + locx, minimenuy + 135 + (20 * j) + locy, string_hash_to_newline(addt + string(sum[j])));
							}
						}
					}
				}
			}
		}
	}
	if (arg0 == 4)
	{
		if (menu == 11 || menu == 15)
		{
			draw_set_color(c_white);
			scr_84_set_draw_font("mainbig");
			scr_itemcheck(0);
			menumax = selltotal - nothingcount - 1;
			if (menumax < 0)
				menumax = 0;
			if (menu == 11)
			{
				_up_pressed = 0;
				_down_pressed = 0;
				if (down_h())
				{
					hold_up = 0;
					if (down_p())
						_down_pressed = 1;
					hold_down += 1;
					if (hold_down >= 8)
					{
						_down_pressed = 1;
						hold_down = 6;
					}
					if (_down_pressed == 1)
					{
						if (menuc[menu] < menumax)
						{
							menuc[menu] += 1;
							if (menuc[menu] > (pagemax + 4))
								pagemax += 1;
						}
					}
				}
				else
				{
					hold_down = 0;
				}
				if (up_h())
				{
					hold_down = 0;
					if (up_p())
						_up_pressed = 1;
					hold_up += 1;
					if (hold_up >= 8)
					{
						_up_pressed = 1;
						hold_up = 6;
					}
					if (_up_pressed == 1)
					{
						if (menuc[menu] > 0)
						{
							menuc[menu] -= 1;
							if (menuc[menu] < pagemax)
								pagemax -= 1;
						}
					}
				}
				else
				{
					hold_up = 0;
				}
			}
			j = 0;
			for (i = pagemax; i < (5 + pagemax); i += 1)
			{
				draw_sprite(spr_heart, 0, 30, 270 + ((menuc[11] - pagemax) * 40));
				g = 0;
				draw_set_color(c_white);
				_itempname = itemsellname[i];
				if (_itempname == " ")
				{
					_itempname = "--------";
					draw_set_color(c_dkgray);
				}
				draw_text(60, 260 + (j * 40), string_hash_to_newline(_itempname));
				if (itemsellvalue[i] > 1)
					draw_text(300, 260 + (j * 40), string_hash_to_newline(stringsetsubloc("$~1", string(ceil(itemsellvalue[i] / 2)), "scr_shopmenu_slash_scr_shopmenu_gml_158_0")));
				j += 1;
			}
			draw_set_color(c_white);
			if (menu == 11)
			{
				if (button1_p() && onebuffer < 0)
				{
					sellvalue = ceil(itemsellvalue[menuc[menu]] / 2);
					if (itemsellvalue[menuc[menu]] > 1)
						menu = 15;
					else if (itemsellname[menuc[menu]] == " ")
						sidemessage2 = 4;
					else
						sidemessage2 = 3;
					tempmenu = 11;
					onebuffer = 2;
					with (obj_writer)
						instance_destroy();
				}
				if (button2_p() && twobuffer < 0 && onebuffer < 2)
				{
					sidemessage = 0;
					menu = 10;
					twobuffer = 2;
					with (obj_writer)
						instance_destroy();
				}
			}
			if (menu != 15)
				scr_shopmorearrow(menumax);
			if (menumax > 4)
			{
				for (i = 0; i <= menumax; i += 1)
				{
					buff = 0;
					if (menuc[menu] == i)
						buff = 3;
					draw_rectangle(375 - buff, (295 + (i * (130 / menumax))) - buff, 377 + buff, 297 + (i * (130 / menumax)) + buff, false);
				}
			}
		}
		if (menu == 12 || menu == 16)
		{
			draw_set_color(c_white);
			scr_84_set_draw_font("mainbig");
			menumax = 47;
			if (menu == 12)
			{
				_up_pressed = 0;
				_down_pressed = 0;
				if (down_h())
				{
					hold_up = 0;
					if (down_p())
						_down_pressed = 1;
					hold_down += 1;
					if (hold_down >= 8)
					{
						_down_pressed = 1;
						hold_down = 6;
					}
					if (_down_pressed == 1)
					{
						if (menuc[menu] < menumax)
						{
							menuc[menu] += 1;
							if (menuc[menu] > (pagemax + 4))
								pagemax += 1;
						}
					}
				}
				else
				{
					hold_down = 0;
				}
				if (up_h())
				{
					hold_down = 0;
					if (up_p())
						_up_pressed = 1;
					hold_up += 1;
					if (hold_up >= 8)
					{
						_up_pressed = 1;
						hold_up = 6;
					}
					if (_up_pressed == 1)
					{
						if (menuc[menu] > 0)
						{
							menuc[menu] -= 1;
							if (menuc[menu] < pagemax)
								pagemax -= 1;
						}
					}
				}
				else
				{
					hold_up = 0;
				}
			}
			j = 0;
			for (i = pagemax; i < (5 + pagemax); i += 1)
			{
				draw_sprite(spr_heart, 0, 30, 270 + ((menuc[12] - pagemax) * 40));
				g = 0;
				draw_set_color(c_white);
				_itempname = weaponname[i];
				if (_itempname == " ")
				{
					_itempname = "--------";
					draw_set_color(c_dkgray);
				}
				draw_text(60, 260 + (j * 40), string_hash_to_newline(_itempname));
				if (weaponvalue[i] > 1)
					draw_text(300, 260 + (j * 40), string_hash_to_newline(stringsetsubloc("$~1", string(ceil(weaponvalue[i] / 2)), "scr_shopmenu_slash_scr_shopmenu_gml_270_0")));
				j += 1;
			}
			draw_set_color(c_white);
			if (menu == 12)
			{
				if (button1_p() && onebuffer < 0)
				{
					if (weaponvalue[menuc[12]] > 1)
						menu = 16;
					else if (weaponname[menuc[12]] != " ")
						sidemessage2 = 3;
					else
						sidemessage2 = 4;
					sellvalue = ceil(weaponvalue[menuc[12]] / 2);
					tempmenu = 12;
					onebuffer = 2;
					with (obj_writer)
						instance_destroy();
				}
				if (button2_p() && twobuffer < 0 && onebuffer < 2)
				{
					sidemessage = 0;
					menu = 10;
					twobuffer = 2;
					with (obj_writer)
						instance_destroy();
				}
			}
			scr_shopmorearrow(menumax);
			buff = 3;
			draw_rectangle(375 - buff, (295 + (pagemax * (130 / menumax))) - buff, 377 + buff, 297 + (pagemax * (130 / menumax)) + buff, false);
		}
		if (menu == 13 || menu == 17)
		{
			draw_set_color(c_white);
			scr_84_set_draw_font("mainbig");
			menumax = 47;
			if (menu == 13)
			{
				_up_pressed = 0;
				_down_pressed = 0;
				if (down_h())
				{
					hold_up = 0;
					if (down_p())
						_down_pressed = 1;
					hold_down += 1;
					if (hold_down >= 8)
					{
						_down_pressed = 1;
						hold_down = 6;
					}
					if (_down_pressed == 1)
					{
						if (menuc[menu] < menumax)
						{
							menuc[menu] += 1;
							if (menuc[menu] > (pagemax + 4))
								pagemax += 1;
						}
					}
				}
				else
				{
					hold_down = 0;
				}
				if (up_h())
				{
					hold_down = 0;
					if (up_p())
						_up_pressed = 1;
					hold_up += 1;
					if (hold_up >= 8)
					{
						_up_pressed = 1;
						hold_up = 6;
					}
					if (_up_pressed == 1)
					{
						if (menuc[menu] > 0)
						{
							menuc[menu] -= 1;
							if (menuc[menu] < pagemax)
								pagemax -= 1;
						}
					}
				}
				else
				{
					hold_up = 0;
				}
			}
			j = 0;
			for (i = pagemax; i < (5 + pagemax); i += 1)
			{
				draw_sprite(spr_heart, 0, 30, 270 + ((menuc[13] - pagemax) * 40));
				g = 0;
				draw_set_color(c_white);
				_itempname = armorname[i];
				if (_itempname == " ")
				{
					_itempname = "--------";
					draw_set_color(c_dkgray);
				}
				draw_text(60, 260 + (j * 40), string_hash_to_newline(_itempname));
				if (armorvalue[i] > 1)
					draw_text(300, 260 + (j * 40), string_hash_to_newline(stringsetsubloc("$~1", string(ceil(armorvalue[i] / 2)), "scr_shopmenu_slash_scr_shopmenu_gml_389_0")));
				j += 1;
			}
			draw_set_color(c_white);
			if (menu == 13)
			{
				if (button1_p() && onebuffer < 0)
				{
					if (armorvalue[menuc[13]] > 1)
						menu = 17;
					else if (armorname[menuc[13]] != " ")
						sidemessage2 = 3;
					else
						sidemessage2 = 4;
					sellvalue = ceil(armorvalue[menuc[13]] / 2);
					tempmenu = 13;
					onebuffer = 2;
					with (obj_writer)
						instance_destroy();
				}
				if (button2_p() && twobuffer < 0 && onebuffer < 2)
				{
					sidemessage = 0;
					menu = 10;
					twobuffer = 2;
					with (obj_writer)
						instance_destroy();
				}
			}
			scr_shopmorearrow(47);
			buff = 3;
			draw_rectangle(375 - buff, (295 + (pagemax * (130 / menumax))) - buff, 377 + buff, 297 + (pagemax * (130 / menumax)) + buff, false);
		}
	}
	if (arg0 == 5)
	{
		if (menu == 15)
		{
			if (button2_p() && twobuffer < 0)
			{
				menu = tempmenu;
				sidemessage2 = 2;
				twobuffer = 2;
				onebuffer = 2;
			}
			if (button1_p() && onebuffer < 0 && twobuffer < 0)
			{
				if (menuc[15] == 0)
				{
					snd_play(snd_locker);
					global.gold += sellvalue;
					var noneleft = 0;
					if (selltype == "item")
					{
						scr_itemshift(menuc[11], 0);
						scr_iteminfo_all();
						scr_itemcheck(0);
						if (itemcount == 12)
							noneleft = 1;
						nothingcount = itemcount;
						for (i = 0; i < selltotal; i++)
						{
							itemsellvalue[i] = global.itemvalue[i];
							itemsellname[i] = global.itemnameb[i];
						}
						if (global.item[menuc[11]] == 0)
						{
							menuc[11] -= 1;
							if (pagemax > 0)
								pagemax -= 1;
						}
					}
					if (selltype == "pocket")
					{
						global.pocketitem[menuc[11]] = 0;
						scr_itemcheck_pocket(0);
						if (itemcount == global.flag[64])
							noneleft = 1;
						nothingcount = 0;
						for (i = 0; i < global.flag[64]; i++)
						{
							scr_iteminfo(global.pocketitem[i]);
							itemsellvalue[i] = value;
							itemsellname[i] = itemnameb;
						}
					}
					if (noneleft == 1)
					{
						menu = 10;
						sidemessage = 1;
					}
					else
					{
						menu = 11;
						sidemessage2 = 1;
					}
				}
				if (menuc[15] == 1)
				{
					sidemessage2 = 2;
					menu = 11;
				}
			}
		}
		if (menu == 16)
		{
			if (button2_p() && twobuffer < 0)
			{
				menu = tempmenu;
				sidemessage2 = 2;
				twobuffer = 2;
				onebuffer = 2;
			}
			if (button1_p() && onebuffer < 0 && twobuffer < 0)
			{
				if (menuc[16] == 0)
				{
					snd_play(snd_locker);
					global.gold += sellvalue;
					global.weapon[menuc[12]] = 0;
					scr_weaponinfo_all();
					scr_weaponcheck_inventory(0);
					if (itemcount == 12)
					{
						menu = 10;
						sidemessage = 1;
					}
					else
					{
						menu = 12;
						sidemessage2 = 1;
					}
				}
				if (menuc[16] == 1)
				{
					sidemessage2 = 2;
					menu = 12;
				}
			}
		}
		if (menu == 17)
		{
			if (button2_p() && twobuffer < 0)
			{
				menu = tempmenu;
				sidemessage2 = 2;
				twobuffer = 2;
				onebuffer = 2;
			}
			if (button1_p() && onebuffer < 0 && twobuffer < 0)
			{
				if (menuc[17] == 0)
				{
					snd_play(snd_locker);
					global.gold += sellvalue;
					global.armor[menuc[13]] = 0;
					scr_armorinfo_all();
					scr_armorcheck_inventory(0);
					if (itemcount == 12)
					{
						menu = 10;
						sidemessage = 1;
					}
					else
					{
						menu = 13;
						sidemessage2 = 1;
					}
				}
				if (menuc[17] == 1)
				{
					sidemessage2 = 2;
					menu = 13;
				}
			}
		}
	}
}
