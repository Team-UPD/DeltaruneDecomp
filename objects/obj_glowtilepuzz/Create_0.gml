record = 0;
tiletotal = 0;
image_xscale = 2;
image_yscale = 2;
image_speed = 0.1;
funtotal = 99;
order = 0;
funbuffer = 0;
stepnoise = 0;
wonamt = 0;
active = 0;
failtimer = 0;
failamt = 0;
talked = 0;
wonmax = 3;
plotamt = 1;
failmax = 200;
if (room == room_field_puzzle1)
{
	failmax = 240;
	wonmax = 3;
	plotamt = 35;
	for (i = 0; i < wonmax; i += 1)
	{
		block[i] = instance_create(1280 + (i * 40), 280, obj_soliddark);
		block[i].image_yscale = 2;
		spike1[i] = scr_dark_marker(1280 + (i * 40), 280, spr_spiketile);
		with (spike1[i])
			depth = 900000;
		spike2[i] = scr_dark_marker(1280 + (i * 40), 320, spr_spiketile);
		with (spike2[i])
			depth = 900000;
		if (global.plot >= 35)
		{
			active = 2;
			with (spike1[i])
				image_index = 1;
			with (spike2[i])
				image_index = 1;
			with (block[i])
				instance_destroy();
		}
	}
}
if (room == room_field_puzzle2)
{
	failmax = 240;
	wonmax = 3;
	plotamt = 38;
	for (i = 0; i < wonmax; i += 1)
	{
		if (global.plot >= 38)
			active = 2;
	}
}
shakecon = 0;
