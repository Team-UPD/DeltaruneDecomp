function scr_get_room_by_id(arg0)
{
	var room_id = arg0;
	var rooms = scr_get_room_list();
	if (room_id < 10000)
	{
		room_index = room_id;
		var room_offset = room_index;
		if (room_index < 281)
			room_offset = 281 + room_index;
		room_id = room_offset;
		room_id += (global.chapter * 10000);
	}
	var room_index = 0;
	for (var i = 0; i < array_length_1d(rooms); i++)
	{
		if (rooms[i].room_id == room_id)
		{
			room_index = rooms[i].room_index;
			break;
		}
	}
	return room_index;
}

function scr_get_id_by_room_index(arg0)
{
	var room_index = arg0;
	var rooms = scr_get_room_list();
	var room_id = 0;
	for (var i = 0; i < array_length_1d(rooms); i++)
	{
		if (rooms[i].room_index == room_index)
		{
			room_id = rooms[i].room_id;
			break;
		}
	}
	return room_id;
}

function scr_room(arg0, arg1) constructor
{
	room_index = arg0;
	room_id = arg1;
}

function scr_get_room_list()
{
	var idsarr = [new scr_room(room_krisroom, 10283), new scr_room(room_krishallway, 10284), new scr_room(room_torroom, 10285), new scr_room(room_torhouse, 10286), new scr_room(room_torbathroom, 10287), new scr_room(room_town_krisyard, 10288), new scr_room(room_town_northwest, 10289), new scr_room(room_town_north, 10290), new scr_room(room_beach, 10291), new scr_room(room_town_mid, 10292), new scr_room(room_town_apartments, 10293), new scr_room(room_town_south, 10294), new scr_room(room_town_school, 10295), new scr_room(room_town_church, 10296), new scr_room(room_graveyard, 10297), new scr_room(room_town_shelter, 10298), new scr_room(room_hospital_lobby, 10299), new scr_room(room_hospital_hallway, 10300), new scr_room(room_hospital_rudy, 10301), new scr_room(room_hospital_room2, 10302), new scr_room(room_diner, 10303), new scr_room(room_townhall, 10304), new scr_room(room_flowershop_1f, 10305), new scr_room(room_flowershop_2f, 10306), new scr_room(room_library, 10307), new scr_room(room_alphysalley, 10308), new scr_room(room_torielclass, 10309), new scr_room(room_schoollobby, 10310), new scr_room(room_alphysclass, 10311), new scr_room(room_schooldoor, 10312), new scr_room(room_insidecloset, 10313), new scr_room(room_school_unusedroom, 10314), new scr_room(room_dark1, 10315), new scr_room(room_dark1a, 10316), new scr_room(room_dark2, 10317), new scr_room(room_dark3, 10318), new scr_room(room_dark3a, 10319), new scr_room(room_dark_wobbles, 10320), new scr_room(room_dark_eyepuzzle, 10321), new scr_room(room_dark7, 10322), new scr_room(room_dark_chase1, 10323), new scr_room(room_dark_chase2, 10324), new scr_room(room_castle_outskirts, 10325), new scr_room(room_castle_town, 10326), new scr_room(room_castle_front, 10327), new scr_room(room_castle_tutorial, 10328), new scr_room(room_castle_darkdoor, 10329), new scr_room(room_field_start, 10330), new scr_room(room_field_forest, 10331), new scr_room(room_field1, 10332), new scr_room(room_field2, 10333), new scr_room(room_field2A, 10334), new scr_room(room_field_topchef, 10335), new scr_room(room_field_puzzle1, 10336), new scr_room(room_field_maze, 10337), new scr_room(room_field_puzzle2, 10338), new scr_room(room_field_getsusie, 10339), new scr_room(room_field_shop1, 10340), new scr_room(room_field_puzzletutorial, 10341), new scr_room(room_field3, 10342), new scr_room(room_field_boxpuzzle, 10343), new scr_room(room_field4, 10344), new scr_room(room_field_secret1, 10345), new scr_room(room_field_checkers4, 10346), new scr_room(room_field_checkers2, 10347), new scr_room(room_field_checkers6, 10348), new scr_room(room_field_checkers3, 10349), new scr_room(room_field_checkers1, 10350), new scr_room(room_field_checkers5, 10351), new scr_room(room_field_checkers7, 10352), new scr_room(room_field_checkersboss, 10353), new scr_room(room_forest_savepoint1, 10354), new scr_room(room_forest_area0, 10355), new scr_room(room_forest_area1, 10356), new scr_room(room_forest_area2, 10357), new scr_room(room_forest_area2A, 10358), new scr_room(room_forest_puzzle1, 10359), new scr_room(room_forest_beforeclover, 10360), new scr_room(room_forest_area3A, 10361), new scr_room(room_forest_area3, 10362), new scr_room(room_forest_savepoint2, 10363), new scr_room(room_forest_smith, 10364), new scr_room(room_forest_area4, 10365), new scr_room(room_forest_dancers1, 10366), new scr_room(room_forest_secret1, 10367), new scr_room(room_forest_thrashmaker, 10368), new scr_room(room_forest_starwalker, 10369), new scr_room(room_forest_area5, 10370), new scr_room(room_forest_savepoint_relax, 10371), new scr_room(room_forest_maze1, 10372), new scr_room(room_forest_maze_deadend, 10373), new scr_room(room_forest_maze_susie, 10374), new scr_room(room_forest_maze2, 10375), new scr_room(room_forest_maze_deadend2, 10376), new scr_room(room_forest_savepoint3, 10377), new scr_room(room_forest_fightsusie, 10378), new scr_room(room_forest_afterthrash2, 10379), new scr_room(room_forest_afterthrash3, 10380), new scr_room(room_forest_afterthrash4, 10381), new scr_room(room_forest_castleview, 10382), new scr_room(room_forest_chase1, 10383), new scr_room(room_forest_chase2, 10384), new scr_room(room_forest_castlefront, 10385), new scr_room(room_cc_prison_cells, 10386), new scr_room(room_cc_prisonlancer, 10387), new scr_room(room_cc_prison_to_elevator, 10388), new scr_room(room_cc_prison2, 10389), new scr_room(room_cc_prisonelevator, 10390), new scr_room(room_cc_elevator, 10391), new scr_room(room_cc_prison_prejoker, 10392), new scr_room(room_cc_joker, 10393), new scr_room(room_cc_entrance, 10394), new scr_room(room_cc_1f, 10395), new scr_room(room_cc_rudinn, 10396), new scr_room(room_cc_2f, 10397), new scr_room(room_cc_rurus1, 10398), new scr_room(room_cc_3f, 10399), new scr_room(room_cc_hathy, 10400), new scr_room(room_cc_4f, 10401), new scr_room(room_cc_rurus2, 10402), new scr_room(room_cc_clover, 10403), new scr_room(room_cc_5f, 10404), new scr_room(room_cc_lancer, 10405), new scr_room(room_cc_6f, 10406), new scr_room(room_cc_throneroom, 10407), new scr_room(room_cc_preroof, 10408), new scr_room(room_cc_kingbattle, 10409), new scr_room(room_cc_prefountain, 10410), new scr_room(room_cc_fountain, 10411), new scr_room(room_empty, 10422), new scr_room(room_man, 10423)];
	return idsarr;
}
