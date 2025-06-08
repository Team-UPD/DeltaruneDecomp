siner = 0;
mode = 0;
remcameray = cameray();
blend = 1;
scr_depth();
broken = 0;
image_index = 0;
image_speed = 0;
breakable = 0;
if (global.flag[447] == 1)
{
	scr_forcefield(3960, 280, 2, 6, 1, 0);
	instance_destroy();
}
