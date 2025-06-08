siner += 2;
if (con == 0)
{
	timer++;
	if (o_boxingqueen.firstwheelattack == 0 && timer > 79)
		instance_destroy();
	if (o_boxingqueen.firstwheelattack == 1 && timer > 29)
		instance_destroy();
}
flashtimer++;
if (flashtimer == 5)
	visible = false;
if (flashtimer == 10)
{
	visible = true;
	image_blend = c_yellow;
	flashtimer = 0;
}
