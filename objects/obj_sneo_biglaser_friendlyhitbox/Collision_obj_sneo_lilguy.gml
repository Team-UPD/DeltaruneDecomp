exit;
if (image_yscale <= 0)
	exit;
if (collision_line(x, y, x + lengthdir_x(600, image_angle), obj_sneo_biglaser.y + lengthdir_y(600, image_angle), obj_sneo_lilguy, true, false))
{
	d = instance_create(other.x, other.y, obj_sneo_crew_dissolve);
	d.direction = direction;
	d.depth = depth - 2;
	instance_destroy(other);
}
