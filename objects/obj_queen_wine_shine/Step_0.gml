x = obj_queen_battlesolid_wine.x - 8;
y = obj_queen_battlesolid_wine.y - 15;
timer++;
image_angle += 3;
if (con == 0)
{
	image_alpha += 0.07;
	image_xscale += 0.05;
	image_yscale += 0.05;
	if (image_alpha > 1.1)
		con = 1;
}
if (con == 1)
{
	image_alpha -= 0.07;
	image_xscale -= 0.05;
	image_yscale -= 0.05;
	if (image_alpha < 0)
		instance_destroy();
}
