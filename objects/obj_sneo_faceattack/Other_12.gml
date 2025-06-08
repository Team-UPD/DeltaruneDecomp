var xx = 0;
var yy = 0;
if (type == 1)
{
	xx = 62;
	yy = 32;
}
if (type == 2)
{
	xx = 34;
	yy = 64;
}
if (type == 3)
{
	xx = 52;
	yy = 102;
}
if (type != 0)
{
	targ = instance_create(x + xx, y + yy, obj_sneo_faceattack_target);
	targ.depth = depth - 999;
}
