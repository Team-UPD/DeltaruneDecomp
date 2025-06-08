buffer = 0;
saved = 0;
selnoise = 0;
movenoise = 0;
depth = 10;
threebuffer = 0;
hasitems = false;
if (global.chapter == 2)
{
	if (scr_havechar(2))
		global.cinstance[0] = instance_create(obj_mainchara.x - 3, obj_mainchara.y - 6, obj_caterpillarchara);
}
