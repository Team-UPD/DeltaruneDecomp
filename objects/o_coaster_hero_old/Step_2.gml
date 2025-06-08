if (HeroID == 0 && instance_exists(obj_herokris))
{
	depth = 80;
	obj_herokris.depth = depth + 1;
}
if (HeroID == 1 && instance_exists(obj_herosusie))
{
	depth = 75;
	obj_herosusie.depth = depth + 1;
}
if (HeroID == 2 && instance_exists(obj_heroralsei))
{
	depth = 70;
	obj_heroralsei.depth = depth + 1;
}
back.x = x;
back.y = y + 8;
