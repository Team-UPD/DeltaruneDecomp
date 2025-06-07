if (dhaver == 1)
{
	with (myd)
	{
		writingx = __view_get(e__VW.XView, 0) + 40;
		writingy = __view_get(e__VW.YView, 0) + 20;
	}
}
if (v == 1)
{
	__view_set(e__VW.XView, 0, c.x - vx);
	__view_set(e__VW.YView, 0, c.y - vy);
}
