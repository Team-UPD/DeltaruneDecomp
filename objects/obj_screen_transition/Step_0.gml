if (!_active)
	exit;
fadeout = lerp(fadeout, 0, 0.125);
xscale *= 0.95;
yscale *= 0.99;
yy *= 0.99;
if (_disable_timer)
	exit;
_timer--;
if (_timer <= 0)
{
	_disable_timer = true;
	if (global.is_console)
	{
		var _loading = instance_create(0, 0, obj_screen_loading);
		_loading.show_loading_screen(_target_chapter, _callback);
		_loading.depth = -1000;
	}
	else
	{
		_callback(_target_chapter);
	}
}
