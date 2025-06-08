if (con == 0)
{
	with (obj_heroparent)
		image_alpha -= 0.1;
	with (obj_queen_enemy)
		image_alpha -= 0.1;
	if (obj_heroparent.image_alpha < 0)
		con = 1;
}
if (con == 1 && global.turntimer < 2)
	con = 2;
if (con == 2)
{
	with (obj_heroparent)
		image_alpha += 0.1;
	with (obj_queen_enemy)
		image_alpha += 0.1;
	if (obj_heroparent.image_alpha > 1)
		instance_destroy();
}
