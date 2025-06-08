if (screencount < screenmax)
{
	var x_offset = 0;
	if (global.lang == "ja")
	{
		if (screencount == 1)
			x_offset -= 12;
		else if (screencount == 3)
			x_offset += 18;
	}
	screen[screencount] = instance_create((screenx[screencount] * 2) + camerax() + x_offset, (screeny[screencount] * 2) + cameray(), obj_queenscreen);
	screen[screencount].sprite_index = scr_84_get_sprite("spr_queenscreen");
	screen[screencount].image_index = screenimage[screencount];
	screencount++;
}
alarm[5] = 2;
