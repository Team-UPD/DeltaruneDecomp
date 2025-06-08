if (con == 1 && !d_ex())
{
	global.interact = 1;
	timer++;
	if (timer >= 15)
		con = 2;
}
if (con == 2)
{
	con = 3;
	snd_play(snd_dooropen);
	floppy_door.sprite_index = spr_bg_city_floppydoor_open;
	othernpc = scr_dark_marker(214, 102, spr_npc_iconman_alt);
	othernpc.depth = 899900;
	scr_speaker("no_name");
	msgsetloc(0, "* They're talking about me!!!/%", "obj_ch2_room_city_susie_ralsei_fun_2_slash_Step_0_gml_25_0");
	d_make();
}
if (con == 3 && !d_ex())
{
	con = 4;
	timer = 0;
	snd_play(snd_doorclose);
	floppy_door.sprite_index = spr_bg_city_floppydoor_closed;
	instance_destroy(othernpc);
	global.interact = 0;
}
