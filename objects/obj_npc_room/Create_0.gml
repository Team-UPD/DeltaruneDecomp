myinteract = 0;
talked = 0;
tempvar = 0;
image_speed = 0;
depthcancel = 0;
normalanim = 1;
remanimspeed = 0;
flag = 0;
extflag = 0;
alwaysanimate = false;
jpspecial = 0;
if (global.darkzone == 0)
{
	if (room == room_krisroom)
		sprite_index = spr_redwagon;
	if (room == room_torhouse)
	{
		sprite_index = spr_chairiel_empty;
		if (global.plot >= 250)
		{
			if (global.chapter == 1)
				sprite_index = spr_chairiel;
		}
	}
	if (room == room_graveyard)
	{
		fence = scr_marker(81, 122, spr_npc_graveyardfence);
		with (fence)
			scr_depth();
		if (x < 30)
			sprite_index = spr_npc_bench;
	}
	if (room == room_hospital_lobby)
		sprite_index = spr_npc_nurse;
	if (room == room_hospital_rudy)
	{
		if (global.chapter == 1)
			sprite_index = spr_rudy_d;
		if (global.chapter == 2)
			sprite_index = spr_rudy_l;
	}
	if (room == room_library)
		sprite_index = spr_normalnpc;
	if (room == room_townhall)
	{
		if (global.chapter == 1)
		{
			sprite_index = spr_npc_businessguy;
			if (x > 100)
				sprite_index = spr_npc_receptionist;
			if (x > 200)
				sprite_index = spr_npc_politicsbear;
		}
		if (global.chapter == 2)
		{
			sprite_index = spr_npc_businessguy;
			if (x > 100)
				sprite_index = spr_npc_receptionist;
			if (x > 200)
				sprite_index = spr_npc_politicsbear;
		}
	}
	if (room == room_diner)
	{
		if (global.chapter == 1)
		{
			if (x < 120)
				sprite_index = spr_npc_cattiwaitress;
			if (x < 60)
				sprite_index = spr_npc_dragonfamily;
			if (x >= 120 && x <= 140)
				sprite_index = spr_npc_qc;
			if (y > 130)
			{
				if (x > 180)
					sprite_index = spr_npc_dresslion;
				if (x > 240)
				{
					sprite_index = spr_npc_greenfire;
					depth = 4000;
					depthcancel = 1;
				}
				if (x > 260)
				{
					sprite_index = spr_npc_flanneldemon;
					depth = 4000;
					depthcancel = 1;
				}
			}
			if (y < 120)
			{
				if (x > 160)
					sprite_index = spr_npc_most_improved_1997;
				if (x > 200)
					sprite_index = spr_npc_icewolf;
			}
		}
		if (global.chapter == 2)
		{
			if (y < 85)
				sprite_index = spr_npc_qc;
			if (x > 150 && x < 180 && y < 115)
				sprite_index = spr_jockington_lt;
			if (x > 80 && x < 120)
				sprite_index = spr_npc_cattiwaitress;
		}
	}
	if (room == room_town_south)
	{
		if (global.chapter == 1)
		{
			if (x > 560)
				sprite_index = spr_npc_donutcar;
			if (x > 720)
				sprite_index = spr_npc_snailcar;
		}
	}
	if (room == room_town_church)
	{
		if (global.chapter == 1)
			sprite_index = spr_npc_alvin;
		if (global.chapter == 2)
		{
			if (x > 270 && y < 320)
				sprite_index = spr_npc_terry;
			if (x > 220 && x < 260 && y > 310)
				sprite_index = spr_npc_icecap_r;
			if (x > 230 && x < 245 && y > 300)
				sprite_index = spr_npc_icecap_g;
			if (x > 250 && x < 260 && y > 300)
				sprite_index = spr_npc_icecap_b;
			if (x > 380)
				sprite_index = spr_npc_rgbun;
			if (x > 400)
				sprite_index = spr_npc_rgdragon;
			if (x > 590)
				sprite_index = spr_npc_rabbitkid;
		}
	}
	if (room == room_town_mid)
	{
		if (x >= 1800 && x < 1840)
		{
			if (global.chapter == 1)
				sprite_index = spr_mkid_dt;
			else
				instance_destroy();
		}
		if (x >= 1900 && x < 1920)
		{
			if (global.chapter == 1)
				sprite_index = spr_snowy_dt;
			else
				instance_destroy();
		}
	}
	if (room == room_town_north)
	{
		if (global.chapter == 1)
		{
			if (x >= 480)
				sprite_index = spr_npc_catty;
			if (x >= 640)
				sprite_index = spr_npc_cattydad;
			if (x >= 880)
				sprite_index = spr_npc_bratty;
		}
		if (global.chapter == 2)
		{
			if (x < 1000)
				instance_destroy();
		}
	}
	if (room == room_beach)
	{
		if (global.chapter == 1)
		{
			if (x >= 60)
				sprite_index = spr_npc_rgbun;
			if (x >= 100)
				sprite_index = spr_npc_rgdragon;
		}
		if (global.chapter == 2)
			instance_destroy();
	}
}
if (room == room_flowershop_1f)
{
	if (global.chapter == 2)
		sprite_index = spr_asgored;
	else
		instance_destroy();
}
if (room == room_lw_police)
{
	if (x > 80)
		sprite_index = spr_npc_napstablook_police_down;
	if (x > 140)
		sprite_index = spr_undyne_dt;
	if (x > 170)
	{
		sprite_index = spr_npc_prisoner_dog_m;
		depthcancel = 1;
	}
	if (x > 190)
	{
		sprite_index = spr_npc_prisoner_dog_f;
		depthcancel = 1;
	}
}
if (room == room_alphysalley)
	sprite_index = spr_npc_bratty;
if (room == room_lw_conbini)
{
	if (x > 280)
		sprite_index = spr_npc_diamond_tallboy;
	else
		sprite_index = spr_npc_milklooker;
}
if (global.darkzone == 1)
{
	image_xscale = 2;
	image_yscale = 2;
	if (room == room_castle_tutorial)
	{
		if (global.chapter == 1)
			sprite_index = spr_dummynpc;
		if (global.chapter == 2)
		{
			if (x > 760 && x < 780)
			{
				if (global.plot < 200 || global.plot < 9)
					sprite_index = spr_dummynpc;
				else
					sprite_index = spr_mannequin_ralsei_nugu;
			}
		}
	}
	if (room == room_dw_ralsei_castle_front)
	{
		if (x >= 250 && y >= 430)
		{
			if (global.plot >= 200 && scr_get_total_recruits(2) >= 9)
				sprite_index = spr_npc_ballperson_wig;
			else
				sprite_index = spr_ballperson;
		}
		if (x >= 650)
		{
			sprite_index = spr_npc_jackperson_hat;
			x = 740;
			y = 225;
		}
		if (x >= 350 && y >= 430)
		{
			if (global.plot >= 200 && scr_get_total_recruits(2) >= 9)
			{
				sprite_index = spr_npc_nubert;
				image_xscale = -2;
				x = 410;
			}
			else
			{
				instance_destroy();
			}
		}
	}
	if (room == room_dw_castle_area_2)
		sprite_index = spr_susiel_wall_eyes;
	if (room == room_dw_castle_area_2_transformed)
	{
		if (x > 600 && x < 640 && y > 750 && y < 780)
		{
			sprite_index = spr_diamond_overworld;
			image_xscale = -2;
		}
		if (x > 1100 && x < 1300 && y > 870 && y < 890)
			sprite_index = spr_heartenemy_overworld;
		if (x > 1150 && x < 1170 && y > 590 && y < 610)
		{
			if (global.flag[636] != 1)
			{
				sprite_index = spr_npc_rabbick_clean;
			}
			else
			{
				rabbicksweep = instance_create(1222, 562, obj_npc_room_animated);
				rabbicksweep.sprite_index = spr_npc_rabbick_sweep;
				rabbicksweep.image_speed = 0.1;
				with (rabbicksweep)
					scr_depth();
				instance_destroy();
			}
		}
		if (global.flag[636] == 1)
		{
			var swatchling_sweep = false;
			if (i_ex(obj_npc_room_animated))
			{
				with (obj_npc_room_animated)
				{
					if (sprite_index == spr_npc_swatchling_sweep)
						swatchling_sweep = true;
				}
			}
			if (!swatchling_sweep)
			{
				swatchsweep = instance_create(1085, 522, obj_npc_room_animated);
				swatchsweep.sprite_index = spr_npc_swatchling_sweep;
				swatchsweep.image_speed = 0.1;
				with (swatchsweep)
					scr_depth();
			}
		}
		if (x > 250 && x < 280 && y > 550 && y < 650)
		{
			if (global.flag[633] == 1)
			{
				sprite_index = spr_npc_werewire;
				image_xscale = -2;
				x = 353;
				y = 612;
				depth = 93000;
				depthcancel = 1;
			}
			else
			{
				sprite_index = spr_blockler_b;
			}
		}
		if (x > 230 && x < 250 && y > 910 && y < 930)
		{
			sprite_index = spr_diamond_overworld;
			image_xscale = -2;
			x = 320;
		}
		if (x > 320 && x < 350 && y > 910 && y < 930)
		{
			if (global.flag[635] == 1)
			{
				var viro_exists = false;
				if (i_ex(obj_npc_room_animated))
				{
					with (obj_npc_room_animated)
					{
						if (sprite_index == spr_virovirokun_idle)
							viro_exists = true;
					}
				}
				if (!viro_exists)
				{
					viro = instance_create(x, y - 20, obj_npc_room_animated);
					viro.sprite_index = spr_virovirokun_idle;
					with (viro)
						scr_depth();
				}
				instance_destroy();
			}
			else
			{
				sprite_index = spr_daimond_knight_idle;
			}
		}
		if (x > 820 && x < 840 && y > 670 && y < 690)
		{
			if (global.plot < 200)
			{
				x = 859;
				y = 796;
				sprite_index = spr_rurus_idle;
			}
			else if (global.flag[633] == 1)
			{
				sprite_index = spr_npc_plugboy_static_outline;
			}
			else
			{
				instance_destroy();
			}
		}
	}
	if (room == room_cc_lancer)
	{
		if (global.plot >= 200 && scr_get_total_recruits(2) >= 9)
			instance_destroy();
		else
			sprite_index = spr_lancer_dt;
	}
	if (room == room_dw_castle_dungeon)
	{
		sprite_index = spr_king_left;
		depthcancel = 1;
	}
	if (room == room_dw_cyber_intro_2)
	{
		if (global.plot < 51)
			sprite_index = spr_plugboy_cower;
		else
			instance_destroy();
	}
	if (room == room_dw_city_big_1)
	{
		if (y < 270)
		{
			if (global.flag[309] == 9)
				instance_destroy();
			else
				sprite_index = spr_npc_addison_blue;
		}
		else if (global.flag[309] == 9)
		{
			sprite_index = spr_npc_plugboy_static_outline;
			x = 500;
			y = 384;
		}
		else
		{
			sprite_index = spr_npc_addison_orange;
		}
	}
	if (room == room_dw_city_traffic_2)
		sprite_index = spr_npc_plugboy_static;
	if (room == room_dw_city_big_2)
	{
		if (global.flag[309] == 9)
			instance_destroy();
	}
	if (room == room_dw_city_big_3)
	{
		if (x < 600)
		{
			if (global.flag[309] == 9)
				instance_destroy();
			else
				sprite_index = spr_npc_addison_blue;
		}
		if (x > 1000)
		{
			if (global.flag[309] == 9)
			{
				var viro_npc = instance_create(x, y, obj_npc_room_animated);
				viro_npc.sprite_index = spr_virovirokun_idle;
				instance_destroy();
			}
			else
			{
				sprite_index = spr_npc_addison_orange;
			}
		}
	}
	if (room == room_dw_castle_west_cliff)
	{
		if (global.chapter == 2 && global.flag[302] >= 1)
		{
			if (x < 210)
			{
				if (global.flag[314] == 0 && global.plot < 200)
					sprite_index = spr_npc_mrsociety;
				else
					instance_destroy();
			}
			else if (global.flag[357] == 1)
			{
				sprite_index = spr_npc_cursor_walk_right;
			}
			else
			{
				instance_destroy();
			}
		}
		else
		{
			instance_destroy();
		}
	}
	if (room == room_dw_cyber_keyboard_puzzle_1)
	{
		sprite_index = spr_npc_nubert;
		image_xscale = -2;
		if (global.plot >= 70)
			instance_destroy();
	}
	if (room == room_dw_mansion_bridges_funny)
	{
		scr_depth();
		sprite_index = spr_npc_butler;
		image_xscale = 2;
		x = 1280;
		y = 140;
	}
	if (room == room_dw_city_mirrorfriend)
		sprite_index = spr_npc_iconman;
	if (room == room_dw_mansion_east_3f_toilet)
		sprite_index = spr_dw_mansion_toilet;
	if (room == room_dw_cyber_music_bullet)
		sprite_index = spr_plugboy_cower;
	if (room == room_dw_cyber_tasque_battle)
	{
		if (x < 300)
			sprite_index = spr_npc_plugboy_hat;
		else
			sprite_index = spr_npc_plugboy_girl;
	}
	if (room == room_dw_cyber_maze_queenscreen)
		sprite_index = spr_npc_plugboy_hat;
	if (room == room_dw_cyber_battle_maze_2)
	{
		normalanim = 3;
		remanimspeed = 0.25;
	}
	if (room == room_dw_city_postbaseball_1)
	{
		sprite_index = spr_noelle_walk_right_dw;
		normalanim = 4;
	}
}
if (depthcancel == 0)
	scr_depth();
