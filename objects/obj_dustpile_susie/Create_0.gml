image_xscale = 2;
image_yscale = 2;
siner = 0;
alarm[0] = 2;
bust = 0;
con = 1;
if (global.plot >= 14)
{
	instance_destroy();
}
else
{
	partysus = instance_create(500, 500, obj_caterpillarchara);
	with (partysus)
		visible = 0;
}
