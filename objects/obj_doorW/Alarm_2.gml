global.entrance = 23;
instance_create(0, 0, obj_persistentfadein);
event_user(7);
if (room == room_hospital_lobby)
	room_goto(room_town_south);
if (room == room_alphysalley)
	room_goto(room_town_mid);
if (room == room_town_north)
	room_goto(room_beach);
if (room == room_beach)
	room_goto(room_town_north);
if (room == room_town_mid)
{
	if (x > 290 && x < 370)
	{
		global.entrance = 20;
		room_goto(room_lw_icee_pizza);
	}
	if (x > 1730 && x < 1840)
	{
		global.entrance = 23;
		room_goto(room_alphysalley);
	}
}
if (room == room_lw_icee_pizza)
{
	global.entrance = 20;
	room_goto(room_town_mid);
}
if (room == room_town_south)
{
	if (x > 230 && x < 280)
	{
		global.entrance = 22;
		room_goto(room_lw_police);
	}
	if (x > 580 && x < 660)
	{
		global.entrance = 23;
		room_goto(room_hospital_lobby);
	}
}
if (room == room_lw_police)
{
	global.entrance = 22;
	room_goto(room_town_south);
}
if (room == room_dw_castle_east_door)
	room_goto(room_castle_tutorial);
if (room == room_castle_tutorial)
	room_goto(room_dw_castle_east_door);
if (room == room_dw_ralsei_castle_front)
{
	global.entrance = 24;
	room_goto(room_dw_ralsei_castle_1f);
}
if (room == room_dw_ralsei_castle_1f)
{
	if (x > 840 && x < 1000)
	{
		global.entrance = 23;
		room_goto(room_dw_castle_dungeon);
	}
	if (x > 550 && x < 700)
	{
		global.entrance = 24;
		room_goto(room_dw_ralsei_castle_front);
	}
}
if (room == room_dw_ralsei_castle_2f)
{
	if (x > 240 && x < 340)
	{
		global.entrance = 22;
		room_goto(room_dw_castle_rooms_kris);
	}
	if (x > 520 && x < 610)
	{
		global.entrance = 23;
		room_goto(room_dw_castle_rooms_susie);
	}
	if (x > 780 && x < 860)
	{
		global.entrance = 24;
		room_goto(room_cc_lancer);
	}
}
if (room == room_dw_cyber_teacup_1)
{
	if (x < 10)
	{
		global.entrance = 21;
		room_goto(room_dw_cyber_battle_maze_1);
	}
}
if (room == room_dw_cyber_battle_maze_1)
{
	if (x < 1200)
	{
		global.entrance = 21;
		room_goto(room_dw_cyber_teacup_1);
	}
}
if (room == room_dw_cyber_musical_door)
{
	if (y < 60)
	{
		global.entrance = 21;
		room_goto(room_dw_cyber_musical_shop);
	}
	if (y > 400)
	{
		global.entrance = 20;
		room_goto(room_dw_cyber_post_music_boss_slide);
	}
}
if (room == room_dw_cyber_escalator_slide)
{
	global.entrance = 20;
	room_goto(room_dw_cyber_musical_door);
}
if (room == room_dw_cyber_battle_maze_2)
{
	global.entrance = 23;
	room_goto(room_dw_cyber_keyboard_puzzle_3);
}
if (room == room_dw_cyber_keyboard_puzzle_3)
{
	global.entrance = 23;
	room_goto(room_dw_cyber_battle_maze_2);
}
if (room == room_dw_cyber_maze_rhythm)
{
	if (y > 900)
	{
		global.entrance = 23;
		room_goto(room_dw_cyber_battle_maze_2);
	}
	if (y < 10)
	{
		global.entrance = 20;
		room_goto(room_dw_cyber_maze_queenscreen);
	}
}
if (room == room_dw_cyber_maze_queenscreen)
{
	if (extflag == "to_room_dw_cyber_musical_shop")
	{
		global.entrance = 20;
		room_goto(room_dw_cyber_musical_shop);
	}
	if (extflag == "to_room_dw_cyber_maze_rhythm")
	{
		global.entrance = 23;
		room_goto(room_dw_cyber_battle_maze_2);
	}
}
if (room == room_dw_cyber_maze_tasque)
{
	if (extdestination == "room_dw_cyber_maze_tasque to room_dw_cyber_maze_virokun")
	{
		if (x > 180)
		{
			global.entrance = 20;
			room_goto(room_dw_cyber_maze_virokun);
		}
	}
	if (x > 1000)
	{
		global.entrance = 21;
		room_goto(room_dw_cyber_battle_maze_2);
	}
	if (x > 1400)
	{
		global.entrance = 22;
		room_goto(room_dw_cyber_battle_maze_2);
	}
}
if (room == room_dw_cyber_maze_virokun)
{
	if (y > 430)
	{
		global.entrance = 20;
		room_goto(room_dw_cyber_maze_tasque);
	}
	if (y < 50)
	{
		global.entrance = 21;
		room_goto(room_dw_cyber_maze_fireworks);
	}
}
if (room == room_dw_cyber_maze_fireworks)
{
	global.entrance = 21;
	room_goto(room_dw_cyber_maze_virokun);
}
if (room == room_dw_cyber_musical_shop)
{
	if (extflag == "to_room_dw_cyber_maze_queenscreen")
	{
		global.entrance = 21;
		room_goto(room_dw_cyber_maze_queenscreen);
	}
	if (extflag != "to_room_dw_cyber_maze_queenscreen")
	{
		global.entrance = 21;
		room_goto(room_dw_cyber_musical_door);
	}
}
if (room == room_dw_castle_rooms_kris)
{
	global.entrance = 22;
	room_goto(room_dw_ralsei_castle_2f);
}
if (room == room_dw_castle_rooms_susie)
{
	global.entrance = 23;
	room_goto(room_dw_ralsei_castle_2f);
}
if (room == room_cc_lancer)
{
	global.entrance = 24;
	room_goto(room_dw_ralsei_castle_2f);
}
if (room == room_dw_castle_dungeon)
{
	global.entrance = 23;
	room_goto(room_dw_ralsei_castle_1f);
}
if (room == room_dw_city_treasure)
{
	global.entrance = 23;
	room_goto(room_dw_city_big_1);
}
if (room == room_dw_city_big_1)
{
	if (x < 10)
	{
		global.entrance = 23;
		room_goto(room_dw_city_treasure);
	}
	if (x > 720)
	{
		global.entrance = 24;
		room_goto(room_dw_city_susie_ralsei_fun_1);
	}
}
if (room == room_dw_city_big_2)
{
	global.entrance = 24;
	room_goto(room_dw_city_mirrorfriend);
}
if (room == room_dw_city_traffic_2)
{
	global.entrance = 23;
	room_goto(room_dw_city_mirrorfriend);
}
if (room == room_dw_city_susie_ralsei_fun_1)
{
	global.entrance = 24;
	room_goto(room_dw_city_big_1);
}
if (room == room_dw_city_mirrorfriend)
{
	if (extflag == "big2")
	{
		global.entrance = 24;
		room_goto(room_dw_city_big_2);
	}
}
if (room == room_dw_city_big_3)
{
	if (extflag == 0)
	{
		global.entrance = 23;
		room_goto(room_dw_city_traffic_3);
	}
	if (extflag == "ralsusfun3")
		global.entrance = 23;
}
if (room == room_dw_city_traffic_3)
{
	if (y < 900)
	{
		global.entrance = 23;
		room_goto(room_dw_city_big_3);
	}
}
if (room == room_dw_city_moss)
{
	global.entrance = 24;
	room_goto(room_dw_city_traffic_3);
}
if (room == room_dw_city_dog_traffic)
{
	global.entrance = 24;
	room_goto(room_dw_city_traffic_3);
}
if (room == room_dw_city_traffic_4)
{
	if (x > 4500)
	{
		global.entrance = 24;
		room_goto(room_dw_city_monologue);
	}
	if (x < 50)
	{
		global.entrance = 22;
		room_goto(room_dw_city_berdly);
	}
}
if (room == room_dw_city_spamton_alley)
{
	global.entrance = 23;
	room_goto(room_dw_city_traffic_4);
}
if (room == room_dw_city_monologue)
{
	global.entrance = 24;
	room_goto(room_dw_city_traffic_4);
}
if (room == room_dw_city_mansion_front)
{
	global.entrance = 22;
	room_goto(room_dw_mansion_entrance);
}
if (room == room_dw_mansion_lightner_hallway)
{
	if (x > 210 && x < 280)
	{
		global.entrance = 19;
		room_goto(room_dw_mansion_krisroom);
	}
	if (x > 490 && x < 590)
	{
		global.entrance = 20;
		room_goto(room_dw_mansion_susieroom);
	}
	if (x > 1900)
	{
		global.entrance = 21;
		room_goto(room_dw_mansion_darkbulb_1);
	}
}
if (room == room_dw_mansion_susieroom)
{
	global.entrance = 20;
	room_goto(room_dw_mansion_lightner_hallway);
}
if (room == room_dw_mansion_krisroom)
{
	global.entrance = 19;
	room_goto(room_dw_mansion_lightner_hallway);
}
if (room == room_dw_mansion_darkbulb_1)
{
	if (x < 10)
	{
		global.entrance = 21;
		room_goto(room_dw_mansion_lightner_hallway);
	}
	if (x > 600)
	{
		if (global.plot < 120)
		{
			global.entrance = 20;
			room_goto(room_dw_mansion_darkbulb_2);
		}
		else
		{
			global.entrance = 20;
			room_goto(room_dw_mansion_dining_a);
		}
	}
}
if (room == room_dw_mansion_darkbulb_2)
{
	if (x < 10)
	{
		global.entrance = 20;
		room_goto(room_dw_mansion_darkbulb_1);
	}
	if (x > 600)
	{
		global.entrance = 19;
		room_goto(room_dw_mansion_darkbulb_3);
	}
}
if (room == room_dw_mansion_darkbulb_3)
{
	if (x < 10)
	{
		global.entrance = 19;
		room_goto(room_dw_mansion_darkbulb_2);
	}
	if (x > 600)
	{
		global.entrance = 20;
		room_goto(room_dw_mansion_dining_a);
	}
}
if (room == room_dw_mansion_dining_a)
{
	if (x < 10)
	{
		global.entrance = 20;
		if (global.plot < 120)
			room_goto(room_dw_mansion_darkbulb_3);
		else
			room_goto(room_dw_mansion_darkbulb_1);
	}
}
if (room == room_dw_mansion_east_2f_shortcut)
{
	global.entrance = 20;
	room_goto(room_dw_mansion_entrance);
}
if (room == room_dw_mansion_entrance)
{
	if (x > 620 && x < 630 && y > 450 && y < 470)
	{
		global.entrance = 20;
		room_goto(room_dw_mansion_east_2f_shortcut);
	}
	if (x > 730 && x < 750 && y > 450 && y < 470)
	{
		global.entrance = 19;
		room_goto(room_dw_mansion_east_3f);
	}
	if (x > 800 && y > 670)
	{
		global.entrance = 21;
		room_goto(room_dw_mansion_east_1f_secret);
	}
}
if (room == room_dw_mansion_east_4f_a)
{
	global.entrance = 19;
	room_goto(room_dw_mansion_entrance);
}
if (room == room_dw_mansion_east_2f_transformed_new)
{
	if (extflag == "topleft")
	{
		global.entrance = 22;
		room_goto(room_dw_mansion_kitchen);
	}
	if (extflag == "topright")
	{
		global.entrance = 24;
		room_goto(room_dw_mansion_dining3);
	}
}
if (room == room_dw_mansion_east_1f_secret)
{
	if (x < 10)
	{
		global.entrance = 21;
		room_goto(room_dw_mansion_entrance);
	}
}
if (room == room_dw_mansion_b_central)
{
	if (global.flag[309] < 9)
	{
		global.entrance = 24;
		room_goto(room_dw_mansion_b_east);
	}
	else
	{
		global.entrance = 24;
		room_goto(room_dw_mansion_b_east_transformed);
	}
}
if (room == room_dw_mansion_b_east)
{
	if (x < 10)
	{
		global.entrance = 24;
		room_goto(room_dw_mansion_b_central);
	}
	if (x > 80 && x < 150)
	{
		global.entrance = 22;
		room_goto(room_dw_mansion_b_east_a);
	}
	if (x > 1000)
	{
		global.entrance = 23;
		room_goto(room_dw_mansion_b_east_b);
	}
}
if (room == room_dw_mansion_b_east_a)
{
	global.entrance = 22;
	if (global.flag[309] < 8)
		room_goto(room_dw_mansion_b_east);
	else
		room_goto(room_dw_mansion_b_east_transformed);
}
if (room == room_dw_mansion_b_east_b)
{
	global.entrance = 23;
	room_goto(room_dw_mansion_b_east);
}
if (room == room_dw_mansion_b_east_transformed)
{
	if (y < 200)
	{
		global.entrance = 22;
		room_goto(room_dw_mansion_b_east_a);
	}
	else
	{
		global.entrance = 24;
		room_goto(room_dw_mansion_b_central);
	}
}
if (room == room_dw_mansion_b_west_1f)
{
	if (extflag == "gotoroom_dw_mansion_b_west_2f")
	{
		global.entrance = 24;
		room_goto(room_dw_mansion_b_west_2f);
	}
	if (x > 800)
	{
		global.entrance = 23;
		room_goto(room_dw_mansion_b_west_1f_b);
	}
	if (x > 1400)
	{
		global.entrance = 22;
		room_goto(room_dw_mansion_b_west_1f_a);
	}
}
if (room == room_dw_mansion_b_west_2f)
{
	global.entrance = 24;
	room_goto(room_dw_mansion_b_west_1f);
}
if (room == room_dw_mansion_b_west_1f_a)
{
	global.entrance = 22;
	room_goto(room_dw_mansion_b_west_1f);
}
if (room == room_dw_mansion_b_west_1f_b)
{
	global.entrance = 23;
	room_goto(room_dw_mansion_b_west_1f);
}
if (room == room_dw_mansion_east_2f_d)
{
	if (x > 1200)
	{
		global.entrance = 20;
		room_goto(room_dw_mansion_east_2f_c);
	}
	else
	{
		global.entrance = 24;
		room_goto(room_dw_mansion_east_teacup_2);
	}
}
if (room == room_dw_mansion_east_2f_c)
{
	if (extflag == "farleft")
	{
		global.entrance = 20;
		room_goto(room_dw_mansion_east_2f_d);
	}
	if (extflag == "topleft")
	{
		global.entrance = 23;
		room_goto(room_dw_mansion_east_2f_c_a);
	}
	if (extflag == "topright")
	{
		global.entrance = 22;
		room_goto(room_dw_mansion_east_2f_c_a);
	}
	if (extflag == "bottom")
	{
		global.entrance = 24;
		room_goto(room_dw_mansion_east_2f_c_b);
	}
	if (extflag == "farright")
	{
		global.entrance = 23;
		room_goto(room_dw_mansion_dininghall);
	}
}
if (room == room_dw_mansion_kitchen)
{
	global.entrance = 22;
	room_goto(room_dw_mansion_east_2f_transformed_new);
}
if (room == room_dw_mansion_east_2f_c_a)
{
	if (x > 260)
	{
		global.entrance = 23;
		room_goto(room_dw_mansion_east_2f_c);
	}
	if (x > 1540)
	{
		global.entrance = 22;
		room_goto(room_dw_mansion_east_2f_c);
	}
}
if (room == room_dw_mansion_east_2f_c_b)
{
	global.entrance = 24;
	room_goto(room_dw_mansion_east_2f_c);
}
if (room == room_dw_mansion_east_3f_toilet)
{
	global.entrance = 23;
	room_goto(room_dw_mansion_east_3f);
}
if (room == room_dw_mansion_east_3f_projection)
{
	global.entrance = 21;
	room_goto(room_dw_mansion_east_3f);
}
if (room == room_dw_mansion_east_3f)
{
	if (x < 10)
	{
		global.entrance = 21;
		room_goto(room_dw_mansion_east_3f_projection);
	}
	if (x > 220 && y < 200)
	{
		global.entrance = 19;
		room_goto(room_dw_mansion_entrance);
	}
	if (x > 220 && y >= 440)
	{
		global.entrance = 22;
		room_goto(room_dw_mansion_east_teacup_2);
	}
	if (x > 500)
	{
		global.entrance = 20;
		room_goto(room_dw_mansion_east_4f_b);
	}
	if (x > 870)
	{
		global.entrance = 23;
		room_goto(room_dw_mansion_east_3f_toilet);
	}
	if (x > 1250)
	{
		global.entrance = 24;
		room_goto(room_dw_mansion_acid_tunnel);
	}
}
if (room == room_dw_mansion_east_teacup_2)
{
	if (y > 4600)
	{
		global.entrance = 24;
		room_goto(room_dw_mansion_east_2f_d);
	}
	else
	{
		global.entrance = 22;
		room_goto(room_dw_mansion_east_3f);
	}
}
if (room == room_dw_mansion_acid_tunnel)
{
	global.entrance = 24;
	room_goto(room_dw_mansion_east_3f);
}
if (room == room_dw_mansion_acid_tunnel_puzzle_entrance)
{
	global.entrance = 24;
	room_goto(room_dw_mansion_bridges);
}
if (room == room_library)
{
	if (x > 110 && x < 150)
	{
		global.entrance = 23;
		room_goto(room_lw_computer_lab);
	}
	if (x > 215 && x < 230)
	{
		global.entrance = 20;
		room_goto(room_lw_library_upstairs);
	}
}
if (room == room_lw_library_upstairs)
{
	global.entrance = 20;
	room_goto(room_library);
}
if (room == room_lw_computer_lab)
{
	global.entrance = 23;
	room_goto(room_library);
}
if (room == room_dw_cyber_virovirokun_fight)
{
	global.entrance = 23;
	room_goto(room_dw_cyber_musical_door);
}
if (room == room_dw_mansion_traffic)
{
	global.entrance = 24;
	room_goto(room_dw_mansion_east_teacup);
}
if (room == room_dw_mansion_east_2f_a)
{
	global.entrance = 23;
	room_goto(room_dw_mansion_east_teacup);
}
if (room == room_dw_mansion_east_teacup)
{
	if (y > 4700)
	{
		global.entrance = 24;
		room_goto(room_dw_mansion_traffic);
	}
	else
	{
		global.entrance = 23;
		room_goto(room_dw_mansion_east_2f_a);
	}
}
if (room == room_dw_city_berdly)
{
	if (x < 0)
	{
		global.entrance = 23;
		room_goto(room_dw_city_poppup);
	}
	else
	{
		global.entrance = 22;
		room_goto(room_dw_city_traffic_4);
	}
}
if (room == room_dw_city_poppup)
{
	global.entrance = 23;
	room_goto(room_dw_city_berdly);
}
if (room == room_dw_cyber_post_music_boss_slide)
{
	if (extflag == "leftExit")
	{
		global.entrance = 20;
		room_goto(room_dw_cyber_musical_door);
	}
	if (extflag == "rightExit")
	{
		global.entrance = 20;
		room_goto(room_dw_cyber_music_final);
	}
}
if (room == room_dw_cyber_music_final)
{
	global.entrance = 23;
	room_goto(room_dw_cyber_post_music_boss_slide);
}
if (room == room_dw_cyber_teacup_final)
{
	global.entrance = 24;
	room_goto(room_dw_cyber_viro_ring);
}
if (room == room_dw_mansion_bridges_funny)
{
	global.entrance = 23;
	room_goto(room_dw_mansion_bridges);
}
if (room == room_dw_mansion_mouseLottery)
{
	global.entrance = 22;
	room_goto(room_dw_mansion_bridges);
}
if (room == room_dw_mansion_hands)
{
	global.entrance = 20;
	room_goto(room_dw_mansion_bridges);
}
if (room == room_dw_mansion_bridges)
{
	if (extflag == "back")
	{
		global.entrance = 24;
		room_goto(room_dw_mansion_acid_tunnel_puzzle_entrance);
	}
	if (extflag == "funny")
	{
		global.entrance = 24;
		room_goto(room_dw_mansion_bridges_funny);
	}
	if (extflag == "next")
	{
		global.entrance = 24;
		room_goto(room_dw_mansion_mouseLottery);
	}
	if (extflag == "hands")
	{
		global.entrance = 24;
		room_goto(room_dw_mansion_hands);
	}
}
if (room == room_dw_mansion_dining3)
{
	if (extflag == "top")
	{
		global.entrance = 21;
		room_goto(room_dw_mansion_dininghall);
	}
	if (extflag == "bottom")
	{
		global.entrance = 21;
		room_goto(room_dw_mansion_east_2f_transformed_new);
	}
}
if (room == room_dw_mansion_east_4f_b)
{
	if (x > 200)
	{
		global.entrance = 20;
		room_goto(room_dw_mansion_east_3f);
	}
	if (x > 500)
	{
		global.entrance = 24;
		room_goto(room_dw_mansion_noelle_room);
	}
}
if (room == room_dw_mansion_noelle_room)
{
	global.entrance = 24;
	room_goto(room_dw_mansion_east_4f_b);
}
if (room == room_dw_mansion_dininghall)
{
	if (extflag == "topright")
	{
		global.entrance = 24;
		room_goto(room_dw_mansion_dining_storage);
	}
	if (extflag == "topleft")
	{
		global.entrance = 21;
		room_goto(room_dw_mansion_east_2f_c);
	}
	if (extflag == "bottom")
	{
		global.entrance = 21;
		room_goto(room_dw_mansion_dining3);
	}
}
if (room == room_dw_cyber_viro_ring)
{
	global.entrance = 23;
	room_goto(room_dw_cyber_teacup_final);
}
if (room == room_dw_mansion_dining_storage)
{
	global.entrance = 24;
	room_goto(room_dw_mansion_dininghall);
}
