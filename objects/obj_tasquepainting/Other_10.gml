scr_speaker("no_name");
if (extflag == 1 && image_index == 0)
	msgsetloc(0, "* (The painting is labelled \"Task\".)/%", "obj_tasquepainting_slash_Other_10_gml_5_0");
if (extflag == 2 && image_index == 0)
	msgsetloc(0, "* (The painting is labelled \"Timberly\".)/%", "obj_tasquepainting_slash_Other_10_gml_10_0");
if (extflag == 3 && image_index == 0)
	msgsetloc(0, "* (The painting is labelled \"Tasq\".)/%", "obj_tasquepainting_slash_Other_10_gml_15_0");
if (extflag == 4 && image_index == 0)
	msgsetloc(0, "* (The painting is labelled \"Tasc\".)/%", "obj_tasquepainting_slash_Other_10_gml_20_0");
if (image_index == 1)
	msgsetloc(0, "* (The painting is empty.)/%", "obj_tasquepainting_slash_Other_10_gml_25_0");
d = d_make();
global.interact = 1;
myinteract = 1;
talked++;
