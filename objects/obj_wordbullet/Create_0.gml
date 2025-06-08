scr_bullet_init();
if (instance_exists(obj_queen_enemy))
	damage = global.monsterat[obj_queen_enemy.myself] * 5;
if (instance_exists(obj_queen_bulletcontroller))
	target = obj_queen_bulletcontroller.target;
grazepoints = 4;
destroyonhit = 1;
word[0] = stringsetloc("LOL", "obj_wordbullet_slash_Create_0_gml_9_0");
word[1] = stringsetloc("TOP10", "obj_wordbullet_slash_Create_0_gml_10_0");
word[2] = stringsetloc("FAMILY", "obj_wordbullet_slash_Create_0_gml_11_0");
word[3] = stringsetloc("GUY", "obj_wordbullet_slash_Create_0_gml_12_0");
word[4] = stringsetloc("FUNNY", "obj_wordbullet_slash_Create_0_gml_13_0");
word[5] = stringsetloc("MOMENTS", "obj_wordbullet_slash_Create_0_gml_14_0");
word[6] = stringsetloc("GIRL", "obj_wordbullet_slash_Create_0_gml_15_0");
word[7] = stringsetloc("DOLL", "obj_wordbullet_slash_Create_0_gml_16_0");
word[8] = stringsetloc("BOY", "obj_wordbullet_slash_Create_0_gml_17_0");
word[9] = stringsetloc("QUEEN", "obj_wordbullet_slash_Create_0_gml_18_0");
word[10] = stringsetloc("TALE", "obj_wordbullet_slash_Create_0_gml_19_0");
word[11] = stringsetloc("JOKE", "obj_wordbullet_slash_Create_0_gml_20_0");
word[12] = stringsetloc("FASHION", "obj_wordbullet_slash_Create_0_gml_21_0");
word[13] = stringsetloc("MIX", "obj_wordbullet_slash_Create_0_gml_22_0");
word[14] = stringsetloc("SOUND", "obj_wordbullet_slash_Create_0_gml_23_0");
word[15] = stringsetloc("VIDEO", "obj_wordbullet_slash_Create_0_gml_24_0");
word[16] = stringsetloc("TOP20", "obj_wordbullet_slash_Create_0_gml_25_0");
word[17] = stringsetloc("LAUGH", "obj_wordbullet_slash_Create_0_gml_26_0");
word[18] = stringsetloc("AND", "obj_wordbullet_slash_Create_0_gml_27_0");
word[19] = stringsetloc("CRY", "obj_wordbullet_slash_Create_0_gml_28_0");
word[20] = stringsetloc("LIKE", "obj_wordbullet_slash_Create_0_gml_29_0");
word[21] = stringsetloc("RATE", "obj_wordbullet_slash_Create_0_gml_30_0");
wordchoice = word[floor(random(21))];
active = 1;
timer = 0;
scr_84_set_draw_font("main");
stringlength = string_width(wordchoice);
stringheight = string_height(wordchoice);
if (global.lang == "ja")
{
	jpstringlength = string_length(wordchoice);
	jpstringwidth = string_width(wordchoice);
}
idealxscale = sprite_width / stringlength;
idealyscale = sprite_height / stringheight;
scaleupx = 0;
queenword = 0;
init = 0;
gray = 0;
angry = 0;
dramatimer_x = 0;
dramatimer_y = 0;
if (y < (cameray() + 290))
	depth = obj_heart.depth - 1;
if (y > (cameray() + 290))
	depth = obj_heart.depth + 100.5;
