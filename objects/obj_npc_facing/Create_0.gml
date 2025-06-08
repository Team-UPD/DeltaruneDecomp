sprite_height_adjusted = 0;
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
lifetimer = 0;
fun = 0;
extflag = 0;
if (room == room_alphysclass)
{
	facing = 2;
	dfacing = 2;
	ourcase = 1;
	if (y < 172)
	{
		dtsprite = spr_noelle_walk_down_lw;
		rtsprite = spr_noelle_walk_right_lw;
		utsprite = spr_noelle_walk_up_lw;
		ltsprite = spr_noelle_walk_left_lw;
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
	if (global.chapter == 1)
	{
		facing = 0;
		dfacing = 0;
		dtsprite = spr_undyne_dt;
		utsprite = spr_undyne_ut;
		rtsprite = spr_undyne_rt;
		ltsprite = spr_undyne_lt;
	}
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
	dtsprite = spr_noelle_walk_down_lw;
	ltsprite = spr_noelle_walk_left_lw;
	utsprite = spr_noelle_walk_up_lw;
	rtsprite = spr_noelle_walk_right_lw;
	if (global.flag[255] < 1 || global.chapter == 2)
		instance_destroy();
}
if (room == room_dw_castle_area_2)
{
	facing = 0;
	dfacing = 0;
	dtsprite = spr_ralsei_down;
	ltsprite = spr_ralsei_left;
	utsprite = spr_ralsei_up;
	rtsprite = spr_ralsei_right;
	if (room == room_dw_castle_area_2 && global.chapter == 1)
		instance_destroy();
}
if (room == room_dw_cyber_queen_boxing)
{
	if (x < 310)
	{
		facing = 2;
		dfacing = 2;
		dtsprite = spr_ralsei_down;
		ltsprite = spr_ralsei_left;
		utsprite = spr_ralsei_up;
		rtsprite = spr_ralsei_right;
	}
	if (x > 310 && x < 438)
	{
		facing = 2;
		dfacing = 2;
		dtsprite = spr_susie_down_dw;
		ltsprite = spr_susie_left_dw;
		utsprite = spr_susie_up_dw;
		rtsprite = spr_susie_right_dw;
	}
	if (x > 438)
	{
		facing = 3;
		dfacing = 3;
		dtsprite = spr_queen_down;
		ltsprite = spr_queen_left;
		utsprite = spr_queen_up;
		rtsprite = spr_queen_right;
	}
}
if (room == room_dw_ralsei_castle_2f)
{
	facing = 2;
	dfacing = 2;
	dtsprite = spr_queen_down;
	ltsprite = spr_queen_left;
	utsprite = spr_queen_up;
	rtsprite = spr_queen_right;
}
if (extflag == "ralsei_dw")
{
	facing = 2;
	dfacing = 2;
	dtsprite = spr_ralsei_down;
	ltsprite = spr_ralsei_left;
	utsprite = spr_ralsei_up;
	rtsprite = spr_ralsei_right;
}
if (extflag == "susie_dw")
{
	facing = 2;
	dfacing = 2;
	dtsprite = spr_susie_down_dw;
	ltsprite = spr_susie_left_dw;
	utsprite = spr_susie_up_dw;
	rtsprite = spr_susie_right_dw;
}
scr_npcdir();
if (sprite_height_adjusted == 0)
{
	if (global.chapter == 1)
	{
		y -= sprite_height;
		sprite_height_adjusted = 1;
	}
	if (global.chapter == 2 && global.plot <= 12)
	{
		y -= sprite_height;
		sprite_height_adjusted = 1;
	}
	sprite_height_adjusted = 1;
}
if (depthcancel == 0)
	scr_depth();
depth += depthbonus;
