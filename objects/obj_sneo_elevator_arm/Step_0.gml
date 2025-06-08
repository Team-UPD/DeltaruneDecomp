if (!instance_exists(obj_sneo_bulletcontroller))
{
	instance_destroy();
	exit;
}
siner++;
image_angle = 270 + (sin(siner / 6) * 8);
var xx = camerax() + camerawidth();
if (con == 0)
{
	movetimer++;
	x = lerp(xx + 100, xx + 10, movetimer / 10);
	if (movetimer == 10)
	{
		movetimer = 0;
		con = 1;
	}
}
if (con == 1)
	x = xx + 10;
if (con == 2)
{
	movetimer++;
	x = lerp(xx + 10, xx + 100, movetimer / 10);
	if (movetimer == 10)
		instance_destroy();
}
timer++;
if ((timer == 20 && obj_sneo_bulletcontroller.difficulty == 0) || (timer == 6 && obj_sneo_bulletcontroller.difficulty != 0))
{
	d = instance_create(x - 90, y, obj_sneo_biglaser_elevator);
	d.direction = -180;
	d.image_angle = -180;
	d.depth -= 1;
	d.parent = id;
}
if ((timer == 39 && obj_sneo_bulletcontroller.difficulty == 0) || (timer == 25 && obj_sneo_bulletcontroller.difficulty != 0))
{
	con = 2;
	if (lastType == -1)
		obj_sneo_bulletcontroller.arm1 = -1;
	if (lastType == 0)
		obj_sneo_bulletcontroller.arm2 = -1;
	if (lastType == 1)
		obj_sneo_bulletcontroller.arm3 = -1;
}
