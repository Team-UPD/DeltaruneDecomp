if (obj_mainchara.x > 140 && obj_mainchara.x < 200 && obj_mainchara.y < y && con == -1 && cantrigger)
{
	con = 1;
	cantrigger = false;
	global.interact = 1;
	global.facing = 0;
	obj_mainchara.y = y + 1;
	global.msc = 1059;
	scr_text(global.msc);
	d_make();
}
if (con == 5)
{
	con = 10;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	c_sel(kr);
	to = 3;
	to_actor = instance_create(-200, -200, obj_actor);
	scr_actor_setup(to, to_actor, "toriel");
	to_actor.sprite_index = spr_toriel_dt;
	c_sel(to);
	c_visible(0);
}
if (con == 10)
{
	con = 2;
	mus_volume(global.currentsong[1], 0, 60);
	c_speaker("susie");
	c_msgsetloc(0, "\\E0* Alright..../%", "obj_ch2_scene30a_slash_Step_0_gml_41_0");
	c_talk_wait();
	c_sel(kr);
	c_walkdirect(140, 200, 30);
	c_delayfacing(31, "r");
	c_sel(su);
	c_walkdirect_wait(179, 195, 30);
	c_facing("l");
	c_msgside("top");
	c_speaker("susie");
	c_msgsetloc(0, "\\E1* Then..^1. guess it's goodbye for today./%", "obj_ch2_scene30a_slash_Step_0_gml_56_0");
	c_talk_wait();
	c_sel(su);
	c_facing("r");
	c_speaker("susie");
	c_msgsetloc(0, "\\EL* See ya tomorrow^1, Kris.../%", "obj_ch2_scene30a_slash_Step_0_gml_64_0");
	c_talk_wait();
	c_facing("susieunhappy");
	c_walk("d", 0.5, 60);
	c_wait(60);
	c_soundplay(snd_dooropen);
	c_var_instance(torieldoor, "visible", 0);
	c_sprite(spr_cutscene_03b_susie_shock_lw);
	c_sel(to);
	c_visible(1);
	c_setxy(157, 142);
	c_speaker("toriel");
	c_msgsetloc(0, "* Kris^1! How was studying with your.../%", "obj_ch2_scene30a_slash_Step_0_gml_82_0");
	c_talk_wait();
	c_sel(kr);
	c_facing("u");
	c_sel(to);
	c_emote("!", 30);
	c_sel(su);
	c_facing("u");
	c_emote("!", 30);
	c_wait(60);
	c_sel(to);
	c_autowalk(0);
	c_sprite(spr_cutscene_30b_toriel_laugh);
	c_imagespeed(0.25);
	c_speaker("toriel");
	c_msgsetloc(0, "\\E4* Why^1, Kris^1, is that your friend?/%", "obj_ch2_scene30a_slash_Step_0_gml_103_0");
	c_talk_wait();
	c_autowalk(1);
	c_facing("d");
	c_msgsetloc(0, "\\E0* Why don't you invite her inside?/%", "obj_ch2_scene30a_slash_Step_0_gml_109_0");
	c_talk_wait();
	c_sel(su);
	c_facing("l");
	c_delayfacing(15, "r");
	c_delayfacing(30, "l");
	c_delayfacing(45, "r");
	c_speaker("susie");
	c_msgsetloc(0, "\\EG* U-uhh^1, I mean^1, I..^1. uh.../%", "obj_ch2_scene30a_slash_Step_0_gml_119_0");
	c_talk_wait();
	c_sel(su);
	c_facing("r");
	c_sel(kr);
	c_facing("r");
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* (Kris^1, I should^1, um^1, probably get going^1, and...)/%", "obj_ch2_scene30a_slash_Step_0_gml_130_0");
	c_talk_wait();
	c_sel(su);
	c_facing("u");
	c_speaker("toriel");
	c_msgsetloc(0, "\\E4* I was going to bake a pie..^1. Did you want any?/%", "obj_ch2_scene30a_slash_Step_0_gml_138_0");
	c_talk_wait();
	c_sel(su);
	c_facing("r");
	c_speaker("susie");
	c_msgsetloc(0, "\\E6* .../%", "obj_ch2_scene30a_slash_Step_0_gml_146_0");
	c_talk_wait();
	c_sel(su);
	c_facing("u");
	c_speaker("susie");
	c_msgsetloc(0, "\\EK* (Guess I can come over for a bit.)/%", "obj_ch2_scene30a_slash_Step_0_gml_154_0");
	c_talk_wait();
	c_var_instance(housetop, "depth", 110);
	c_sel(to);
	c_walk("u", 1, 60);
	c_sel(kr);
	c_walkdirect(158, 172, 60);
	c_delaywalk(61, "u", 0.5, 60);
	c_sel(su);
	c_walkdirect(153, 172, 80);
	c_delaywalk(81, "u", 0.5, 60);
	c_wait(20);
	c_sel(to);
	c_var_lerp("image_alpha", 1, 0, 30);
	c_fadeout(60);
	c_wait(60);
	c_actortokris();
	c_terminatekillactors();
}
if (con == 2 && !i_ex(obj_cutscene_master))
{
	global.interact = 0;
	global.facing = 0;
	con = 0;
	with (obj_mainchara)
		visible = 1;
	room_goto(room_torhouse);
	instance_destroy();
}
if (con == 6 && !d_ex())
{
	con = -1;
	global.interact = 0;
	global.facing = 0;
	cantrigger = true;
}
