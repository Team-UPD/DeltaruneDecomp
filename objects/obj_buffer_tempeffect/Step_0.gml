if (scr_queen_buffercheck())
{
	image_speed = 0;
	exit;
}
else if (image_speed == 0)
{
	image_speed = 1;
}
init = 1;
if (animdone)
{
	timer++;
	if (timer >= endtime)
		instance_destroy();
}
