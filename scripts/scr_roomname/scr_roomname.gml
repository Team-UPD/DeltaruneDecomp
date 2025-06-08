function scr_roomname(arg0)
{
	roomname = stringsetloc("Dark World?", "scr_roomname_slash_scr_roomname_gml_1_0");
	if (arg0 == 0)
		roomname = stringsetloc("---", "scr_roomname_slash_scr_roomname_gml_2_0");
	if (arg0 == 18)
		roomname = stringsetloc("Kris's Room", "scr_roomname_slash_scr_roomname_gml_3_0");
	if (arg0 == 55)
		roomname = stringsetloc("Castle Town", "scr_roomname_slash_scr_roomname_gml_4_0");
	if (arg0 == 61)
		roomname = stringsetloc("Castle Town", "scr_roomname_slash_scr_roomname_gml_5_0");
	if (arg0 == 62)
		roomname = stringsetloc("My Castle Town", "scr_roomname_slash_scr_roomname_gml_6_0");
	if (arg0 == 78)
		roomname = stringsetloc("Cyber Field - Entrance", "scr_roomname_slash_scr_roomname_gml_7_0");
	if (arg0 == 83)
		roomname = stringsetloc("Cyber Field - Arcade Machine", "scr_roomname_slash_scr_roomname_gml_8_0");
	if (arg0 == 89)
		roomname = stringsetloc("Cyber Field - Music Shop", "scr_roomname_slash_scr_roomname_gml_9_0");
	if (arg0 == 112)
		roomname = stringsetloc("Cyber City - Entrance", "scr_roomname_slash_scr_roomname_gml_10_0");
	if (arg0 == 115)
		roomname = stringsetloc("Cyber City - First Alleyway", "scr_roomname_slash_scr_roomname_gml_11_0");
	if (arg0 == 126)
		roomname = stringsetloc("Cyber City - Mouse Alley", "scr_roomname_slash_scr_roomname_gml_12_0_b");
	if (arg0 == 121)
		roomname = stringsetloc("Cyber City - Music Shop", "scr_roomname_slash_scr_roomname_gml_12_0");
	if (arg0 == 128)
		roomname = stringsetloc("Cyber City - Second Alleyway", "scr_roomname_slash_scr_roomname_gml_13_0");
	if (arg0 == 133)
		roomname = stringsetloc("Cyber City - Heights", "scr_roomname_slash_scr_roomname_gml_16_0_b");
	if (arg0 == 152)
		roomname = stringsetloc("Queen's Mansion - Guest Hall", "scr_roomname_slash_scr_roomname_gml_14_0");
	if (arg0 == 157)
		roomname = stringsetloc("Queen's Mansion - Entrance", "scr_roomname_slash_scr_roomname_gml_15_0");
	if (arg0 == 187)
		roomname = stringsetloc("Queen's Mansion - 3F", "scr_roomname_slash_scr_roomname_gml_16_0");
	if (arg0 == 193)
		roomname = stringsetloc("Queen's Mansion - Acid Tunnel", "scr_roomname_slash_scr_roomname_gml_17_0");
	if (arg0 == 171)
		roomname = stringsetloc("Queen's Mansion - Basement", "scr_roomname_slash_scr_roomname_gml_19_0");
	if (arg0 == 196)
		roomname = stringsetloc("Queen's Mansion - 4F", "scr_roomname_slash_scr_roomname_gml_20_0");
	if (arg0 == 199 || arg0 == 200)
		roomname = stringsetloc("Queen's Mansion - Rooftop", "scr_roomname_slash_scr_roomname_gml_23_0");
	return roomname;
}
