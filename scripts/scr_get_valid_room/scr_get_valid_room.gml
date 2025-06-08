function scr_get_valid_room(arg0, arg1, arg2 = 0)
{
	var chapter = arg0;
	var room_id = arg1;
	var plot = arg2;
	var current_room = new scr_valid_room(scr_get_room_by_id(room_id), plot);
	var valid_rooms;
	if (chapter == 2)
		valid_rooms = [new scr_valid_room(18, 0), new scr_valid_room(61, 0), new scr_valid_room(62, 0), new scr_valid_room(75, 0), new scr_valid_room(78, 0), new scr_valid_room(83, 0), new scr_valid_room(89, 0), new scr_valid_room(112, 0), new scr_valid_room(115, 0), new scr_valid_room(126, 0), new scr_valid_room(121, 0), new scr_valid_room(128, 0), new scr_valid_room(133, 0), new scr_valid_room(152, 0), new scr_valid_room(157, 0), new scr_valid_room(187, 0), new scr_valid_room(193, 0), new scr_valid_room(171, 0), new scr_valid_room(196, 0), new scr_valid_room(199, 0)];
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
