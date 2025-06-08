function scr_instance_load_local_vars()
{
	for (var __n = 0; __n < array_length_1d(__masterArray); __n++)
	{
		sprite_index = ___saveSpriteIndex;
		image_index = ___saveImageIndex;
		image_speed = ___saveImageSpeed;
		image_xscale = ___saveXscale;
		image_yscale = ___saveYscale;
		image_alpha = ___saveAlpha;
		image_blend = ___saveBlend;
		image_angle = ___saveAngle;
		x = ___saveX;
		y = ___saveY;
		speed = ___saveSpeed;
		direction = ___saveDirection;
		depth = ___saveDepth;
		visible = ___saveVisible;
		gravity = ___saveGravity;
		gravity_direction = ___saveGravityDirection;
		friction = ___saveFriction;
		if (__masterArray[__n] != "__myVar" && __masterArray[__n] != "__masterArray")
			variable_instance_set(id, __masterArray[__n], __myVar[__n]);
	}
}
