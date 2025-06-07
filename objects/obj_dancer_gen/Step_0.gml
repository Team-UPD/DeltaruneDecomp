if (instance_exists(obj_lightfairy))
	obj_lightfairy.factor = battlealpha * 2;
if (instance_exists(obj_mainchara))
{
	obj_mainchara.battlemode = 0;
	for (i = 0; i < areas; i += 1)
	{
		if (obj_mainchara.x > areax1[i] && obj_mainchara.x < areax2[i] && obj_mainchara.y > areay1[i] && obj_mainchara.y < areay2[i])
			obj_mainchara.battlemode = 1;
	}
}
