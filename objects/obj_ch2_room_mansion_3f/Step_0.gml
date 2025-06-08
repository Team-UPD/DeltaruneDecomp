if (obj_mainchara.x >= 415 && con == -1)
{
	con = 1;
	global.interact = 1;
	global.facing = 1;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	be = actor_count + 1;
	be_actor = instance_create(berdly_marker.x, berdly_marker.y, obj_actor);
	scr_actor_setup(be, be_actor, "berdly");
	be_actor.sprite_index = spr_berdly_walk_left_dw;
	scr_losechar();
	if (i_ex(obj_caterpillarchara))
		instance_destroy(obj_caterpillarchara);
}
if (con == 1)
{
	con = 49;
	alarm[0] = 30;
	with (berdly_marker)
		instance_destroy();
	c_sel(kr);
	c_facing("r");
	c_sel(su);
	c_facing("r");
	c_walkdirect(su_actor.x, 170, 18);
	c_sel(ra);
	c_facing("r");
	c_walkdirect(ra_actor.x, 198, 18);
	c_pannable(1);
	c_panspeed(4, 0, 50);
	c_wait(19);
	c_sel(su);
	c_walkdirect(384, 170, 12);
	c_sel(ra);
	c_walkdirect(kr_actor.x - 60, 198, 12);
	c_wait(18);
	c_sel(su);
	c_facing("r");
	c_sel(ra);
	c_facing("r");
	c_wait(1);
	c_wait(15);
	c_msgside("bottom");
	c_speaker("berdly");
	c_msgsetloc(0, "\\EE* Kris^1, Susan..^1. Glad to see you arrive unwounded./", "obj_ch2_room_mansion_3f_slash_Step_0_gml_50_0");
	c_msgnextloc("\\E6* Now^1, let us hasten!/%", "obj_ch2_room_mansion_3f_slash_Step_0_gml_51_0");
	c_talk_wait();
	c_var_instance(id, "hide_entrance", true);
	c_sel(be);
	c_walk_wait("l", 6, 12);
	c_walk_wait("u", 6, 6);
	c_soundplay(snd_noise);
	c_var_lerp_instance(bookcase, "x", bookcase.x, bookcase.x + 70, 20);
	c_wait(15);
	c_facing("l");
	c_autowalk(0);
	c_walk("r", 4, 12);
	c_imagespeed(0.25);
	c_wait(11);
	c_halt();
	c_speaker("berdly");
	c_msgsetloc(0, "\\E7* Through here is a secret passageway to the roof!/", "obj_ch2_room_mansion_3f_slash_Step_0_gml_77_0");
	c_msgnextloc("\\E4* There^1, we can enrescue-fy Lady Noelle./", "obj_ch2_room_mansion_3f_slash_Step_0_gml_78_0");
	c_facenext("susie", "0");
	c_msgnextloc("\\E0* Uhh^1, okay./%", "obj_ch2_room_mansion_3f_slash_Step_0_gml_80_0");
	c_talk_wait();
	c_sel(su);
	c_walkdirect_wait(384, 118, 12);
	c_walkdirect_wait(545, 118, 30);
	c_wait(5);
	c_facing("l");
	c_speaker("susie");
	c_msgsetloc(0, "\\E1* Let's go^1, Kris./%", "obj_ch2_room_mansion_3f_slash_Step_0_gml_91_0");
	c_talk_wait();
	c_wait(30);
	c_sel(be);
	c_autowalk(1);
	c_facing("d");
	c_sel(su);
	c_facing("r");
	c_speaker("berdly");
	c_msgsetloc(0, "\\E3* Oh^1, Kris. Kris is.../%", "obj_ch2_room_mansion_3f_slash_Step_0_gml_105_0");
	c_talk_wait();
	c_sel(be);
	c_facing("l");
	c_wait(5);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E4* Kris^1! You and your \\cYlackey\\cW distract Queen!/%", "obj_ch2_room_mansion_3f_slash_Step_0_gml_115_0");
	c_talk_wait();
	c_walk("l", 4, 12);
	c_speaker("berdly");
	c_msgsetloc(0, "\\E6* Let's go^1, Susie^1! Just the two of us^1! Haha!/", "obj_ch2_room_mansion_3f_slash_Step_0_gml_122_0");
	c_facenext("susie", "K");
	c_msgnextloc("\\EK* Fine^1, whatever!/%", "obj_ch2_room_mansion_3f_slash_Step_0_gml_124_0");
	c_talk_wait();
	c_sel(be);
	c_walkdirect(607, 102, 10);
	c_var_instance(id, "berdly_exit", true);
	c_sel(su);
	c_walk_wait("r", 4, 16);
	c_facing("u");
	c_autowalk(0);
	c_imagespeed(0.25);
	c_walkdirect(606, 91, 10);
	c_var_instance(id, "susie_exit", true);
	c_wait(40);
	c_sel(be);
	c_visible(0);
	c_sel(su);
	c_visible(0);
	c_soundplay(snd_noise);
	c_var_lerp_instance(bookcase, "x", bookcase.x + 70, bookcase.x, 20);
	c_wait(30);
	c_panobj(kr_actor, 15);
	c_wait(16);
	c_pannable(0);
	c_sel(ra);
	c_walkdirect(kr_actor.x - 60, kr_actor.y - 7, 15);
	c_wait(15);
	c_sel(kr);
	c_facing("l");
	c_wait(1);
	c_sel(ra);
	c_facing("r");
	c_msc(1167);
	c_talk_wait();
	c_waitcustom();
}
if (con == 50 && !d_ex() && customcon == 1)
{
	con = 51;
	scr_getchar(3);
	scr_makecaterpillar(kr_actor.x + 40, kr_actor.y - 7, 3, 0);
	with (obj_caterpillarchara)
		visible = 0;
}
if (con == 51)
{
	con = 60;
	c_waitcustom_end();
	c_sel(ra);
	c_facing("l");
	c_actortokris();
	c_actortocaterpillar();
	c_terminatekillactors();
}
if (con == 60 && !i_ex(obj_cutscene_master))
{
	with (obj_caterpillarchara)
		scr_caterpillar_interpolate();
	con = 99;
	global.plot = 125;
	global.interact = 0;
	global.facing = 0;
	var savepoint = instance_create(260, 300, obj_savepoint);
	with (savepoint)
		scr_depth();
}
if (berdly_exit)
{
	berdly_shadow = clamp(berdly_shadow + 0.2, 0, 1);
	var shadow = berdly_shadow;
	with (be_actor)
		color_blend = merge_color(c_white, make_color_hsv(0, 0, 0), shadow);
	if (berdly_shadow >= 1)
		berdly_exit = false;
}
if (susie_exit)
{
	susie_shadow = clamp(susie_shadow + 0.2, 0, 1);
	var shadow = susie_shadow;
	with (su_actor)
		color_blend = merge_color(c_white, make_color_hsv(0, 0, 0), shadow);
	if (susie_shadow >= 1)
		susie_exit = false;
}
if (hide_entrance)
{
	hide_entrance = false;
	layer_set_visible("Tiles_ExitBlock", 1);
	var exit_collider = instance_create(240, 360, obj_soliddark);
	exit_collider.image_xscale = 2;
}
