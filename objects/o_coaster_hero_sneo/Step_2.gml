if (HeroID == 0)
{
	depth = 80;
	if (instance_exists(obj_herokris))
		obj_herokris.depth = depth + 1;
}
if (HeroID == 1)
{
	depth = 75;
	if (instance_exists(obj_herosusie))
		obj_herosusie.depth = depth + 1;
}
if (HeroID == 2)
{
	depth = 70;
	if (instance_exists(obj_heroralsei))
		obj_heroralsei.depth = depth + 1;
}
if (instance_exists(obj_encounterbasic))
{
	if (HeroID == 0)
	{
	}
	if (HeroID == 1)
		obj_encounterbasic.c[1].depth = depth + 1;
	if (HeroID == 2)
		obj_encounterbasic.c[2].depth = depth + 1;
}
