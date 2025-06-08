if (con == 1)
{
	global.flag[340] = 1;
	con = -1;
	layer_set_visible("TILES_Secret", false);
	safe_delete(exitcollider);
}
