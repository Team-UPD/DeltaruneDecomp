if (init == 0)
	event_user(0);
if (movecount >= movemax || !i_ex(target))
{
	instance_destroy();
}
else if (moved == 0)
{
	target.x += xx[movecount] * xOrientation;
	target.y += yy[movecount] * yOrientation;
	if (image[movecount] != -1 && o_boxingcontroller.wireframe_boxing == 0)
		target.image_index = image[movecount];
	movecount++;
}
moved = 0;
