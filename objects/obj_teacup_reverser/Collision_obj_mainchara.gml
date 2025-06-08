var _teacups = obj_teacup;
if (!is_undefined(specificTeacup))
	_teacups = specificTeacup;
with (_teacups)
{
	reverse = true;
	tutorialRide = false;
	y = endY;
	with (obj_teacup_bullet)
	{
		if (master == other.id)
			instance_destroy();
	}
}
