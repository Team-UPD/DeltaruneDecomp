if (mcon == 1)
{
	hpart = choose(-6, -8, -10, -12);
	for (i = 0; i < mousecount; i++)
	{
		mouse = instance_create(x, y, obj_maus_liddle);
		if ((i % 2) == 0)
			mouse.hspeed = hpart + random(3);
		factor = (maxmousecount * 1.5) / (mousecount + (maxmousecount / 2));
		if (mousecount <= 5)
			factor = 0.8;
		mouse.sineradd *= factor;
		mouse.maxamplitude *= factor;
	}
	basket = instance_create(camerax() + 340, cameray() - 160, obj_maus_split_basket);
	mtimer = 0;
	mcon = 2;
}
if (mcon == 2)
{
	image_xscale = lerp(image_xscale, 0, 0.1);
	image_yscale = lerp(image_xscale, 0, 0.1);
	mtimer++;
	if (mtimer == 300)
	{
		with (obj_maus_liddle)
		{
			if (captured == 0)
				con = 2;
		}
		with (obj_maus_split_basket)
		{
			if (con == 1)
			{
				con = 10;
				vspeed = -6;
				endtimer = 0;
			}
		}
	}
	if (mtimer >= 360 || !instance_exists(obj_maus_liddle))
		mcon = 3;
}
if (mcon == 3)
{
	image_xscale = lerp(image_xscale, 2, 0.2);
	image_yscale = lerp(image_xscale, 2, 0.2);
	if (image_xscale >= 1.95)
	{
		if (mercycount > 0)
			image_xscale = 2;
		image_yscale = 2;
		mcon = 0;
		with (obj_mauswheel_enemy)
		{
			actcon = 18;
			scr_mercyadd(myself, obj_maus_split.mercycount);
			if (obj_maus_split.mercycount == 0)
				obj_mauswheel_enemy.actfailure = 1;
			if (global.mercymod[myself] >= 100)
				actcon = 19;
		}
		instance_destroy();
		with (obj_maus_split)
			instance_destroy();
	}
}
