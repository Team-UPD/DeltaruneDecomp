con = -1;
visible = true;
exitcollider = 0;
if (global.chapter != 2)
{
	instance_destroy();
}
else if (global.flag[340] == 1)
{
	layer_set_visible("TILES_Secret", false);
}
else
{
	exitcollider = instance_create(0, 320, obj_solidblocksized);
	exitcollider.image_xscale = 1;
	exitcollider.image_yscale = 2;
}
