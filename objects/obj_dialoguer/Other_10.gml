active = 1;
xx = (19 * f) + __view_get(e__VW.XView, 0);
yy = (20 * f) + __view_get(e__VW.YView, 0);
xx = round(xx);
yy = round(yy);
if (side == 0)
{
	writer = instance_create(xx + (10 * f), yy - (5 * f), obj_writer);
	scr_facechoice();
	with (writer)
		dialoguer = 1;
}
if (side == 1)
{
	writer = instance_create(xx + (10 * f), yy + (150 * f), obj_writer);
	writer.skippable = skippable;
	scr_facechoice();
	with (writer)
		dialoguer = 1;
}
if (instance_exists(writer) && global.fc != 0)
{
	with (writer)
	{
		dialoguer = 1;
		if (originalcharline == 33)
			charline = 26;
	}
}
