if (con == 10 && !d_ex())
{
	con = 11;
	alarm[0] = 30;
	global.interact = 3;
	mus_volume(global.currentsong[1], 0, 14);
	instance_create(0, 0, obj_fadeout);
}
if (con == 12)
{
	snd_free(global.currentsong[0]);
	room_goto(room_shop_ch2_spamton);
}
if (con == 20)
{
	con = 49;
	alarm[0] = 30;
	global.interact = 1;
	scr_smallface(0, "susie", 7, "right", "bottom", stringsetloc("Kris?", "obj_ch2_room_spamton_shop_exterior_slash_Step_0_gml_32_0"));
	scr_speaker("susie");
	msgsetloc(0, "\\E0* ..^1. what kinda creepy stuff were you buying anyway?/", "obj_ch2_room_spamton_shop_exterior_slash_Step_0_gml_35_0");
	msgnextloc("\\EA* Nah..^1. like I even wanna know. Yikes./", "obj_ch2_room_spamton_shop_exterior_slash_Step_0_gml_36_0");
	scr_anyface_next("ralsei", "G");
	msgnextloc("\\EG* She said she hoped if it was candy^1, you'd share with her.../", "obj_ch2_room_spamton_shop_exterior_slash_Step_0_gml_38_0");
	scr_anyface_next("susie", "H");
	msgnextloc("\\EH* SHUT UP!!!\\f0/%", "obj_ch2_room_spamton_shop_exterior_slash_Step_0_gml_40_0");
	d_make();
}
if (con == 50 && !d_ex())
{
	con = 59;
	alarm[0] = 30;
}
if (con == 60 && !i_ex(obj_cutscene_master))
{
	con = 0;
	global.interact = 0;
	global.facing = 0;
	global.flag[386] = 2;
	instance_destroy();
}
