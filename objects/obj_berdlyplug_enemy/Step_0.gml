ystart += gravity;
if (introtimer >= 0)
{
	introtimer++;
	x = lerp(xstart, 1112, introtimer / 10);
	y = lerp(ystart, 44, introtimer / 10);
	if (introtimer == 10)
	{
		introtimer = -1;
		xstart = x;
		ystart = y;
	}
	exit;
}
if (outrotimer >= 0)
{
	outrotimer++;
	x = lerp(xstart, outrox, outrotimer / 10);
	y = lerp(ystart, outroy, outrotimer / 10);
	if (outrotimer == 10)
	{
		instance_destroy();
		with (obj_ch2_scene25)
		{
			berdly_wire.visible = true;
			be_actor.visible = true;
		}
	}
	exit;
}
if (con == 0)
{
	siner += 0.4;
	y = ystart + (sin(siner / 6) * 3);
}
if (con == 1)
{
	timer++;
	y = lerp(ystart + (sin(siner / 6) * 3), ystart - 200, timer / 10);
	if (timer == 10)
	{
		timer = 0;
		con = 99;
	}
}
if (con == 2)
{
	timer++;
	y = lerp(ystart - 200, ystart + (sin(siner / 6) * 3), timer / 10);
	if (timer == 10)
	{
		timer = 0;
		con = 0;
	}
}
if (con == 3)
{
	timer++;
	x = lerp(xx, xstart, timer / 10);
	y = lerp(yy, ystart + (sin(siner / 6) * 3), timer / 10);
	if (timer == 10)
	{
		timer = 0;
		con = 0;
	}
}
if (alphacon == 1)
{
	if (image_alpha > 0)
		image_alpha -= 0.05;
	if (global.turntimer < 3)
		alphacon = 2;
}
if (alphacon == 2)
{
	image_alpha += 0.05;
	if (image_alpha >= 1)
		alphacon = 0;
}
