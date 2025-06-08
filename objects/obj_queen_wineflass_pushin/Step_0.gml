image_angle = obj_queen_wineglass.image_angle;
image_xscale = obj_queen_wineglass.image_xscale;
image_yscale = obj_queen_wineglass.image_yscale;
x = obj_queen_wineglass.x;
y = obj_queen_wineglass.y;
if (instance_exists(obj_heart))
{
	repeat (10)
	{
		if (!place_meeting(x, y, obj_heart))
		{
			obj_heart.x += lengthdir_x(1, point_direction(obj_heart.x, obj_heart.y, obj_queen_wineglass.x, obj_queen_wineglass.y));
			obj_heart.y += lengthdir_y(1, point_direction(obj_heart.x, obj_heart.y, obj_queen_wineglass.x, obj_queen_wineglass.y));
		}
	}
}
