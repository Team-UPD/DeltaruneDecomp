var dialogue = 0;
if (i_ex(obj_kris_headobj))
{
	dialogue = 1;
	if (obj_kris_headobj.miceheld >= micerequired)
		dialogue = 2;
}
if (completed == 1)
	dialogue = 3;
myinteract = 3;
scr_speaker("no_name");
msgsetloc(0, "* Looks like a hole to put mice in^1, but you don't have any mice./%", "obj_mouseballoon_pillar_slash_Other_10_gml_17_0");
if (dialogue == 1)
	msgsetloc(0, "* (You don't have enough mice to fill up the hole.)/%", "obj_mouseballoon_pillar_slash_Other_10_gml_19_0");
if (dialogue == 2)
{
	msgsetloc(0, "* (You put the mice in the hole.)/%", "obj_mouseballoon_pillar_slash_Other_10_gml_22_0");
	myinteract = 1;
}
if (dialogue == 3)
	msgsetloc(0, "* (It's full of mice.)/%", "obj_mouseballoon_pillar_slash_Other_10_gml_26_0");
global.interact = 1;
mydialoguer = instance_create(0, 0, obj_dialoguer);
