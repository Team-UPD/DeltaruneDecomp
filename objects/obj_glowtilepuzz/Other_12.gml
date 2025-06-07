funbuffer = 0;
snd_play(snd_noise);
with (obj_glowtile)
{
	active = 0;
	stepped = 0;
	stepbuffer = -1;
	sprite_index = spr_glowtile_off;
}
if (wonamt < wonmax)
{
	if (wonamt == 0)
	{
		choice1 = 2;
		choice2 = 2;
		funtotal = 1;
	}
	if (wonamt == 1)
	{
		choice1 = 0;
		choice2 = 1;
		funtotal = 2;
	}
	if (wonamt >= 2)
	{
		choice1 = 1;
		choice2 = 2;
		funtotal = 2;
	}
	choice3 = choice1;
	if (room == room_field_puzzle2)
	{
		if (wonamt == 0)
		{
			choice1 = 3;
			choice2 = 3;
			choice3 = 3;
			funtotal = 1;
		}
		if (wonamt == 1)
		{
			choice1 = 2;
			choice2 = 2;
			choice3 = 1;
			funtotal = 2;
		}
		if (wonamt == 2)
		{
			choice1 = 2;
			choice2 = 3;
			choice3 = 4;
			funtotal = 3;
		}
		if (wonamt >= 3)
		{
			choice1 = 1;
			choice2 = 0;
			choice3 = 4;
			funtotal = 3;
		}
	}
	with (tileid[choice1])
	{
		active = 1;
		sprite_index = spr_glowtile_step;
	}
	with (tileid[choice2])
	{
		active = 1;
		sprite_index = spr_glowtile_step;
	}
	with (tileid[choice3])
	{
		active = 1;
		sprite_index = spr_glowtile_step;
	}
}
