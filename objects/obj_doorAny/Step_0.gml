if (init == 0)
{
	switch (image_index)
	{
		case 1:
			doorRoom = room + ROOM_INITIALIZE;
			break;
		case 2:
			doorRoom = room - ROOM_INITIALIZE;
			break;
		case 3:
			doorRoom = room + room_title_placeholder;
			break;
		case 4:
			doorRoom = room - room_title_placeholder;
			break;
		case 5:
			doorRoom = room + room_battletest;
			break;
		case 6:
			doorRoom = room - room_battletest;
			break;
		default:
			break;
	}
	if (image_index != 0)
		doorEntrance = image_index;
	if (doorSpecial != "none")
	{
	}
	init = 1;
}
