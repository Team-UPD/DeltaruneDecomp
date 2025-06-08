function scr_onscreen_tolerance(arg0, arg1)
{
	obj = arg0;
	spacer = arg1;
	if ((obj.x + obj.sprite_width + spacer) < camerax() || (obj.x - spacer) > (camerax() + 640) || (obj.y + obj.sprite_height + spacer) < cameray() || (obj.y - spacer) > (cameray() + 480))
		return false;
	else
		return true;
}
