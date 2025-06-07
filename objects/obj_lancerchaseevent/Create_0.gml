con = 0;
if (global.plot >= 15)
{
	instance_destroy();
}
else
{
	con = 1;
	susie = scr_dark_marker(1200, 760, spr_susieu_dark);
	with (susie)
		depth = 500000;
}
aftercon = 0;
tilearray = tile_get_ids_at_depth(99999);
for (var i = 0; i < array_length_1d(tilearray); i++)
	tile_set_alpha(tilearray[i], 0);
