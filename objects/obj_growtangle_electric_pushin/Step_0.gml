image_xscale = obj_growtangle.image_xscale - 0.4;
image_yscale = obj_growtangle.image_yscale - 0.4;
image_angle = obj_growtangle.image_angle;
x = obj_growtangle.x;
y = obj_growtangle.y;
visible = false;
repeat (6)
{
	if (!place_meeting(x, y, obj_heart))
	{
		obj_heart.x += lengthdir_x(1, point_direction(obj_heart.x, obj_heart.y, obj_growtangle.x, obj_growtangle.y));
		obj_heart.y += lengthdir_y(1, point_direction(obj_heart.x, obj_heart.y, obj_growtangle.x, obj_growtangle.y));
	}
}
