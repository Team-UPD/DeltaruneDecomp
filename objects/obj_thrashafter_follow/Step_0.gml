if (followcon == 1)
{
	if (obj_mainchara.x >= (x + 100))
	{
		sprite_index = spr_lancer_rt;
		xval = 4;
		if (obj_mainchara.px > 4)
			xval = obj_mainchara.px;
		x += xval;
		followbuffer = 10;
	}
	if (obj_mainchara.x <= (x - 100))
	{
		sprite_index = spr_lancer_lt;
		xval = -4;
		if (obj_mainchara.px < -4)
			xval = obj_mainchara.px;
		x += xval;
		followbuffer = 10;
	}
	if (followbuffer <= 0)
		sprite_index = spr_lancer_dt;
}
followbuffer -= 1;
if (con == 1)
{
	x = obj_mainchara.x;
	con = 2;
}
if (con == 2)
{
	if (room == room_forest_afterthrash2)
	{
		if (obj_mainchara.x >= 500 && global.interact == 0 && global.flag[229] < 3)
		{
			global.interact = 1;
			global.facing = 2;
			with (obj_caterpillarchara)
			{
				fun = 1;
				sprite_index = usprite;
				image_index = 0;
			}
			global.fc = 5;
			global.fe = 3;
			global.typer = 32;
			global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_54_0");
			global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_55_0");
			scr_ralface(2, 8);
			global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_57_0");
			scr_lanface(4, 7);
			global.msg[5] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_59_0");
			global.msg[6] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_60_0");
			scr_susface(7, 0);
			global.msg[8] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_62_0");
			global.msg[9] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_63_0");
			scr_lanface(10, 1);
			global.msg[11] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_65_0");
			con = 4;
			instance_create(0, 0, obj_dialoguer);
			global.flag[229] = 3;
		}
		if (obj_mainchara.x >= 1400 && global.interact == 0 && global.flag[229] < 4)
		{
			global.interact = 1;
			global.fc = 1;
			global.fe = 0;
			global.typer = 30;
			global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_77_0");
			global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_78_0");
			global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_79_0");
			scr_ralface(3, 6);
			global.msg[4] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_81_0");
			scr_susface(5, 0);
			global.msg[6] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_83_0");
			scr_ralface(7, 1);
			global.msg[8] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_85_0");
			scr_susface(9, 7);
			global.msg[10] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_87_0");
			con = 6;
			instance_create(0, 0, obj_dialoguer);
			global.flag[229] = 4;
		}
		if (obj_mainchara.x >= 99999 && global.interact == 0 && global.flag[229] < 5)
		{
			global.interact = 1;
			global.fc = 2;
			global.fe = 8;
			global.typer = 32;
			global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_102_0");
			scr_susface(1, 0);
			global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_104_0");
			scr_ralface(3, 1);
			global.msg[4] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_106_0");
			scr_susface(5, 7);
			global.msg[6] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_108_0");
			con = 6;
			instance_create(0, 0, obj_dialoguer);
			global.flag[229] = 5;
		}
	}
	if (room == room_forest_afterthrash3)
	{
		if (obj_mainchara.x >= 360 && global.interact == 0 && global.flag[229] < 6)
		{
			global.interact = 1;
			global.facing = 1;
			followcon = 0;
			sprite_index = spr_lancer_rt;
			global.fc = 5;
			global.fe = 2;
			global.typer = 32;
			global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_129_0");
			scr_susface(1, 2);
			global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_131_0");
			con = 20;
			instance_create(0, 0, obj_dialoguer);
			global.flag[229] = 6;
		}
		if (obj_mainchara.x >= 1200 && global.interact == 0 && global.flag[229] < 7)
		{
			global.interact = 1;
			global.facing = 2;
			with (obj_caterpillarchara)
			{
				fun = 1;
				sprite_index = usprite;
				image_index = 0;
			}
			global.fc = 1;
			global.fe = 0;
			global.typer = 30;
			global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_151_0");
			scr_lanface(1, 3);
			global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_153_0");
			scr_susface(3, 6);
			global.msg[4] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_155_0");
			scr_lanface(5, 1);
			global.msg[6] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_157_0");
			con = 6;
			speclaugh = 1;
			instance_create(0, 0, obj_dialoguer);
			global.flag[229] = 7;
		}
	}
	if (room == room_forest_afterthrash4)
	{
		if (obj_mainchara.x >= 360 && global.interact == 0 && global.flag[229] < 8)
		{
			global.interact = 1;
			global.facing = 2;
			with (obj_caterpillarchara)
			{
				fun = 1;
				sprite_index = usprite;
				image_index = 0;
			}
			sprite_index = spr_lancer_dt;
			global.fc = 5;
			global.fe = 3;
			global.typer = 32;
			global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_187_0");
			global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_188_0");
			scr_ralface(2, 8);
			global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_190_0");
			global.msg[4] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_191_0");
			global.msg[5] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_192_0");
			scr_lanface(6, 6);
			global.msg[7] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_194_0");
			global.msg[8] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_195_0");
			scr_ralface(9, 1);
			global.msg[10] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_197_0");
			scr_lanface(11, 4);
			global.msg[12] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_199_0");
			con = 4;
			instance_create(0, 0, obj_dialoguer);
			global.flag[229] = 8;
		}
		if (obj_mainchara.x >= 800 && global.interact == 0 && global.flag[229] < 9)
		{
			global.interact = 1;
			sprite_index = spr_lancer_dt;
			global.fc = 1;
			global.fe = 0;
			global.typer = 30;
			global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_213_0");
			global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_214_0");
			scr_lanface(2, 2);
			global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_216_0");
			scr_susface(4, 2);
			global.msg[5] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_218_0");
			global.msg[6] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_219_0");
			scr_ralface(7, 6);
			global.msg[8] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_221_0");
			scr_susface(9, 2);
			global.msg[10] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_223_0");
			con = 4;
			instance_create(0, 0, obj_dialoguer);
			global.flag[229] = 9;
		}
		if (obj_mainchara.x >= 1200 && global.interact == 0 && global.flag[229] < 10)
		{
			global.interact = 1;
			global.fc = 1;
			global.fe = 12;
			global.typer = 30;
			global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_236_0");
			con = 4;
			instance_create(0, 0, obj_dialoguer);
			global.flag[229] = 10;
		}
	}
	if (room == room_forest_castleview)
	{
		if (obj_mainchara.x >= 720 && global.interact == 0 && global.flag[229] < 11)
		{
			global.interact = 1;
			global.facing = 2;
			with (obj_caterpillarchara)
			{
				fun = 1;
				sprite_index = usprite;
				image_index = 0;
			}
			con = 12;
			global.typer = 31;
			global.fc = 2;
			global.fe = 8;
			global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_265_0");
			scr_lanface(1, 2);
			global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_267_0");
			global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_268_0");
			global.msg[4] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_269_0");
			scr_susface(5, 0);
			global.msg[6] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_271_0");
			scr_ralface(7, 0);
			global.msg[8] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_273_0");
			global.msg[9] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_274_0");
			scr_susface(10, 0);
			global.msg[11] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_276_0");
			global.msg[12] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_277_0");
			scr_lanface(13, 6);
			global.msg[14] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_279_0");
			instance_create(0, 0, obj_dialoguer);
			global.flag[229] = 11;
		}
		if (obj_mainchara.x >= 1600 && global.interact == 0 && global.flag[229] < 12)
		{
			global.interact = 1;
			global.facing = 2;
			with (obj_caterpillarchara)
			{
				fun = 1;
				sprite_index = usprite;
				image_index = 0;
			}
			con = 100;
			followcon = 0;
			sprite_index = spr_lancer_rt_unhappy;
			global.typer = 32;
			global.fc = 5;
			global.fe = 6;
			global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_303_0");
			global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_304_0");
			global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_305_0");
			global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_306_0");
			scr_susface(4, 0);
			global.msg[5] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_308_0");
			global.msg[6] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_309_0");
			global.msg[7] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_310_0");
			global.msg[8] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_311_0");
			scr_lanface(9, "C");
			global.msg[10] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_313_0");
			instance_create(0, 0, obj_dialoguer);
			global.flag[229] = 12;
		}
	}
}
if (con == 4 && !d_ex())
{
	global.facing = 1;
	global.interact = 0;
	con = 2;
	followcon = 1;
	with (obj_caterpillarchara)
	{
		fun = 0;
		sprite_index = rsprite;
		image_index = 0;
	}
}
if (con == 6 && !d_ex())
{
	with (obj_caterpillarchara)
	{
		if (dsprite == spr_susied_dark)
		{
			fun = 1;
			sprite_index = spr_susier_dark_laugh;
			image_speed = 0.25;
		}
	}
	followcon = 0;
	sprite_index = spr_lancer_lt_laugh;
	image_speed = 0.25;
	ll = snd_play(snd_lancerlaugh);
	sl = snd_play(snd_suslaugh);
	snd_volume(ll, 0.8, 0);
	snd_volume(sl, 0.8, 0);
	con = 7;
	alarm[4] = 50;
}
if (con == 8)
{
	with (obj_caterpillarchara)
	{
		fun = 0;
		image_speed = 0;
		sprite_index = rsprite;
	}
	sprite_index = spr_lancer_dt;
	followcon = 1;
	image_speed = 0;
	global.interact = 0;
	con = 2;
	if (speclaugh == 1)
	{
		con = 9;
		global.interact = 1;
		with (obj_caterpillarchara)
		{
			fun = 0;
			image_speed = 0;
			sprite_index = usprite;
		}
	}
}
if (con == 9)
{
	con = 4;
	global.fe = 2;
	global.fc = 1;
	global.typer = 30;
	global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_393_0");
	global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_394_0");
	scr_lanface(2, 2);
	global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_396_0");
	global.msg[4] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_397_0");
	scr_susface(5, 6);
	global.msg[6] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_399_0");
	global.msg[7] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_400_0");
	instance_create(0, 0, obj_dialoguer);
}
if (con == 12)
{
	followcon = 0;
	if (x <= (obj_mainchara.x + 100))
		x += 10;
	else
		con = 4;
	sprite_index = spr_lancer_ut;
}
if (con >= 20 && con < 80)
{
	if (con == 20 && !d_ex())
	{
		depth = 800000;
		pointx = tree.x + 5;
		pointy = tree.y + 100;
		scr_markify_caterpillar();
		s.pointx = pointx;
		s.pointy = pointy;
		susx = s.x;
		susy = s.y;
		hspeed = 10;
		treecon = 1;
		sprite_index = spr_lancer_rt;
		with (s)
		{
			sprite_index = spr_susier_dark;
			scr_move_to_point_over_time(pointx, pointy - 10, 60);
			image_speed = 0.25;
		}
		con = 21;
		alarm[4] = 60;
	}
	if (con == 21)
	{
		with (s)
			scr_depth();
	}
	if (treecon == 1)
	{
		if (x >= (tree.x + 160))
		{
			hspeed = 0;
			vspeed = 10;
			sprite_index = spr_lancer_dt;
			treecon = 2;
		}
	}
	if (treecon == 2)
	{
		if (y >= pointy)
		{
			depth = 100000;
			vspeed = 0;
			hspeed = -10;
			sprite_index = spr_lancer_lt;
			treecon = 3;
		}
	}
	if (treecon == 3)
	{
		if (x <= (pointx + 65))
		{
			x = pointx + 55;
			scr_halt();
		}
	}
	if (con == 22)
	{
		sprite_index = spr_lancer_lt;
		with (s)
		{
			scr_halt();
			sprite_index = spr_susieu_dark_jump;
		}
		con = 23;
		jumps = 0;
		jsy = s.y;
		alarm[4] = 15;
	}
	if (con == 24)
	{
		con = 25;
		with (s)
		{
			y -= 3;
			vspeed = -6;
			gravity = 1;
		}
	}
	if (con == 25)
	{
		if (s.y >= (jsy - 6))
		{
			if (jumps < 2)
			{
				s.y = jsy;
				vspeed = 0;
				gravity = 0;
				con = 24;
				jumps += 1;
			}
			else
			{
				con = 26;
				alarm[4] = 20;
				with (s)
				{
					gravity = 0;
					vspeed = 0;
				}
				s.y = jsy;
			}
		}
	}
	if (con == 27)
	{
		with (s)
			sprite_index = spr_susier_dark;
		global.typer = 30;
		global.fc = 1;
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_545_0");
		scr_lanface(1, 3);
		global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_547_0");
		global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_548_0");
		scr_susface(4, 6);
		global.msg[5] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_550_0");
		scr_lanface(6, 2);
		global.msg[7] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_552_0");
		instance_create(0, 0, obj_dialoguer);
		con = 28;
		blender = 0;
	}
	if (con == 28 && !d_ex())
	{
		blender = 0;
		snd_play(snd_boost);
		con = 29;
		flash = scr_oflash();
		flash.flashspeed = 0;
		fmax = 0;
	}
	if (con == 29)
	{
		fmax += 0.2;
		if (instance_exists(flash))
			flash.siner = fmax;
		if (fmax >= 5)
			con = 30;
	}
	if (con == 30)
	{
		snd_play(snd_badexplosion);
		wh = instance_create(0, 0, obj_fadeout);
		wh.image_blend = c_white;
		con = 31;
		alarm[4] = 30;
	}
	if (con == 32)
	{
		sprite_index = spr_lancer_lt_stool;
		with (wh)
			instance_destroy();
		wh = instance_create(0, 0, obj_fadein);
		wh.fadespeed = -0.03;
		wh.image_blend = c_white;
		con = 33;
		alarm[4] = 40;
		with (flash)
			instance_destroy();
	}
	if (con == 34)
	{
		global.fe = 3;
		global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_608_0");
		scr_ralface(1, 1);
		global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_610_0");
		scr_susface(3, 2);
		global.msg[4] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_612_0");
		con = 35;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 35 && !d_ex())
	{
		iy = s.y - 40;
		with (s)
		{
			image_index = 1;
			hspeed = 6;
			y -= 6;
			vspeed = -9;
			gravity = 1;
		}
		con = 36;
	}
	if (con == 36)
	{
		if (s.y >= iy && s.vspeed >= 0)
		{
			with (s)
			{
				vspeed = 0;
				gravity = 0;
				hspeed = 0;
				image_index = 0;
			}
			con = 37;
			alarm[4] = 5;
		}
	}
	if (con == 38)
	{
		iy = s.y;
		with (s)
		{
			sprite_index = spr_susieu_dark_jump;
			y -= 5;
			vspeed = -11;
			gravity = 1;
		}
		con = 39;
	}
	if (con == 39)
	{
		if (s.vspeed >= 0)
		{
			with (tree)
				image_index = 1;
		}
		if (s.y >= (iy - 4))
		{
			with (s)
			{
				vspeed = 0;
				gravity = 0;
			}
			con = 39.1;
			alarm[4] = 5;
		}
	}
	if (con == 40.1)
	{
		with (s)
		{
			sprite_index = spr_susiel_dark;
			image_index = 1;
			hspeed = -4;
			y -= 6;
			vspeed = -6;
			gravity = 1;
		}
		con = 41;
	}
	if (con == 41)
	{
		if (s.y >= (jsy - 8))
		{
			s.y = jsy;
			sprite_index = spr_lancer_lt;
			with (s)
			{
				image_index = 0;
				hspeed = 0;
				gravity = 0;
				vspeed = 0;
			}
			con = 42;
		}
	}
	if (con == 42)
	{
		con = 43;
		alarm[4] = 15;
	}
	if (con == 44)
	{
		global.fc = 1;
		global.fe = 2;
		global.typer = 30;
		global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_723_0");
		scr_lanface(1, 3);
		global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_725_0");
		instance_create(0, 0, obj_dialoguer);
		con = 45;
	}
	if (con == 45 && !d_ex())
	{
		with (s)
			sprite_index = spr_susier_dark_unhappy;
		con = 46;
		alarm[4] = 15;
	}
	if (con == 47)
	{
		global.fc = 1;
		global.typer = 30;
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_742_0");
		scr_lanface(1, 6);
		global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_744_0");
		global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_745_0");
		scr_susface(4, 0);
		global.msg[5] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_747_0");
		instance_create(0, 0, obj_dialoguer);
		con = 48;
	}
	if (con == 48 && !d_ex())
	{
		with (s)
			hspeed = 4;
		con = 49;
		alarm[4] = 5;
	}
	if (con == 50)
	{
		with (s)
			scr_halt();
		con = 51;
		alarm[4] = 10;
	}
	if (con == 52)
	{
		global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_771_0");
		scr_lanface(1, 3);
		global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_773_0");
		global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_774_0");
		instance_create(0, 0, obj_dialoguer);
		con = 53;
	}
	if (con == 53 && !d_ex())
	{
		with (s)
		{
			hspeed = -4;
			image_speed = 0.25;
			sprite_index = spr_susiel_dark_unhappy;
		}
		con = 54;
		alarm[4] = 10;
	}
	if (con == 55)
	{
		with (s)
			scr_halt();
		con = 56;
		alarm[4] = 15;
	}
	if (con == 57)
	{
		global.typer = 30;
		global.fc = 1;
		global.fe = 0;
		global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_803_0");
		scr_lanface(1, 1);
		global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_805_0");
		instance_create(0, 0, obj_dialoguer);
		con = 58;
	}
	if (con == 59 && !d_ex())
	{
		candysong[0] = snd_init("fanfare.ogg");
		candysong[1] = mus_play(candysong[0]);
		global.fc = 0;
		global.typer = 52;
		global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_817_0");
		d = instance_create(0, 0, obj_dialoguer);
		d.skippable = 0;
		con = 60;
		alarm[4] = 30;
	}
	if (con == 58)
	{
		snd_pause(global.currentsong[1]);
		con = 59;
	}
	if (con == 61)
	{
		snd_free(candysong[0]);
		snd_resume(global.currentsong[1]);
		with (obj_dialoguer)
			instance_destroy();
		with (obj_writer)
			instance_destroy();
		global.typer = 30;
		global.fe = 7;
		global.fc = 1;
		global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_839_0");
		instance_create(0, 0, obj_dialoguer);
		con = 65;
	}
	if (con == 65 && !d_ex())
	{
		s.susx = susx;
		s.susy = susy;
		with (s)
		{
			sprite_index = spr_susiel_dark;
			scr_move_to_point_over_time(susx, susy, 40);
			image_speed = 0.25;
		}
		treecon = 10;
		con = 66;
		alarm[4] = 40;
	}
	if (con == 67)
	{
		global.facing = 1;
		with (s)
			instance_destroy();
		with (r)
			instance_destroy();
		with (obj_caterpillarchara)
			visible = 1;
		global.interact = 0;
		followcon = 1;
		con = 2;
	}
	if (treecon == 10)
	{
		sprite_index = spr_lancer_rt;
		hspeed = 8;
		treecon = 11;
	}
	if (treecon == 11)
	{
		if (x >= (tree.x + 160))
		{
			sprite_index = spr_lancer_dt;
			hspeed = 0;
			vspeed = -8;
			treecon = 12;
		}
	}
	if (treecon == 12)
	{
		if (y <= (ystart + 10))
		{
			depth = tree.depth + 1000;
			vspeed = 0;
			y = ystart;
			treecon = 13;
		}
	}
}
if (con >= 100 && con <= 150)
{
	if (con == 100 && !d_ex())
	{
		global.facing = 1;
		scr_caterpillar_facing(global.facing);
		scr_markify_caterpillar();
		with (s)
			sprite_index = spr_susier_dark;
		with (r)
			sprite_index = spr_ralseir;
		sprite_index = spr_lancer_rt_unhappy;
		hspeed = 6;
		con = 101;
	}
	if (con == 101 && x >= (obj_mainchara.x + 40))
	{
		hspeed = 0;
		global.typer = 32;
		global.fc = 5;
		global.fe = 6;
		global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_932_0");
		scr_susface(1, 2);
		global.msg[2] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_934_0");
		global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_935_0");
		scr_lanface(4, "C");
		global.msg[5] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_937_0");
		scr_susface(6, 0);
		global.msg[7] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_939_0");
		scr_lanface(8, 5);
		global.msg[9] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_941_0");
		con = 102;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 102 && !d_ex())
	{
		hspeed = 4;
		con = 103;
		alarm[4] = 10;
	}
	if (con == 104)
	{
		scr_halt();
		con = 105;
		alarm[4] = 30;
	}
	if (con == 106)
	{
		global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_962_0");
		global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_963_0");
		scr_susface(2, 0);
		global.msg[3] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_965_0");
		con = 107;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 107 && !d_ex())
	{
		hspeed = 4;
		con = 108;
		alarm[4] = 10;
	}
	if (con == 109)
	{
		hspeed = 0;
		con = 110;
		alarm[4] = 60;
	}
	if (con == 111)
	{
		with (s)
			sprite_index = spr_susier_dark_unhappy;
		snd_free_all();
		global.fc = 5;
		global.typer = 32;
		global.fe = 5;
		global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_991_0");
		global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_992_0");
		con = 112;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 112 && !d_ex())
	{
		global.currentsong[0] = snd_init("creepychase.ogg");
		global.currentsong[1] = mus_loop(global.currentsong[0]);
		hspeed = 18;
		con = 113;
		alarm[4] = 30;
		exc = instance_create(s.x + 20, s.y - 20, obj_excblcon);
	}
	if (con == 114)
	{
		with (exc)
			instance_destroy();
		global.fc = 1;
		global.typer = 30;
		global.fe = 9;
		global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_1013_0");
		global.msg[1] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_1014_0");
		con = 115;
		instance_create(0, 0, obj_dialoguer);
	}
	if (con == 115 && !d_ex())
	{
		with (s)
		{
			scr_depth();
			hspeed = 12;
			image_speed = 0.25;
		}
		con = 116;
		alarm[4] = 30;
	}
	if (con == 117 && !d_ex())
	{
		global.typer = 31;
		global.fc = 2;
		global.fe = 3;
		global.msg[0] = scr_84_get_lang_string("obj_thrashafter_follow_slash_Step_0_gml_1038_0");
		instance_create(0, 0, obj_dialoguer);
		con = 118;
	}
	if (con == 118 && !d_ex())
	{
		with (r)
		{
			scr_depth();
			hspeed = 12;
			image_speed = 0.25;
		}
		con = 119;
		alarm[4] = 30;
	}
	if (con == 120)
	{
		global.interact = 0;
		scr_losechar();
		global.facing = 0;
		con = 121;
		with (obj_mainchara)
			cutscene = 1;
		block = instance_create(__view_get(e__VW.XView, 0) - 40, 200, obj_soliddark);
		block.image_yscale = 20;
	}
}
