function scr_setparty(arg0 = false, arg1 = false)
{
	var kris = 30;
	var slot = 0;
	var __make = true;
	if (!instance_exists(kris))
		__make = false;
	scr_losechar();
	with (obj_caterpillarchara)
		instance_destroy();
	if (arg0 == true)
	{
		scr_getchar(2);
		if (__make)
		{
			with (scr_makecaterpillar(kris.x, kris.y, 2, slot))
			{
				halign = (global.darkzone == 0) ? 3 : 6;
				valign = (global.darkzone == 0) ? 6 : 16;
				x -= halign;
				y -= valign;
			}
		}
		slot++;
	}
	if (arg1 == true)
	{
		scr_getchar(3);
		if (__make)
		{
			with (scr_makecaterpillar(kris.x, kris.y, 3, slot))
			{
				halign = 2;
				valign = 12;
				x -= halign;
				y -= valign;
			}
		}
		slot++;
	}
}
