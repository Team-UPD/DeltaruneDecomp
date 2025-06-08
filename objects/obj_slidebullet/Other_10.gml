if (!hit)
{
	var _top = min((y - yChange) + sprite_height, y - 2);
	if (collision_rectangle((x - (sprite_width / 2)) + 10, _top, (x + (sprite_width / 2)) - 10, y, obj_heart, true, true))
		event_user(5);
}
