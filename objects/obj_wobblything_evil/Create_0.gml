global.charinstance[0] = obj_mainchara;
image_speed = 0;
image_xscale = 2;
image_yscale = 2;
scr_depth();
wobbled = 0;
if (room == room_dark_wobbles)
{
	tilearray = tile_get_ids_at_depth(777777);
	for (var i = 0; i < array_length_1d(tilearray); i++)
		tile_set_alpha(tilearray[i], 0);
}
