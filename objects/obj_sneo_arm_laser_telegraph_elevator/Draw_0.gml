if (!i_ex(target))
{
	instance_destroy();
	exit;
}
if (laserflash == 0)
{
	laserflash = 1;
	draw_line_width_color(target.x + lengthdir_x(68, target.image_angle + 268), target.y + lengthdir_y(68, target.image_angle + 268), target.x + lengthdir_x(1000, target.image_angle + 268), target.y, 2, c_red, c_red);
}
else if (laserflash == 1)
{
	laserflash = 0;
}
