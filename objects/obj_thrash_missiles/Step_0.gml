if (fallspeed == 0 && y < (__view_get(e__VW.YView, 0) - 80))
{
	timer = 30;
	fallspeed = speed;
	initialgravity = gravity;
	speed = 0;
	gravity = 0;
	image_angle += 180;
	direction += 180;
	x -= 20;
}
else if (timer > 0)
{
	timer--;
	if (timer <= 0)
	{
		speed = fallspeed;
		gravity = -initialgravity;
	}
}
if (fallspeed > 0 && y >= ((obj_growtangle.y + (obj_growtangle.sprite_height / 2)) - 30))
{
	snd_play(snd_bomb);
	d = instance_create(x, y, obj_animation_dx);
	d.sprite_index = spr_thrash_missile_explosion;
	d.depth = depth - 5;
	instance_destroy();
}
