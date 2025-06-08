if (i_ex(collisionObject))
{
	ox = (collisionObject.bbox_left + collisionObject.bbox_right) / 2;
	oy = collisionObject.bbox_bottom;
	lw = leaveAreaPixelLeeway;
	if (point_in_rectangle(ox, oy, x, y, x + sprite_width, y + sprite_height))
	{
		inside = 1;
		obj_camera_advanced.currentView = myView;
	}
	else if (revertViewWhenOutsideArea)
	{
		if (!point_in_rectangle(ox, oy, x - lw, y - lw, x + sprite_width + lw, y + sprite_height + lw))
		{
			if (inside == 1)
			{
			}
			inside = 0;
			if (obj_camera_advanced.currentView == myView)
				obj_camera_advanced.currentView = defaultOutsideView;
		}
	}
}
