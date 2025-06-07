CURX = 0;
CURY = 0;
XMAX = 0;
YMAX = 0;
NAME[0][0] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_7_0");
NAMEX[0][0] = 20;
NAMEY[0][0] = 20;
PLAYERNAMEY = 40;
TYPE = 0;
NAMESTRING = "";
STRINGMAX = 12;
xoff = 0;
yoff = 0;
LANGSUBTYPE = 0;
if (global.lang == "ja")
	LANGSUBTYPE = 1;
global.choice = -1;
if (TYPE == 0)
{
	NAME[0][0] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_22_0");
	NAME[1][0] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_23_0");
	NAMEX[0][0] = 110;
	NAMEX[1][0] = 190;
	NAMEY[0][0] = 180;
	NAMEY[1][0] = 180;
	XMAX = 1;
	CURX = -1;
	IDEALX = 150;
	IDEALY = 180;
}
if (TYPE == 1)
{
	for (i = 0; i <= 7; i += 1)
	{
		NAME[i][0] = string(1 + i);
		NAMEX[i][0] = 80 + (i * 20);
		NAMEY[i][0] = 180;
		XMAX += 1;
	}
	NAMEY[0][0] = 180;
	NAMEY[1][0] = 180;
	XMAX = 7;
	xoff = -7;
}
if (TYPE == 2)
{
	for (i = 0; i <= 6; i += 1)
	{
		NAME[0][i] = string(1 + i);
		NAMEX[0][i] = 80;
		NAMEY[0][i] = 100 + (i * 20);
		YMAX += 1;
	}
	NAME[0][0] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_57_0");
	NAME[0][1] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_58_0");
	NAME[0][2] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_59_0");
	NAME[0][3] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_60_0");
	NAME[0][4] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_61_0");
	NAME[0][5] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_62_0");
	NAME[0][6] = scr_84_get_lang_string("DEVICE_CHOICE_slash_Create_0_gml_63_0");
	HEARTX = NAMEX[0][0] - 20;
	HEARTY = NAMEY[0][0];
	XMAX = 0;
	YMAX = 6;
	xoff = -20;
}
if (TYPE == 3)
	scr_84_name_input_setup();
HEARTX = NAMEX[0][0];
HEARTY = NAMEY[0][0];
if (TYPE == 0)
	HEARTX = 150;
DRAWHEART = 1;
ONEBUFFER = 0;
TWOBUFFER = 0;
FINISH = 0;
fadebuffer = 10;
