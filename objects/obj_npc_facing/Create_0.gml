dtsprite = spr_toriel_dt;
rtsprite = spr_toriel_rt;
ltsprite = spr_toriel_lt;
utsprite = spr_toriel_ut;
myinteract = 0;
facing = 0;
dfacing = 0;
image_speed = 0;
talked = 0;
ourcase = 0;
if (global.darkzone == 1)
{
	image_xscale = 2;
	image_yscale = 2;
}
normalanim = 1;
remanimspeed = 0;
depthbonus = 0;
depthcancel = 0;
if (room == room_alphysclass)
{
	facing = 2;
	dfacing = 2;
	ourcase = 1;
	if (y < 172)
	{
		dtsprite = spr_noelle_dt;
		rtsprite = spr_noelle_ut_r;
		utsprite = spr_noelle_ut;
		ltsprite = spr_noelle_ut_l;
		if (x > 120)
		{
			utsprite = spr_berdly_ut;
			rtsprite = spr_berdly_ut_r;
			ltsprite = spr_berdly_ut_l;
			dtsprite = spr_berdly_ut;
		}
	}
	if (y > 172)
	{
		dtsprite = spr_catti_ut;
		utsprite = spr_catti_ut;
		rtsprite = spr_catti_ut;
		ltsprite = spr_catti_ut;
		if (x > 120)
		{
			dtsprite = spr_mkid_ut;
			rtsprite = spr_mkid_ut_r;
			ltsprite = spr_mkid_ut_l;
			utsprite = spr_mkid_ut;
		}
	}
	if (y > 212)
	{
		dtsprite = spr_jockington_ut;
		utsprite = spr_jockington_ut;
		rtsprite = spr_jockington_rt;
		ltsprite = spr_jockington_lt;
		if (x > 120)
		{
			utsprite = spr_snowy_ut;
			ltsprite = spr_snowy_ut_l;
			rtsprite = spr_snowy_ut_r;
			dtsprite = spr_snowy_ut;
		}
	}
	if (y < 100)
	{
		facing = 0;
		dfacing = 0;
		dtsprite = spr_alphysd;
		ltsprite = spr_alphysl;
		rtsprite = spr_alphysr;
		utsprite = spr_alphysu;
	}
}
if (room == room_field2)
{
	facing = 0;
	dfacing = 0;
	dtsprite = spr_lancer_dt;
	utsprite = spr_lancer_dt;
	rtsprite = spr_lancer_rt;
	ltsprite = spr_lancer_lt;
	if (room == room_field2)
	{
		if (global.plot >= 35)
			instance_destroy();
	}
}
if (room == room_forest_maze_deadend)
{
	facing = 0;
	dfacing = 0;
	if (global.plot < 95)
		global.plot = 95;
	global.flag[293] += 1;
	dtsprite = spr_lancer_dt;
	utsprite = spr_lancer_dt;
	rtsprite = spr_lancer_rt;
	ltsprite = spr_lancer_lt;
	if (global.plot >= 120)
		instance_destroy();
}
if (room == room_forest_maze_deadend2)
{
	facing = 2;
	dfacing = 2;
	global.flag[294] += 1;
	dtsprite = spr_susied_dark;
	utsprite = spr_susieu_dark;
	rtsprite = spr_susier_dark;
	ltsprite = spr_susiel_dark;
	if (global.plot >= 120)
		instance_destroy();
}
if (room == room_field_boxpuzzle)
{
	type = 0;
	if (x < (room_width / 2))
	{
		sprite_index = spr_ralseid;
		dtsprite = spr_ralseid;
		utsprite = spr_ralseiu;
		rtsprite = spr_ralseir;
		ltsprite = spr_ralseil;
		y += sprite_height;
	}
	else
	{
		type = 1;
		sprite_index = spr_susied;
		dtsprite = spr_susied_dark;
		utsprite = spr_susieu_dark;
		rtsprite = spr_susier_dark;
		ltsprite = spr_susiel_dark;
		y += sprite_height;
	}
}
if (room == room_cc_kingbattle)
{
	if (global.plot < 240)
		instance_destroy();
	sprite_index = spr_ralseid;
	dtsprite = spr_ralseid;
	utsprite = spr_ralseiu;
	rtsprite = spr_ralseir;
	ltsprite = spr_ralseil;
	y += sprite_height;
}
if (room == room_cc_throneroom)
{
	if (global.plot < 240)
		instance_destroy();
	sprite_index = spr_lancer_dt;
	dtsprite = spr_lancer_dt;
	utsprite = spr_lancer_ut;
	rtsprite = spr_lancer_rt;
	ltsprite = spr_lancer_lt;
	y += sprite_height;
	depthbonus = -250;
}
if (room == room_forest_area1)
{
	sprite_index = spr_susier_dark;
	rtsprite = spr_susier_dark;
	dtsprite = spr_susied_dark;
	utsprite = spr_susieu_dark;
	ltsprite = spr_susiel_dark;
	facing = 1;
	dfacing = 1;
	if (x >= 1160)
	{
		facing = 3;
		dfacing = 3;
		sprite_index = spr_lancer_lt;
		dtsprite = spr_lancer_dt;
		utsprite = spr_lancer_dt;
		rtsprite = spr_lancer_rt;
		ltsprite = spr_lancer_lt;
	}
	if (global.plot > 70)
		instance_destroy();
}
if (room == room_forest_area3)
{
	if (x >= 600)
	{
		facing = 2;
		dfacing = 2;
		sprite_index = spr_lancer_ut;
		dtsprite = spr_lancer_dt;
		utsprite = spr_lancer_ut;
		rtsprite = spr_lancer_rt;
		ltsprite = spr_lancer_lt;
	}
	else
	{
		facing = 2;
		dfacing = 2;
		sprite_index = spr_susieut_dark;
		dtsprite = spr_susiedt_dark;
		utsprite = spr_susieut_dark;
		rtsprite = spr_susiert_dark;
		ltsprite = spr_susielt_dark;
	}
}
if (room == room_library)
{
	if (x < 120)
	{
		facing = 1;
		dfacing = 1;
		dtsprite = spr_berdly_library_r;
		utsprite = spr_berdly_library_u;
		rtsprite = spr_berdly_library_r;
		ltsprite = spr_berdly_library_u;
		depthcancel = 1;
		depth = 4000;
	}
	if (x > 150)
	{
		facing = 1;
		dfacing = 1;
		dtsprite = spr_jockington_ut;
		utsprite = spr_jockington_ut;
		rtsprite = spr_jockington_rt;
		ltsprite = spr_jockington_lt;
	}
	if (x > 220)
	{
		facing = 3;
		dfacing = 3;
		dtsprite = spr_tem_sit_l;
		rtsprite = spr_tem_sit_r;
		utsprite = spr_tem_sit;
		ltsprite = spr_tem_sit_l;
	}
}
if (room == room_flowershop_1f)
{
	facing = 0;
	dfacing = 0;
	dtsprite = spr_asgored;
	utsprite = spr_asgoreu;
	rtsprite = spr_asgorer;
	ltsprite = spr_asgorel;
}
if (room == room_flowershop_2f)
{
	facing = 2;
	dfacing = 2;
	dtsprite = spr_asgored;
	utsprite = spr_asgoreu;
	rtsprite = spr_asgorer;
	ltsprite = spr_asgorel;
}
if (room == room_alphysalley)
{
	facing = 3;
	dfacing = 3;
	dtsprite = spr_alphysd;
	utsprite = spr_alphysu;
	rtsprite = spr_alphysr;
	ltsprite = spr_alphysl;
}
if (room == room_town_south)
{
	facing = 0;
	dfacing = 0;
	dtsprite = spr_undyne_dt;
	utsprite = spr_undyne_ut;
	rtsprite = spr_undyne_rt;
	ltsprite = spr_undyne_lt;
}
if (room == room_town_mid)
{
	facing = 0;
	dfacing = 0;
	dtsprite = spr_sans_d;
	ltsprite = spr_sans_l;
	utsprite = spr_sans_u;
	rtsprite = spr_sans_r;
}
if (room == room_town_north)
{
	facing = 3;
	dfacing = 3;
	dtsprite = spr_noelle_dt;
	ltsprite = spr_noelle_lt;
	utsprite = spr_noelle_ut;
	rtsprite = spr_noelle_rt;
	if (global.flag[255] < 1)
		instance_destroy();
}
scr_npcdir();
y -= sprite_height;
if (depthcancel == 0)
	scr_depth();
depth += depthbonus;
