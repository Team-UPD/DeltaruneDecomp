timer = 0;
darkamt = 0;
with (obj_mainchara)
	battlemode = 1;
global.charinstance[0] = obj_mainchara;
alarm[0] = 5;
side = 0;
homing = 0;
if (room == room_dark_chase2)
	homing = 2;
if (room == room_forest_chase1)
	homing = 3;
if (room == room_forest_chase2)
	homing = 4;
sidespade[0] = 4732847832;
sidespade[1] = 4732847832;
intensity = 0;
tile_fade = 0;
if (room == room_forest_chase1 || room == room_forest_chase2 || room == room_dark_chase1)
{
	alpha_changed = 0;
	tile_fade = 1;
	tile_layer_choice = 99999;
	tilearray = tile_get_ids_at_depth(tile_layer_choice);
	for (var i = 0; i < array_length_1d(tilearray); i++)
		tile_set_alpha(tilearray[i], 0);
}
