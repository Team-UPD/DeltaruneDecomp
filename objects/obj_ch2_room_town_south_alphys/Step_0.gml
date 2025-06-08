if (scr_havechar(2) && obj_mainchara.x < x && con == -1 && global.flag[336] == 0)
{
	con = 1;
	global.interact = 1;
	global.facing = 1;
	global.flag[336] = 1;
	scr_losechar();
	susxpos = obj_caterpillarchara.x;
	susypos = obj_caterpillarchara.y;
	nisesusie = scr_marker(susxpos, susypos, spr_susie_walk_left_lw);
	with (nisesusie)
		scr_depth();
	with (obj_caterpillarchara)
		instance_destroy();
}
if (con == 1)
{
	con = 3;
	leaveCounter++;
	scr_speaker("susie");
	if (leaveCounter == 1)
	{
		msgsetloc(0, "\\E0* Uh oh. Alphys. Hell if I'm going any further./", "obj_ch2_room_town_south_alphys_slash_Step_0_gml_33_0");
		msgnextloc("\\E0* Already close enough to getting banned from school./", "obj_ch2_room_town_south_alphys_slash_Step_0_gml_34_0");
		msgnextloc("\\E0* Don't wanna be banned from outside of school too./", "obj_ch2_room_town_south_alphys_slash_Step_0_gml_35_0");
		msgnextloc("\\E1* (..^1. that's a thing^1, right?)/%", "obj_ch2_room_town_south_alphys_slash_Step_0_gml_36_0");
	}
	else
	{
		msgsetloc(0, "\\E0* Alphys? You're on your own./%", "obj_ch2_room_town_south_alphys_slash_Step_0_gml_39_0");
	}
	d_make();
}
if (obj_mainchara.x > x && global.flag[336] == 1 && !scr_havechar(2))
{
	scr_getchar(2);
	scr_getchar(3);
	scr_makecaterpillar(obj_mainchara.x - 40, obj_mainchara.y - 7, 2, 0);
	with (obj_caterpillarchara)
		visible = 0;
}
if (obj_mainchara.x < x && global.flag[336] == 1 && scr_havechar(2))
{
	scr_losechar();
	with (obj_caterpillarchara)
		instance_destroy();
}
if (obj_mainchara.x > (x + 40) && global.flag[336] == 1)
{
	con = 4;
	global.interact = 1;
	global.flag[336] = 0;
	nisesusie.image_speed = 0.25;
	nisesusie.sprite_index = spr_susie_walk_left_lw;
}
if (con == 4)
{
	nisesusie.y = lerp(nisesusie.y, obj_caterpillarchara.y, 0.15);
	nisesusie.x = lerp(nisesusie.x, obj_caterpillarchara.x, 0.1);
	if (abs(nisesusie.x - obj_caterpillarchara.x) <= 4 && abs(nisesusie.y - obj_caterpillarchara.y) <= 4)
	{
		nisesusie.x = obj_caterpillarchara.x;
		nisesusie.sprite_index = obj_caterpillarchara.sprite_index;
		with (obj_caterpillarchara)
			visible = 1;
		with (nisesusie)
			instance_destroy();
		con = 5;
	}
}
if (con == 5)
{
	con = 3;
	scr_speaker("susie");
	msgsetloc(0, "\\E2* (Alright^1, let's go.)/%", "obj_ch2_room_town_south_alphys_slash_Step_0_gml_96_0");
	d_make();
}
if (con == 3 && !d_ex())
{
	global.interact = 0;
	con = -1;
}
