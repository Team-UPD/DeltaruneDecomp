CURX = 0;
CURY = 0;
XMAX = 0;
YMAX = 0;
NAME[0][0] = stringsetloc("EGG", "DEVICE_CHOICE_slash_Create_0_gml_7_0");
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
	NAME[0][0] = stringsetloc("NO", "DEVICE_CHOICE_slash_Create_0_gml_28_0");
	NAME[1][0] = stringsetloc("YES", "DEVICE_CHOICE_slash_Create_0_gml_29_0");
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
	NAME[0][0] = stringsetloc("GRAINS", "DEVICE_CHOICE_slash_Create_0_gml_64_0");
	NAME[0][1] = stringsetloc("MEAT", "DEVICE_CHOICE_slash_Create_0_gml_65_0");
	NAME[0][2] = stringsetloc("DAIRY", "DEVICE_CHOICE_slash_Create_0_gml_66_0");
	NAME[0][3] = stringsetloc("SWEETS", "DEVICE_CHOICE_slash_Create_0_gml_67_0");
	NAME[0][4] = stringsetloc("FRUIT", "DEVICE_CHOICE_slash_Create_0_gml_68_0");
	NAME[0][5] = stringsetloc("VEGETABLE", "DEVICE_CHOICE_slash_Create_0_gml_69_0");
	NAME[0][6] = stringsetloc("EGG", "DEVICE_CHOICE_slash_Create_0_gml_70_0");
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
PANASHIR = 0;
PANASHIU = 0;
PANASHID = 0;
PANASHIL = 0;
ERASE = 0;
backout = 0;
