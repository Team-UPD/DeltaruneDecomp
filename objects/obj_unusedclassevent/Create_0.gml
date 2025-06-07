con = 0;
lightsoff = 0;
if (global.plot >= 250)
{
	con = 99;
	instance_destroy();
}
else
{
	global.interact = 1;
	lightsoff = 1;
}
