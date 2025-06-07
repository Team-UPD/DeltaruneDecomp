function scr_dogcheck()
{
	var rooms = scr_get_room_list();
	var dog_check = true;
	for (var i = 0; i < array_length_1d(rooms); i++)
	{
		if (rooms[i].room_id == global.currentroom)
		{
			dog_check = false;
			break;
		}
	}
	return dog_check;
}
