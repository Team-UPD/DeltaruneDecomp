if (scr_debug())
{
}
if (drawpic == 1)
{
	draw_sprite_ext(pic, 0, picx, picy, 1, 1, 0, c_white, ceil(con_alph * 4) / 4);
	draw_sprite_ext(picb, 0, picxb, picyb, 1, 1, 0, c_white, ceil(con_alphb * 4) / 4);
}
if (con == 3)
{
	pic = spr_introimage2;
	picb = 316;
	picyb = -50;
	con = 3.1;
	con_alphb = 0;
	contimer = -100;
	chunkfade = 0;
	drawpic = 1;
	flamecon = 0;
	flamesiner = 0;
	flamealph = 1;
	flamey = 0;
	global.typer = 41;
}
if (con == 3.1)
{
	if (con_alph < 1 && contimer < 200)
		con_alph += 0.01;
	flamesiner++;
	contimer++;
	if (contimer == 20)
	{
		msgsetloc(0, "When the LIGHT is&subsumed by SHADOW", "obj_legend_neo_slash_Draw_0_gml_38_0");
		wx = 88;
		if (jp)
			wx = 62;
		w = instance_create(wx, 185, obj_writer);
	}
	if (contimer == 200)
	{
		with (w)
			instance_destroy();
		msgsetloc(0, "When the FOUNTAINS fill the sky", "obj_legend_neo_slash_Draw_0_gml_46_0");
		wx = 37;
		if (jp)
			wx = 83;
		w = instance_create(wx, 185, obj_writer);
	}
	if (contimer >= 200 && contimer <= 300)
	{
		if (con_alphb < 1)
			con_alphb += 0.02;
		if (picyb < 0)
			picyb += 0.5;
		if (picy < 80)
			picy += 0.5;
	}
	if (contimer == 400)
	{
		flamecon = 1;
		flamealph = 0.7;
		wave_siner = 0;
		flameya = room_height - 30;
		flameyb = room_height;
		wave_maxa = sprite_get_height(spr_cutscene_27_3_fire_1);
		wave_maxb = sprite_get_height(spr_cutscene_27_3_fire_2);
		with (w)
			instance_destroy();
		msgsetloc(0, "All will fall into CHAOS.", "obj_legend_neo_slash_Draw_0_gml_69_0");
		wx = 63;
		if (jp)
			wx = 55;
		w = instance_create(wx, 185, obj_writer);
	}
	if (contimer == 600)
	{
		with (w)
			instance_destroy();
		pic = picb;
		picy = picyb;
		pic = picb;
		con_alphb = 0;
		picb = 317;
		msgsetloc(0, "The TITANS will take&form from the FOUNTAINS", "obj_legend_neo_slash_Draw_0_gml_80_0");
		wx = 69;
		if (jp)
			wx = 65;
		w = instance_create(wx, 185, obj_writer);
	}
	if (contimer >= 600 && contimer <= 680)
	{
		if (con_alphb < 1)
			con_alphb += 0.01;
	}
	if (contimer == 800)
	{
		pic = picb;
		picy = picyb;
		pic = picb;
		con_alphb = 0;
		picb = 318;
		with (w)
			instance_destroy();
		msgsetloc(0, "          And envelop&   the land in devastation.", "obj_legend_neo_slash_Draw_0_gml_99_0");
		wx = 43;
		if (jp)
			wx = 48;
		w = instance_create(wx, 185, obj_writer);
	}
	if (contimer >= 800 && contimer <= 980)
	{
		if (con_alphb < 1)
			con_alphb += 0.01;
	}
	if (contimer >= 1030 && contimer <= 1130)
	{
		with (w)
			instance_destroy();
		con_alph = 0;
		if (con_alphb > 0)
			con_alphb -= 0.01;
		if (flamealph > 0)
			flamealph -= 0.01;
	}
	if (contimer == 1160)
	{
		contimer = 0;
		con = 4;
	}
	if (flamecon == 1)
	{
		if (flameya > (room_height - wave_maxa))
			flameya -= 1.5;
		if (flameyb > (room_height - wave_maxb))
			flameyb--;
		thickness = 2;
		wave_siner++;
		flamesiner++;
		draw_set_alpha(flamealph);
		for (i = 0; i < wave_maxa; i += thickness)
			draw_sprite_part(spr_cutscene_27_3_fire_1, 0, 0, i * thickness, 400, thickness + 2, -10 + (sin((wave_siner + (i * 8)) / 30) * 12), (i * thickness) + flameya + (sin(flamesiner / 16) * 3));
		draw_set_alpha(1);
	}
}
if (con == 4)
{
	con = 5;
	contimer = 0;
	pic = spr_cutscene_27_4;
	picb = 322;
	con_alph = 0;
	con_alphb = 0;
	picx = 48;
	picy = 60;
	picxb = 48;
	picyb = 60;
	global.typer = 41;
}
if (con == 5)
{
	contimer++;
	if (contimer == 30)
	{
		msgsetloc(0, "The surviving Darkners,&crushed by the darkness", "obj_legend_neo_slash_Draw_0_gml_167_0");
		wx = 69;
		if (jp)
			wx = 58;
		w = instance_create(wx, 185, obj_writer);
	}
	if (contimer <= 100)
	{
		if (con_alph <= 1)
			con_alph += 0.01;
	}
	if (contimer == 240)
	{
		with (w)
			instance_destroy();
		msgsetloc(0, "Will slowly, one by one,&turn into statues...", "obj_legend_neo_slash_Draw_0_gml_180_0");
		wx = 67;
		if (jp)
			wx = 55;
		w = instance_create(wx, 185, obj_writer);
	}
	if (contimer >= 240 && contimer <= 360)
	{
		if (con_alphb <= 1)
			con_alphb += 0.01;
	}
	if (contimer == 420)
	{
		pic = picb;
		picb = 323;
		con_alphb = 0;
		with (w)
			instance_destroy();
		msgsetloc(0, "Leaving the Lightners&to fend for themselves", "obj_legend_neo_slash_Draw_0_gml_196_0");
		wx = 73;
		if (jp)
			wx = 58;
		w = instance_create(wx, 185, obj_writer);
	}
	if (contimer >= 420 && contimer <= 520)
	{
		if (con_alphb <= 1)
			con_alphb += 0.01;
	}
	if (contimer == 600)
	{
		pic = picb;
		picb = 324;
		con_alphb = 0;
		with (w)
			instance_destroy();
		msgsetloc(0, "Lost eternally in an&    endless night...", "obj_legend_neo_slash_Draw_0_gml_211_0");
		wx = 81;
		if (jp)
			wx = 69;
		w = instance_create(wx, 185, obj_writer);
	}
	if (contimer >= 600 && contimer <= 700)
	{
		if (con_alphb <= 1)
			con_alphb += 0.01;
	}
	if (contimer == 840)
	{
		pic = picb;
		con_alphb = 0;
		with (w)
			instance_destroy();
		msgsetloc(0, "Is that your idea&  of paradise?", "obj_legend_neo_slash_Draw_0_gml_225_0");
		snd_volume(global.currentsong[1], 0, 200);
		wx = 103;
		if (jp)
			wx = 90;
		w = instance_create(wx, 185, obj_writer);
	}
	if (contimer >= 840)
		con_alph -= 0.01;
	if (contimer == 1080)
		instance_create(0, 0, obj_fadeout);
	if (contimer == 1100 && skipped == 0)
	{
		snd_free_all();
		global.flag[6] = 0;
		instance_create(0, 0, obj_persistentfadein);
		if (scr_sideb_get_phase() < 2)
			room_goto(room_dw_mansion_top_post);
		else
			room_goto(room_dw_mansion_top);
	}
}
if (border == 1)
{
	draw_set_color(c_black);
	draw_rectangle(-10, -10, 330, 27, false);
	draw_rectangle(-10, -10, 59, 300, false);
	draw_rectangle(400, -10, 260, 300, false);
	draw_rectangle(-10, 400, 330, 138, false);
}
if (border == 2)
{
	draw_set_color(c_black);
	draw_rectangle(-10, 180, 999, 482, false);
}
if (chunkfade == 0 && chunkamt > 0)
	chunkamt -= fadespeed;
if (chunkfade == 1 && chunkamt < 1)
	chunkamt += fadespeed;
draw_set_color(fadecolor);
alph = 0;
if (chunkamt >= 0.25)
	alph = 0.25;
if (chunkamt >= 0.5)
	alph = 0.5;
if (chunkamt >= 0.75)
	alph = 0.75;
if (chunkamt >= 1)
	alph = 1;
draw_set_alpha(alph);
draw_rectangle(-10, -10, 330, 330, false);
draw_set_alpha(1);
if (ingame == 0)
{
	if (button1_p() && skipped == 0)
	{
		skipped = 1;
		skiptimer = 0;
		f = instance_create(0, 0, obj_fadeout);
		f.fadespeed = 0.08;
		mus_volume(global.currentsong[1], 0, 15);
	}
	if (skipped == 1)
		skiptimer += 1;
	if (skiptimer == 19)
	{
		snd_free(global.currentsong[0]);
		global.flag[6] = 0;
	}
	if (skiptimer == 20)
		room_goto(PLACE_LOGO);
}
