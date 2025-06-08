function scr_kingface(arg0, arg1)
{
	if ((global.chapter == 1 && global.plot >= 235) || global.chapter >= 2)
		global.msg[arg0] = stringsetsubloc("\\TX \\F0 \\E~1 \\FK \\TK %", string(arg1), "scr_kingface_slash_scr_kingface_gml_3_0");
	else
		global.msg[arg0] = stringsetsubloc("\\TX \\F0 \\E~1 \\TK %", string(arg1), "scr_kingface_slash_scr_kingface_gml_7_0");
}
