function scr_instance_save_local_vars()
{
	__quickSaved = 1;
	__masterArray = variable_instance_get_names(id);
	for (var __n = 0; __n < array_length_1d(__masterArray); __n++)
	{
		___saveSpriteIndex = sprite_index;
		___saveImageIndex = image_index;
		___saveImageSpeed = image_speed;
		___saveXscale = image_xscale;
		___saveYscale = image_yscale;
		___saveAlpha = image_alpha;
		___saveBlend = image_blend;
		___saveAngle = image_angle;
		___saveX = x;
		___saveY = y;
		___saveSpeed = speed;
		___saveDirection = direction;
		___saveDepth = depth;
		___saveVisible = visible;
		___saveGravity = gravity;
		___saveGravityDirection = gravity_direction;
		___saveFriction = friction;
		if (__masterArray[__n] == "__myVar")
			__myVar[__n] = 0;
		else
			__myVar[__n] = variable_instance_get(id, __masterArray[__n]);
	}
}
