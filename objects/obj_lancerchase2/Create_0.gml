con = 0;
if (room == room_forest_chase1 || room == room_forest_chase2)
{
	tilearray = tile_get_ids_at_depth(99999);
	for (var i = 0; i < array_length_1d(tilearray); i++)
		tile_set_alpha(tilearray[i], 0);
}
if (room == room_forest_chase1)
	con = 1;
if (room == room_forest_chase2)
	con = 20;
if (global.plot >= 150)
{
	con = 999;
	instance_destroy();
}
dmax = 20;
siner = 0;
