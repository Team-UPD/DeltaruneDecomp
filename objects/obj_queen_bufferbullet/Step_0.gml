if (bufferstate == 0 && scr_queen_buffercheck())
{
	image_blend = c_gray;
	bufferstate = 1;
	originalspeed = speed;
	speed = 0;
	destroyonhit = 0;
}
else if (bufferstate == 1 && !scr_queen_buffercheck())
{
	image_blend = c_white;
	speed = originalspeed;
	bufferstate = 0;
	sprite_index = spr_queen_jpegbullet;
	destroyonhit = 1;
}
timer++;
if (fadeaway == 1 && timer >= 60)
{
	image_alpha -= 0.1;
	if (image_alpha < 0)
		instance_destroy();
}
if (slowdown == 1)
{
	if (speed > 3)
		speed -= 0.35;
}
if (rotate == 1)
	image_angle += 5;
