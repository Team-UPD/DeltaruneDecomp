siner += 1;
if (instance_exists(obj_rouxls_enemy))
{
	if (MyTurn == 1)
		depth = -50;
	else
		depth = (room != room_dw_mansion_acid_tunnel_loop_rouxls) ? (obj_rouxls_enemy.depth + 9997) : 840000;
}
else if (room != room_dw_mansion_acid_tunnel_loop_rouxls)
{
	depth = 900000;
}
for (i = 0; i < 16; i += 1)
{
	for (j = 0; j < 6; j += 1)
	{
		if (TileHasHouse[i][j] == 0 && TileLand[i][j] == 1)
			draw_sprite_ext(spr_acid_house, 2, base_xpos + (i * 40), base_ypos + (j * 40) + 80 + tileHouseY[i][j], 1, 1, 0, c_white, 1);
		if (TileHasHouse[i][j] == 1)
			draw_sprite_ext(spr_acid_house, 0, base_xpos + (i * 40), base_ypos + (j * 40) + 80 + tileHouseY[i][j], 1, 1, 0, c_white, 1);
		if (TileHasHouse[i][j] == 2)
			draw_sprite_ext(spr_acid_house, 1, base_xpos + (i * 40), base_ypos + (j * 40) + 80 + tileHouseY[i][j], 1, 1, 0, c_white, 1);
		if (MyTurn == 1)
		{
			if (TileYouCanBuild[i][j] == 1)
			{
				if (CursorX == i && CursorY == j)
				{
					draw_sprite_ext(spr_simtown_tile, 0, base_xpos + (i * 40), base_ypos + (j * 40) + 80, 1, 1, 0, c_yellow, 0.6 + (sin(siner / 8) * 0.2));
					draw_sprite_ext(spr_acid_house, 0, base_xpos + (i * 40), base_ypos + (j * 40) + 80, 1, 1, 0, c_white, 0.2 + (sin(siner / 8) * 0.1));
				}
				else
				{
					draw_sprite_ext(spr_acid_house, 0, base_xpos + (i * 40), base_ypos + (j * 40) + 80, 1, 1, 0, c_yellow, 0.6 + (sin(siner / 8) * 0.2));
				}
			}
		}
	}
}
StatusMessage = stringsetloc("* You can take this tile!", "obj_rouxls_simtown_slash_Draw_0_gml_47_0");
if (TileHasHouse[CursorX][CursorY] != 0)
	StatusMessage = stringsetloc("* Press arrows to move!", "obj_rouxls_simtown_slash_Draw_0_gml_48_0");
if (TileYouCanBuild[CursorX][CursorY] == 0 && TileHasHouse[CursorX][CursorY] != 1)
	StatusMessage = stringsetloc("* Too far from own territory!", "obj_rouxls_simtown_slash_Draw_0_gml_49_0");
if (TileLand[CursorX][CursorY] != 1)
	StatusMessage = stringsetloc("* Can't build on acid!", "obj_rouxls_simtown_slash_Draw_0_gml_50_0");
if (TileHasHouse[CursorX][CursorY] == 2)
	StatusMessage = stringsetloc("* Can't build on enemy territory!", "obj_rouxls_simtown_slash_Draw_0_gml_51_0");
if (CursorX == 2 && CursorY == 2)
	StatusMessage = stringsetloc("* Swan is lacking#structural support", "obj_rouxls_simtown_slash_Draw_0_gml_53_0");
if (CursorX == 2 && CursorY == 3)
	StatusMessage = stringsetloc("* Swan is lacking#structural support", "obj_rouxls_simtown_slash_Draw_0_gml_54_0");
if (CursorX == 3 && CursorY == 2)
	StatusMessage = stringsetloc("* Swan is lacking#structural support", "obj_rouxls_simtown_slash_Draw_0_gml_55_0");
if (CursorX == 3 && CursorY == 3)
	StatusMessage = stringsetloc("* Swan is lacking#structural support", "obj_rouxls_simtown_slash_Draw_0_gml_56_0");
var txt = stringsetloc("* A familiar-looking machine.", "obj_rouxls_simtown_slash_Draw_0_gml_58_0");
if (instance_exists(obj_thrashmachine) && obj_thrashmachine.part[1] == 3)
	txt = stringsetloc("* It seems to be in love with your swan.", "obj_rouxls_simtown_slash_Draw_0_gml_59_0");
if (CursorX == 12 && CursorY == 1)
	StatusMessage = txt;
if (CursorX == 13 && CursorY == 1)
	StatusMessage = txt;
if (CursorX == 14 && CursorY == 1)
	StatusMessage = txt;
if (CursorX == 15 && CursorY == 1)
	StatusMessage = txt;
if (CursorX == 12 && CursorY == 2)
	StatusMessage = txt;
if (CursorX == 13 && CursorY == 2)
	StatusMessage = txt;
if (CursorX == 14 && CursorY == 2)
	StatusMessage = txt;
if (CursorX == 15 && CursorY == 2)
	StatusMessage = txt;
if (CursorX == 12 && CursorY == 3)
	StatusMessage = txt;
if (CursorX == 13 && CursorY == 3)
	StatusMessage = txt;
if (CursorX == 14 && CursorY == 3)
	StatusMessage = txt;
if (CursorX == 15 && CursorY == 3)
	StatusMessage = txt;
if (CursorX == 13 && CursorY == 1)
	StatusMessage = stringsetloc("* Thoust admireth moi...?", "obj_rouxls_simtown_slash_Draw_0_gml_72_0");
if (MyTurn == 0)
	StatusMessage = "* Rouxls Turn. TurnCon:" + string(TurnCon);
if (MyTurn == 1)
{
	scr_84_set_draw_font("mainbig");
	draw_set_color(c_white);
	StatusMessage = string_replace_all(StatusMessage, "&", "#");
	draw_text(base_xpos + 66, base_ypos + 415, string_hash_to_newline(StatusMessage));
	if (global.is_console || obj_gamecontroller.gamepad_active)
	{
		var button_offset = (global.lang == "en") ? 0 : -122;
		draw_sprite_ext(scr_getbuttonsprite(global.input_g[4], false), 0, base_xpos + 233 + button_offset, base_ypos + 391, 2, 2, 0, c_white, 1);
		if (global.lang == "en")
		{
			draw_text(base_xpos + 66, base_ypos + 387, stringsetloc("* Claim with", "obj_rouxls_simtown_slash_Draw_0_gml_103_0"));
		}
		else
		{
			draw_text(base_xpos + 66, base_ypos + 387, stringset("＊ "));
			draw_text(base_xpos + 140, base_ypos + 387, stringsetloc("* Claim with", "obj_rouxls_simtown_slash_Draw_0_gml_103_0"));
		}
	}
	else
	{
		draw_text(base_xpos + 66, base_ypos + 387, stringsetsubloc("* Claim with ~1!", scr_get_input_name(4), "obj_rouxls_simtown_slash_Draw_0_gml_80_0"));
	}
	specialCursor.x = (room != room_dw_mansion_acid_tunnel_loop_rouxls) ? CursorVisualX : (camerax() + CursorVisualX + 8);
	specialCursor.y = CursorVisualY;
}
else
{
	specialCursor.y = -999;
}
if (flyaway == 1)
{
	tileHouseY[6][2] -= 16;
	tileHouseY[7][2] -= 17;
	tileHouseY[8][2] -= 16;
	tileHouseY[7][3] -= 18;
	tileHouseY[8][3] -= 15;
	tileHouseY[9][3] -= 19;
}
