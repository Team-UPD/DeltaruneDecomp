con = -1;
if (global.plot < 50)
{
	scr_losechar();
	if (instance_exists(obj_caterpillarchara))
		instance_destroy(obj_caterpillarchara);
	scr_getchar(2);
	if (global.tempflag[38] == 0)
	{
		con = 1;
		scr_makecaterpillar(obj_mainchara.x - 40, obj_mainchara.y, 2, 0);
	}
	else
	{
		global.plot = 50;
		global.interact = 0;
	}
}
else
{
	instance_destroy();
}
