depth = 800000;
lost = 0;
won = 0;
con = 0;
timer = 0;
init = 0;
currentString = "";
noelleString = "";
idealString = stringsetloc("DECEMBER", "obj_ch2_keyboard_cutscene_controller_slash_Create_0_gml_15_0");
addString = "";
letterCount = 0;
lastPressedTile = -100;
lastPressedTile = -100;
imageTimer = 0;
autoGenerate = (puzzle_id == 2) ? 1 : 0;
autoWidth = 8;
autoString = stringsetloc("DECEMBER", "obj_ch2_keyboard_cutscene_controller_slash_Create_0_gml_25_0");
autoX = x;
autoY = y;
var len = string_length(autoString);
for (j = 0; j < 2; j++)
{
	for (i = 0; i < len; i++)
	{
		keytile[i] = instance_create(autoX + (i * 200) + ((1 - j) * 60), autoY + (j * 120), obj_ch2_keyboardpuzzle_tile);
		keytile[i].myString = string_char_at(autoString, i + 1);
		currentW++;
		if (currentW >= autoWidth)
		{
			currentW = 0;
			currentH++;
		}
	}
}
