image_alpha -= rate;
if (image_alpha <= 0)
	instance_destroy();
if (hasboss == 1)
{
	x = boss.x;
	y = boss.y;
}
if (image_alpha > 1 && punch_telegraph == 1)
{
	punch_telegraph = 1;
	rate = -0.4;
}
