if (room == room_field_puzzle1)
{
	for (i = 0; i < wonmax; i += 1)
	{
		with (block[i])
			instance_destroy();
		block[i] = instance_create(1280 + (i * 40), 280, obj_soliddark);
		block[i].image_yscale = 2;
		with (spike1[i])
			image_index = 0;
		with (spike2[i])
			image_index = 0;
	}
}
wonamt = 0;
