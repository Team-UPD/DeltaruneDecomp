var _forcefield = instance_nearest(x + 120, y - 200, obj_forcefield);
if (!i_ex(_forcefield))
	exit;
if (buttonIndex == 0)
	instance_destroy(_forcefield);
with (_forcefield)
{
	x -= 240;
	y += 160;
	with (solid1)
	{
		x -= 240;
		y += 160;
	}
}
