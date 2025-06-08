if (instance_exists(obj_mainchara) && obj_mainchara.x >= 320 && global.flag[354] == 0 && spawnedGates == 0 && spawnedViro == 0)
{
	spawnedGates = 1;
	spawnedViro = 1;
	leftgate = instance_create(200, 240, obj_forcefield);
	leftgate.image_xscale = 2;
	leftgate.image_yscale = 8;
	rightgate = instance_create(2080, 240, obj_forcefield);
	rightgate.image_xscale = 2;
	rightgate.image_yscale = 8;
	viro = instance_create(380, -128, obj_ow_virokun_mansion_east_1f_d);
}
if (global.flag[354] == 1 && spawnedViro == 0)
{
	if (startside == "Left")
		viro = instance_create(380, -128, obj_ow_virokun_mansion_east_1f_d);
	if (startside == "Right")
		viro = instance_create(room_width - 380 - (sprite_width * 2), -128, obj_ow_virokun_mansion_east_1f_d);
	spawnedViro = 1;
}
if (instance_exists(obj_mainchara))
{
	if (obj_mainchara.x > 200 && i_ex(viro))
		obj_mainchara.battlemode = 1;
}
if (instance_exists(obj_mainchara))
{
	if (obj_mainchara.battlemode == 1)
	{
		if (instance_exists(obj_overworld_bulletarea))
		{
			with (obj_overworld_bulletarea)
				visible = true;
		}
	}
}
if (spawnedViro == 1 && !i_ex(viro))
{
	obj_mainchara.battlemode = 0;
	if (instance_exists(obj_overworld_bulletarea))
	{
		with (obj_overworld_bulletarea)
			instance_destroy();
	}
}
if (global.flag[354] == 1)
{
	if (instance_exists(obj_forcefield))
	{
		with (obj_forcefield)
			instance_destroy();
	}
}
