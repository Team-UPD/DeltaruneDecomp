if (!i_ex(rotator_target))
{
	instance_destroy();
	exit;
}
if (!instance_exists(obj_bqueen_breath_controller))
{
	instance_destroy();
	exit;
}
siner++;
rotator_target = obj_bqueen_breath_controller;
length += myspeed;
image_xscale += 0.02;
image_yscale += 0.02;
afterimagetimer++;
if (afterimagetimer >= 1)
{
	a = scr_afterimage();
	a.image_alpha = image_alpha / 3;
	a.fadeSpeed = 0.1;
	afterimagetimer = 0;
}
if (y >= (cameray() + 300))
{
	image_alpha -= 0.1;
	if (image_alpha <= 0)
	{
		instance_destroy();
		exit;
	}
}
if (!instance_exists(obj_bqueen_breath_controller))
{
	instance_destroy();
	exit;
}
if (type == 1)
{
	x = rotator_target.x + lengthdir_x(length, obj_bqueen_breath_controller.place1);
	y = rotator_target.y + lengthdir_y(length, obj_bqueen_breath_controller.place1);
	image_angle = obj_bqueen_breath_controller.place1;
}
if (type == 2)
{
	x = rotator_target.x + lengthdir_x(length, obj_bqueen_breath_controller.place2);
	y = rotator_target.y + lengthdir_y(length, obj_bqueen_breath_controller.place2);
	image_angle = obj_bqueen_breath_controller.place2;
}
