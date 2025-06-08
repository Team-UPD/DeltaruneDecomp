global.msc = 0;
global.typer = 5;
global.fc = 0;
global.fe = 0;
global.interact = 1;
image_speed = 0.2;
if (global.chapter == 1)
{
	global.msg[0] = stringsetloc("* KRISP!^1!&* awa..^1. ver sorz..^1.&* tem already have partner.../%", "obj_tem_school_slash_Other_10_gml_10_0");
	if (egcon == 0 && global.plot < 3)
		egcon = 1;
	if (talked >= 1)
	{
		global.msg[0] = stringsetloc("* tem partner with..^1.&* EG!!!/%", "obj_tem_school_slash_Other_10_gml_15_0");
		if (global.facing == 3)
		{
			image_speed = 0;
			facing = 0;
			dfacing = 0;
			global.msg[0] = stringsetloc("* (It's a black-and-white hardboiled egg.)/", "obj_tem_school_slash_Other_10_gml_22_0");
			global.msg[1] = stringsetloc("* (Sadly, seems like it already has a partner.)/%", "obj_tem_school_slash_Other_10_gml_23_0");
		}
	}
	if (global.plot == 3)
	{
		if (egcon == 0)
		{
			global.msg[0] = stringsetloc("* suz... VER MEAN!!^1!&* said tem talk stupid.../", "obj_tem_school_slash_Other_10_gml_31_0");
			global.msg[1] = stringsetloc("* WRON^1! tem a SMART!!^1!&* tem study hard and go to COLLEGE!!!/%", "obj_tem_school_slash_Other_10_gml_32_0");
		}
		if (egcon == 3)
		{
			global.msg[0] = stringsetloc("* suz... VER MEAN!!^1!&* said eg..^1.&* NEVER HATCH!!!/%", "obj_tem_school_slash_Other_10_gml_36_0");
			if (global.facing == 3)
			{
				image_speed = 0;
				facing = 0;
				dfacing = 0;
				global.msg[0] = stringsetloc("* (The hardboiled egg emanates a feeling of pity towards you.)/%", "obj_tem_school_slash_Other_10_gml_43_0");
			}
		}
	}
}
if (global.chapter == 2)
{
	if (global.facing == 3 && scr_litemcheck(8) && talked >= 1)
	{
		image_speed = 0;
		facing = 0;
		dfacing = 0;
		var egg_amount = global.flag[911] + global.flag[918];
		scr_speaker("no_name");
		msgsetsubloc(0, "* (The eggs you have collected so far. There's ~1.)/%", egg_amount, "obj_tem_school_slash_Other_10_gml_66_0");
	}
	else
	{
		if (scr_litemcheck(8))
		{
			if (egcon == 0)
				egcon = 1;
		}
		scr_speaker("no_name");
		msgsetloc(0, "* tem still study..^1. study harb!!!/", "obj_tem_school_slash_Other_10_gml_59_0");
		msgnextloc("* tem get a SMART^1! go to COLLEG!^1! achieve DREAM!!/", "obj_tem_school_slash_Other_10_gml_60_0");
		msgnextloc("* then tem become..^1. TEM BECOME....!!/", "obj_tem_school_slash_Other_10_gml_61_0");
		msgnextloc("* Hahaha..^1. As if you could even envision it./%", "obj_tem_school_slash_Other_10_gml_62_0");
	}
}
myinteract = 3;
mydialoguer = instance_create(0, 0, obj_dialoguer);
if (global.darkzone == 1)
	image_speed = 0.1;
talked += 1;
