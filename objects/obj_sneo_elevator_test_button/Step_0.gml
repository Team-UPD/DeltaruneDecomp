if (!instance_exists(obj_sneo_elevator_test))
{
	instance_destroy();
}
else
{
	y = obj_sneo_elevator_test.y;
	x = obj_sneo_elevator_test.x;
}
invincible--;
if (invincible > 0)
	image_blend = c_gray;
else
	image_blend = #00A2E8;
