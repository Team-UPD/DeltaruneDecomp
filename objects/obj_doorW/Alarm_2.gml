global.entrance = 23;
instance_create(0, 0, obj_persistentfadein);
if (room == room_town_south)
	room_goto(room_hospital_lobby);
if (room == room_hospital_lobby)
	room_goto(room_town_south);
if (room == room_town_mid)
	room_goto(room_alphysalley);
if (room == room_alphysalley)
	room_goto(room_town_mid);
if (room == room_town_north)
	room_goto(room_beach);
if (room == room_beach)
	room_goto(room_town_north);
