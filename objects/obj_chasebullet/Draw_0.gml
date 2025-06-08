if (dont == 0)
{
	if (active == 0)
	{
		futuredir = point_direction(x, y, obj_heart.x + 8, obj_heart.y + 8);
		draw_sprite_ext(spr_diamondbullet_form, 0, x, y, 3 - (image_alpha * 2), 3 - (image_alpha * 2), futuredir, c_white, 1 - image_alpha);
		if (image_alpha < 1)
		{
			image_alpha += 0.08;
		}
		else
		{
			move_towards_point(obj_heart.x + 8, obj_heart.y + 8, 4);
			futuredir = direction;
			active = 1;
			friction = -0.1;
		}
	}
	draw_sprite_ext(sprite_index, 0, x, y, 2 - image_alpha, 2 - image_alpha, futuredir, c_white, image_alpha);
	if (x < (__view_get(e__VW.XView, 0) - 40))
		instance_destroy();
	if (x > (__view_get(e__VW.XView, 0) + 680))
		instance_destroy();
	if (y < (__view_get(e__VW.YView, 0) - 40))
		instance_destroy();
	if (y > (__view_get(e__VW.YView, 0) + 520))
		instance_destroy();
}
dont = 0;
