timer += 1;
if (timer >= 2)
{
	if (image_alpha < 1)
		image_alpha += 0.1;
	if (image_alpha >= 1)
		active = 1;
}
if (timer == 2)
{
	move_towards_point(obj_mainchara.x + 20, obj_mainchara.y + 50, 8);
	image_angle = direction;
}
if (x >= (__view_get(e__VW.XView, 0) + 800))
	instance_destroy();
if (x <= (__view_get(e__VW.XView, 0) - 200))
	instance_destroy();
if (y > (__view_get(e__VW.YView, 0) + 600))
	instance_destroy();
if (y < (__view_get(e__VW.YView, 0) - 600))
	instance_destroy();
