myinteract = 0;
talked = 0;
tempvar = 0;
image_speed = 0;
depthcancel = 0;
normalanim = 1;
remanimspeed = 0;
if (global.darkzone == 0)
{
	if (room == room_krisroom)
		sprite_index = spr_redwagon;
	if (room == room_torhouse)
	{
		sprite_index = spr_chairiel_empty;
		if (global.plot >= 250)
			sprite_index = spr_chairiel;
	}
	if (room == room_graveyard)
	{
		sprite_index = spr_npc_bench;
		fence = scr_marker(81, 122, spr_npc_graveyardfence);
		with (fence)
			scr_depth();
	}
	if (room == room_hospital_lobby)
		sprite_index = spr_npc_nurse;
	if (room == room_hospital_rudy)
		sprite_index = spr_rudy_d;
	if (room == room_library)
		sprite_index = spr_normalnpc;
	if (room == room_townhall)
	{
		sprite_index = spr_npc_businessguy;
		if (x > 100)
			sprite_index = spr_npc_receptionist;
		if (x > 200)
			sprite_index = spr_npc_politicsbear;
	}
	if (room == room_diner)
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
	if (room == room_town_south)
	{
		if (x > 560)
			sprite_index = spr_npc_donutcar;
		if (x > 720)
			sprite_index = spr_npc_snailcar;
	}
	if (room == room_town_church)
		sprite_index = spr_npc_alvin;
	if (room == room_town_mid)
	{
		if (x >= 1800)
			sprite_index = spr_mkid_dt;
		if (x >= 1900)
			sprite_index = spr_snowy_dt;
	}
	if (room == room_town_north)
	{
		if (x >= 480)
			sprite_index = spr_npc_catty;
		if (x >= 640)
			sprite_index = spr_npc_cattydad;
		if (x >= 880)
			sprite_index = spr_npc_bratty;
	}
	if (room == room_beach)
	{
		if (x >= 60)
			sprite_index = spr_npc_rgbun;
		if (x >= 100)
			sprite_index = spr_npc_rgdragon;
	}
}
if (global.darkzone == 1)
{
	image_xscale = 2;
	image_yscale = 2;
	if (room == room_castle_tutorial)
		sprite_index = spr_dummynpc;
	if (room == room_field2A || room == room_field_puzzle1 || room == room_field4)
		sprite_index = spr_candytree;
	if (room == room_field_topchef)
	{
		sprite_index = spr_topchef;
		if (y <= 120)
		{
			sprite_index = spr_smoldercake;
			alarm[11] = 1;
		}
	}
	if (room == room_field_puzzletutorial)
	{
		sprite_index = spr_npc_puzzlepiece;
		if (global.flag[251] == 1)
			instance_destroy();
	}
	if (room == room_field_maze)
	{
		if (x < 1600)
			sprite_index = spr_jigsawry_idle;
		if (x > 1600)
			sprite_index = spr_lancer_dt;
	}
	if (room == room_field_boxpuzzle)
		sprite_index = spr_npc_block_broken;
	if (room == room_field_checkers7)
	{
		if (x <= (room_width / 2))
		{
			sprite_index = spr_npc_mrelegance;
			if (global.plot >= 60)
				instance_destroy();
		}
		else
		{
			sprite_index = spr_npc_mrsociety;
		}
	}
	if (room == room_forest_savepoint1)
	{
		if (x <= (room_width / 2))
		{
			sprite_index = spr_npc_puzzlepiece;
			if (global.flag[251] == 0)
				instance_destroy();
		}
		else
		{
			sprite_index = spr_npc_mrelegance;
		}
	}
	if (room == room_forest_area1)
		sprite_index = spr_diamond_overworld;
	if (room == room_forest_area2A)
	{
		if (x <= (room_width / 2))
			sprite_index = spr_jackperson;
		if (x >= (room_width / 2))
			sprite_index = spr_ballperson;
	}
	if (room == room_forest_area3A)
	{
		if (x <= (room_width / 2))
			sprite_index = spr_blockler_b;
		if (x >= (room_width / 2))
			sprite_index = spr_blockler_o;
	}
	if (room == room_forest_savepoint2)
	{
		sprite_index = spr_bakesale_rudinn;
		if (x >= 800 && x <= 880)
			sprite_index = spr_bakesale_hathy;
		if (x >= 980)
			sprite_index = spr_bakesale_lancer;
	}
	if (room == room_forest_area4)
		sprite_index = spr_npc_coody;
	if (room == room_forest_starwalker)
		sprite_index = spr_npc_originalstarwalker;
	if (room == room_forest_savepoint_relax)
	{
		if (x <= 200)
			sprite_index = spr_diamond_overworld;
		if (x > 260)
		{
			if (global.plot >= 90)
				instance_destroy();
			if (y >= 240)
				sprite_index = spr_lancer_dark_relax;
			else
				sprite_index = spr_susie_dark_relax;
		}
	}
	if (room == room_forest_fightsusie)
	{
		sprite_index = spr_lancer_dt;
		if (global.plot >= 150)
			instance_destroy();
	}
	if (room == room_cc_prison_cells)
		sprite_index = spr_diamond_trash;
	if (room == room_cc_prison2)
	{
		global.flag[296] = 1;
		sprite_index = spr_npc_gouldensam;
		if (x > 240 && x < 440)
		{
			king = instance_create(-100, -100, obj_npc_room);
			king.x = x;
			king.y = y;
			king.sprite_index = spr_npc_cage_king;
			scr_depth();
			king.depth = depth - 10;
		}
		if (x > 480 && x < 680)
		{
			x += 4;
			puzz = instance_create(-100, -100, obj_npc_room);
			puzz.x = 660;
			puzz.y = 130;
			puzz.sprite_index = spr_npc_puzzlepiece_jail;
			tempvar = 1;
		}
		if (x > 680 && x < 900)
		{
			x += 8;
			rudinn = instance_create(-100, -100, obj_npc_room);
			rudinn.x = 900;
			rudinn.y = 115;
			rudinn.sprite_index = spr_diamond_overworld;
			tempvar = 2;
		}
		if (x > 900 && x < 1120)
		{
			x += 12;
			tempvar = 3;
			animal = instance_create(-100, -100, obj_npc_room);
			animal.x = x;
			animal.y = y;
			animal.sprite_index = spr_npc_cage_animals;
		}
	}
	if (room == room_cc_rudinn)
		sprite_index = spr_diamond_overworld;
	if (room == room_cc_rurus1)
		sprite_index = spr_diamond_overworld;
	if (room == room_cc_hathy)
		sprite_index = spr_heartenemy_overworld;
	if (room == room_cc_rurus2)
		sprite_index = spr_diamond_overworld;
	if (room == room_cc_clover)
	{
		sprite_index = spr_clubs_overworld;
		if (x < 160)
			sprite_index = spr_diamond_overworld;
		if (x > 400)
			sprite_index = spr_heartenemy_overworld;
	}
	if (room == room_cc_throneroom)
	{
		if (global.plot < 240)
		{
			instance_destroy();
		}
		else if (y < 300 && y > 80)
		{
			sprite_index = spr_npc_gouldensam;
			if (x < (room_width / 2))
			{
				king = instance_create(-100, -100, obj_npc_room);
				king.x = x;
				king.y = y;
				king.sprite_index = spr_npc_cage_king;
				scr_depth();
				king.depth = depth - 10;
			}
			else
			{
				tempvar = 1;
				animal = instance_create(-100, -100, obj_npc_room);
				animal.x = x;
				animal.y = y;
				animal.sprite_index = spr_npc_cage_animals;
			}
		}
		else if (x < (room_width / 2))
		{
			sprite_index = spr_diamond_overworld;
		}
		else
		{
			sprite_index = spr_topchef;
		}
	}
	if (room == room_cc_preroof)
	{
		if (global.plot < 240)
			instance_destroy();
		if (x > 180)
			sprite_index = spr_diamond_overworld;
		if (x > 320)
			sprite_index = spr_heartenemy_overworld;
		if (x > 460)
			sprite_index = spr_clubs_overworld;
		if (x > 680)
			sprite_index = spr_diamond_overworld;
	}
	if (room == room_cc_kingbattle)
	{
		if (global.plot < 240)
			instance_destroy();
		if (x < 440)
			sprite_index = spr_rurus_idle;
		if (y < 160)
		{
			if (x == 398)
				sprite_index = spr_npc_mrsociety;
			if (x == 522)
				sprite_index = spr_npc_mrelegance;
			if (x == 740)
				sprite_index = spr_blockler_b;
			if (x == 820)
				sprite_index = spr_blockler_o;
			if (x == 940)
				sprite_index = spr_blockler_o;
			if (x == 1020)
				sprite_index = spr_blockler_b;
			if (x > 1140)
			{
				sprite_index = spr_npc_puzzlepiece_happy;
				if (global.flag[216] == 1)
					sprite_index = spr_npc_puzzlepiece_shaved;
			}
		}
		else if (x < 900)
		{
			sprite_index = spr_jackperson;
		}
		else
		{
			sprite_index = spr_ballperson;
		}
	}
}
if (depthcancel == 0)
	scr_depth();
