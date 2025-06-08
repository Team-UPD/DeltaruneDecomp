timer++;
if (dontalpha == 0)
	image_alpha += 0.2;
gravity = 1;
if (y > startY)
{
	y = startY;
	gravity = 0;
	if (room == room_dw_mansion_dininghall)
	{
		snd_stop(snd_impact);
		snd_play(snd_impact);
		instance_create(0, 0, obj_shake);
	}
}
if (y == startY && timer > 15)
{
	newsaucer = instance_create(x, y, obj_saucer);
	newsaucer.mode = 1;
	newsaucer.content = 0;
	with (newsaucer)
		scr_depth();
	instance_destroy();
}
