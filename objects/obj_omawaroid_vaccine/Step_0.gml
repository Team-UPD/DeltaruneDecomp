d = instance_nearest(x, y, obj_viro_needle);
if (d != -4 && d.active && x < d.x)
{
	var distance = point_distance(x, y, d.x, d.y);
	if (distance <= 80)
		y = scr_movetowards(y, d.y, (80 - distance) / 5);
}
if (x > obj_growtangle.x && image_alpha == 0)
	instance_destroy();
