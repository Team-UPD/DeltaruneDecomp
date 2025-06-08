if (instance_exists(obj_mainchara))
{
	if (obj_mainchara.x < 200)
		startside = "Left";
	else
		startside = "Right";
}
spawnedGates = 0;
spawnedViro = 0;
viro = 0;
if (instance_exists(obj_overworld_bulletarea))
{
	with (obj_overworld_bulletarea)
		visible = false;
}
