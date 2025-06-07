if (instance_exists(target))
{
	active = 1;
	nowx = target.x;
	nowy = target.y;
}
else
{
	instance_destroy();
}
