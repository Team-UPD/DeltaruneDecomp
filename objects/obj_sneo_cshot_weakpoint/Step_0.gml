if (x >= (room_width + 100) || x <= -100 || y >= (room_height + 100) || y <= -100)
	instance_destroy();
x = barrier.x;
y = barrier.y;
image_angle += angle_speed;
if (deathtimer > 0)
{
	deathtimer--;
	if (deathtimer == 0)
	{
		anim = instance_create(x, y, obj_yshot_anim);
		anim.image_xscale = 3;
		anim.image_yscale = 3;
		with (anim)
			sprite_index = spr_yheart_shot_hit3;
		instance_destroy(barrier);
		instance_destroy();
	}
}
