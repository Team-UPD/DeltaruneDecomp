function scr_onscreen(arg0)
{
	obj = arg0;
	spacer = 0;
	if ((obj.x + obj.sprite_width + spacer) < camerax() || (obj.x - spacer) > (camerax() + 640) || (obj.y + obj.sprite_height + spacer) < cameray() || (obj.y - spacer) > (cameray() + 480))
		return false;
	else
		return true;
}
