if (con == 1)
{
	con = 2;
	global.interact = 1;
	audio_sound_gain(global.currentsong[1], 0, 500);
	nise_kknpc = scr_dark_marker(355, 113, spr_npc_kk);
	nise_kknpc.image_index = kknpc.image_index;
	nise_kknpc.image_speed = kknpc.image_speed;
	with (nise_kknpc)
		scr_depth();
	instance_deactivate_object(kknpc);
	fadeout = instance_create(0, 0, obj_fadeout);
	fadeout.depth = 100;
}
if (con == 2)
{
	fade_timer++;
	if (fade_timer == 30)
	{
		scr_speaker("no_name");
		msgsetloc(0, "* (You were crushed under the weight of 400 bagels and defeated instantly...)/%", "obj_npc_musical_door_slash_Step_0_gml_30_0");
		d_make();
		snd_play(snd_bageldefeat);
	}
	if (fade_timer >= 120 && !d_ex())
		con = 3;
}
if (con == 3)
{
	con = 4;
	alarm[0] = 90;
}
if (con == 5)
{
	con = 6;
	alarm[0] = 30;
	instance_create(0, 0, obj_fadein);
	with (fadeout)
		instance_destroy();
	audio_sound_gain(global.currentsong[1], 1, 500);
	scr_speaker("no_name");
	msgsetloc(0, "* (Not really.)/", "obj_npc_musical_door_slash_Step_0_gml_56_0");
	msgnextloc("* (You just can't carry that many.)/%", "obj_npc_musical_door_slash_Step_0_gml_57_0");
	d_make();
}
if (con == 7 && !d_ex())
{
	con = 0;
	global.interact = 0;
	fade_timer = 0;
	with (nise_kknpc)
		instance_destroy();
	instance_activate_object(kknpc);
}
