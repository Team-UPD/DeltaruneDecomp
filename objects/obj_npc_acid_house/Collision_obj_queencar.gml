if (!bumped)
{
	bumped = true;
	snd_play(snd_bell);
	house_sprite.image_index = 1;
	global.flag[458]++;
	debug_message("global.flag[458]:" + string(global.flag[458]) + "/7");
	with (house_sprite)
	{
		var housecolor = c_white;
		if (image_index == 0)
			housecolor = c_red;
		if (image_index == 1)
			housecolor = c_blue;
		scr_fx_housesquare(x + (sprite_width / 2), y + (sprite_height / 2), housecolor);
	}
}
