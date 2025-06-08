var dialogue = 0;
if (i_ex(obj_kris_headobj))
	dialogue = 1;
if (completed == 1)
	dialogue = 3;
myinteract = 3;
scr_speaker("no_name");
if (dialogue == 1)
{
	msgsetloc(0, "* (You put the bucket in the hole.)/%", "obj_mouseballoon_pillar_bucket_slash_Other_10_gml_15_0");
	myinteract = 1;
}
if (dialogue == 3)
	msgsetloc(0, "* (It's full of bucket.)/%", "obj_mouseballoon_pillar_bucket_slash_Other_10_gml_19_0");
global.interact = 1;
mydialoguer = instance_create(0, 0, obj_dialoguer);
