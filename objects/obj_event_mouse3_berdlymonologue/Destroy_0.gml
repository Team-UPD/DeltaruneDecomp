if (d != -4)
{
	with (d)
		instance_destroy();
}
if (instance_exists(obj_writer))
{
	with (obj_writer)
		instance_destroy();
}
global.interact = 0;
