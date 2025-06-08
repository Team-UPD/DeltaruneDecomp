if (image_angle > 90 && image_angle < 270)
	image_angle -= 180;
if (bufferstate == 0 && scr_queen_buffercheck())
{
	image_blend = c_gray;
	bufferstate = 1;
	originalspeed = speed;
	speed = 0;
	image_speed = 0;
}
else if (bufferstate == 1 && !scr_queen_buffercheck())
{
	image_blend = c_white;
	speed = originalspeed;
	bufferstate = 0;
	sprite_index = spr_queen_jpegbullet;
	image_speed = 1;
	if (active == 0)
	{
		scr_bullet_heal(damage);
		instance_destroy();
	}
}
timer++;
if (fadeaway == 1 && timer >= 90)
{
	image_alpha -= 0.1;
	if (image_alpha < 0)
		instance_destroy();
}
if (slowdown == 1)
{
	if (speed > 2)
		speed -= 0.2;
}
