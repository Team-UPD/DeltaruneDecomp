for (i = cardstart; i < arraysize; i++)
{
	var _index = (i + arrayoffset) % arraycap;
	draw_sprite(sprite_index, image_index, points_x[_index], points_y[_index]);
}
draw_self();
if (cardstart == 0)
{
	if (arraysize < arraycap)
	{
		points_x[arraysize] = x;
		points_y[arraysize] = y;
		arraysize++;
	}
	else
	{
		points_x[arrayoffset] = x;
		points_y[arrayoffset] = y;
		arrayoffset = (arrayoffset + 1) % arraycap;
	}
}
else
{
	cardstart++;
	if (cardstart >= arraysize)
		instance_destroy();
}
