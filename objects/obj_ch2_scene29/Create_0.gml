con = -1;
customcon = 0;
if (global.chapter != 2 || global.plot < 200 || global.plot >= 205)
{
	instance_destroy();
}
else
{
	scr_losechar();
	if (instance_exists(obj_caterpillarchara))
		instance_destroy(obj_caterpillarchara);
}
