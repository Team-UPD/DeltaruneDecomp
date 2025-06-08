con = -1;
customcon = 0;
noellegame = true;
gamecon = 0;
doormoved = 0;
if (global.chapter != 2 || global.flag[316] == 1)
{
	instance_destroy();
}
else
{
	scr_losechar();
	if (instance_exists(obj_caterpillarchara))
		instance_destroy(obj_caterpillarchara);
	scr_getchar(2);
	scr_getchar(3);
}
