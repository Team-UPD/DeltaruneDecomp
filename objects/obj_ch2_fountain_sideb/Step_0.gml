if (con == 5 && !instance_exists(obj_writer))
{
	con = 7;
	scr_speaker("sneo");
	msgsetloc(0, "* NOT!!!/%", "obj_ch2_fountain_sideb_slash_Step_0_gml_7_0");
	var d = d_make();
	d.side = 1;
}
if (con == 7 && !d_ex())
{
	con = 8;
	obj_mainchara.x = obj_fountainkris_ch2_sideb.x;
	obj_mainchara.y = obj_fountainkris_ch2_sideb.y;
	sneo = instance_create(255, cameray() - 300, obj_spamton_neo_enemy);
	sneo.myself = 1;
	sneo.facing = 1;
	sneo.gravity = shortened ? 0 : 4;
	sneo.shadow_amount = shortened ? 0 : 1;
	sneo.partmode = 30;
}
if (con == 8)
{
	if (sneo != noone)
	{
		if (sneo.y >= (obj_fountainkris_ch2_sideb.y - 100))
		{
			con = 9;
			alarm[4] = 60;
			snd_play(snd_hurt1);
			snd_play(snd_damage);
			with (sneo)
			{
				gravity = 0;
				vspeed = 0;
			}
			draw_kris = false;
			with (obj_mainchara)
			{
				visible = 1;
				fun = 1;
				sprite_index = spr_kris_dw_landed;
				image_speed = 0;
				hspeed = -18;
				friction = 0.6;
			}
		}
	}
}
if (con == 10)
{
	with (sneo)
		gravity = -2;
	if (sneo.y <= (cameray() - 200))
	{
		con = 11;
		sneo.gravity = 0;
		sneo.x = 460;
		sneo.y = cameray() - 200;
	}
}
if (con == 11)
{
	sneo.gravity = 4;
	if (sneo.y >= (obj_fountainkris_ch2_sideb.y - 100))
	{
		con = 12;
		alarm[4] = 60;
		with (sneo)
		{
			gravity = 0;
			vspeed = 0;
		}
		sneo.partmode = 33;
		scr_lerpvar_instance(sneo, "shadow_amount", 1, 0, 30);
	}
}
if (con == 13)
{
	con = 14;
	cutscene_master = scr_cutscene_make();
	scr_maincharacters_actors();
	c_sel(kr);
	c_facing("r");
	c_speaker("sneo");
	c_msgside("top");
	c_speaker("sneo");
	c_msgsetloc(0, "* HOLY [[Cungadero]] DO I FEEL GOOD .../%", "obj_ch2_fountain_sideb_slash_Step_0_gml_112_0");
	c_talk_wait();
	c_wait(60);
	c_actortokris();
	c_terminatekillactors();
}
