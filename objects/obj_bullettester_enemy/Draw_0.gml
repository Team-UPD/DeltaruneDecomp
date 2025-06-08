draw_self();
keya = "Q";
keyb = "W";
if (myself == 1)
{
	keya = "E";
	keyb = "R";
}
if (myself == 2)
{
	keya = "T";
	keyb = "Y";
}
draw_set_color(c_red);
scr_84_set_draw_font("main");
draw_text_transformed(x - 80, y - 10, string_hash_to_newline("SpawnType: " + string(global.tempflag[23 + myself]) + "#" + keya + "- " + keyb + "+ "), 1.5, 1.5, 0);
