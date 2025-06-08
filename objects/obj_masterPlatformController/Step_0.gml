if (init == 1)
{
	noelle = instance_create(obj_controller_city_mice3.noelle.x + 4, obj_controller_city_mice3.noelle.y, obj_noelle_scared);
	with (noelle)
	{
		hastarget = 1;
		jumppuzzle = 1;
		if (instance_exists(obj_masterPlatformController))
			target = obj_masterPlatformController.plat[0];
	}
	with (obj_controller_city_mice3)
	{
		with (noelle)
			instance_destroy();
	}
	active = 1;
	init = 2;
}
if (active == 1)
{
	waitbuffer--;
	if (obj_controller_city_mice3.micescore >= 1)
		hasbegun = 1;
	if (makenewplatform == 1 && waitbuffer <= 0 && freeze == 0)
	{
		with (obj_rotationtile_tower)
			phase++;
		currentPlatform++;
		plat[currentPlatform] = instance_create(x, y, obj_rotationtile_tower);
		with (plat[currentPlatform])
		{
			x = 640;
			y = 480;
		}
		makenewplatform = 0;
		waitbuffer = 30;
	}
	if (mouseSpawn == true && plat[currentPlatform - 1].tilecon == 0)
	{
		with (plat[currentPlatform - 1])
		{
			hole.mousecreate = 1;
			hole.gentimer = 20;
		}
		freezespawn = 60;
		mouseSpawn = false;
	}
	freezespawn--;
	if (freezespawn == 0)
		global.interact = 0;
}
