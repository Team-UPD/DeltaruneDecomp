if (init == 0)
	exit;
if (!breaking)
	image_angle += angle_speed;
if (flash)
	d3d_set_fog(true, c_white, 0, 1);
draw_self();
if (flash)
{
	d3d_set_fog(false, c_black, 0, 0);
	flash = 0;
}
