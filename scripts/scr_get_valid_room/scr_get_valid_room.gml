function scr_get_valid_room(arg0, arg1, arg2 = 0)
{
	var chapter = arg0;
	var room_id = arg1;
	var plot = arg2;
	var current_room = new scr_valid_room(scr_get_room_by_id(room_id), plot);
	var valid_rooms;
	if (chapter == 1)
		valid_rooms = [new scr_valid_room(2, 0), new scr_valid_room(35, 11), new scr_valid_room(40, 11), new scr_valid_room(45, 16), new scr_valid_room(49, 33), new scr_valid_room(59, 42), new scr_valid_room(68, 55), new scr_valid_room(71, 55), new scr_valid_room(73, 60), new scr_valid_room(82, 75), new scr_valid_room(90, 75), new scr_valid_room(96, 120), new scr_valid_room(97, 130), new scr_valid_room(107, 156), new scr_valid_room(114, 165), new scr_valid_room(123, 165), new scr_valid_room(126, 175), new scr_valid_room(111, 156), new scr_valid_room(56, 0)];
	var is_valid = false;
	for (var i = 0; i < array_length_1d(valid_rooms); i++)
	{
		if (scr_get_id_by_room_index(current_room.room_index) == scr_get_id_by_room_index(valid_rooms[i].room_index))
		{
			is_valid = true;
			break;
		}
	}
	if (!is_valid)
	{
		current_room.room_index++;
		for (var i = 0; i < array_length_1d(valid_rooms); i++)
		{
			if (scr_get_id_by_room_index(current_room.room_index) == scr_get_id_by_room_index(valid_rooms[i].room_index))
			{
				is_valid = true;
				break;
			}
		}
	}
	if (!is_valid)
		current_room.room_index--;
	return current_room.room_index;
}

function scr_valid_room(arg0, arg1) constructor
{
	room_index = arg0;
	plot = arg1;
}

function scr_add_valid_room(arg0, arg1, arg2) constructor
{
}
