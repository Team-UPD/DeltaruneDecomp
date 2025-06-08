function scr_smallface_reset(arg0)
{
	global.smalarm[arg0] = 5;
	global.smyy[arg0] = 70;
	global.smxx[arg0] = 170;
	global.smdir[arg0] = 180;
	global.smspeed[arg0] = 10;
	global.smtype[arg0] = 3;
	global.smimage[arg0] = global.fe;
	global.smimagespeed[arg0] = 0;
	global.smsprite[arg0] = spr_face_s6;
	global.smcolor[arg0] = c_white;
	global.smstring[arg0] = stringsetloc("* ... what?", "scr_smallface_reset_slash_scr_smallface_reset_gml_12_0");
}
