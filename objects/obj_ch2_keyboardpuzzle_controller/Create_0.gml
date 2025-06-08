depth = 800000;
lost = 0;
won = 0;
con = 0;
timer = 0;
init = 0;
use_ja = global.lang == "ja";
currentString = "";
idealString = stringsetloc("APPLE", "obj_ch2_keyboardpuzzle_controller_slash_Create_0_gml_11_0");
if (room == room_dw_cyber_keyboard_puzzle_2)
{
	if (use_ja)
		idealString = "YEEES2O!!";
	else
		idealString = stringsetloc("AGREE2ALL", "obj_ch2_keyboardpuzzle_controller_slash_Create_0_gml_12_0");
}
addString = "";
letterCount = 0;
lastPressedTile = -100;
firstTileX = 0;
victorySprite = spr_keyboard_puzzle_apple;
imageTimer = 0;
krisStartX = 80;
krisStartY = 220;
failcount = 0;
monitorx = 0;
monitory = 0;
victoryextra = 0;
hacked = false;
if (room == room_dw_cyber_keyboard_puzzle_2)
{
	krisStartX = 134;
	krisStartY = 210;
	victorySprite = spr_keyboard_puzzle_agree2all;
}
if (room == room_dw_cyber_keyboard_puzzle_3)
	victorySprite = spr_keyboard_puzzle_icee;
autoGenerate = (puzzle_id == 2) ? 1 : 0;
autoWidth = 8;
autoString = stringsetloc("GIAEEFSBISSFLBALAELRHEIGSFFEBRSI", "obj_ch2_keyboardpuzzle_controller_slash_Create_0_gml_38_0");
autoX = x;
autoY = y;
if (autoGenerate == 1)
{
	idealString = stringsetloc("GIASFELFEBREHBER", "obj_ch2_keyboardpuzzle_controller_slash_Create_0_gml_46_0");
	var currentW = 0;
	var currentH = 0;
	if (use_ja)
	{
		autoWidth = 10;
		autoString = stringsetloc("UPIOMAOIOTSUGNINMGUSIFIOPEKIFUSIORATEGUI", "obj_ch2_keyboardpuzzle_controller_slash_Create_0_gml_56_0");
		autoX = x - 40;
		autoY = y;
		idealString = stringsetloc("SUFUGIOROTENIPEKENAMO", "obj_ch2_keyboardpuzzle_controller_slash_Create_0_gml_59_0");
		layer_set_visible("JA_TILES", true);
		with (obj_solidblocksized_alt)
			instance_destroy();
	}
	else
	{
		layer_set_visible("JA_TILES", false);
	}
	var len = string_length(autoString);
	for (i = 0; i < len; i++)
	{
		keytile[i] = instance_create(autoX + (currentW * 40), autoY + (currentH * 40), obj_ch2_keyboardpuzzle_tile);
		keytile[i].myString = string_char_at(autoString, i + 1);
		currentW++;
		if (currentW >= autoWidth)
		{
			currentW = 0;
			currentH++;
		}
	}
}
if (puzzle_id == 2)
{
	monitorx = 40;
	monitory = -20;
	victorySprite = 0;
	if (use_ja)
	{
		monitor = scr_dark_marker_depth(monitorx, monitory, 1100000, bg_dw_cyber_keyboard_bigger);
		monitorx += 412;
	}
	else
	{
		monitor = scr_dark_marker_depth(monitorx, monitory, 1100000, bg_dw_cyber_keyboard_big);
		monitorx += 390;
	}
	monitor.image_speed = 0.0625;
}
else
{
	if (room == room_dw_cyber_keyboard_puzzle_2)
	{
		monitorx = 80;
		monitory = 0;
	}
	else
	{
		monitorx = 40;
		monitory = 0;
	}
	monitor = scr_dark_marker_depth(monitorx, monitory, 950000, bg_dw_cyber_keyboard);
	monitor.image_speed = 0.0625;
	monitorx += 330;
}
monitory += 70;
if (room == room_dw_cyber_keyboard_puzzle_1 && global.flag[390] == 1)
	won = true;
if (room == room_dw_cyber_keyboard_puzzle_2 && global.flag[333] == 1)
	won = true;
if (room == room_dw_cyber_keyboard_puzzle_3 && global.flag[420] == 1)
{
	victorySprite = spr_keyboard_puzzle_bluecheck;
	won = true;
}
if (won)
{
	currentString = idealString;
	imageTimer = sprite_get_number(victorySprite) - 0.5;
}
