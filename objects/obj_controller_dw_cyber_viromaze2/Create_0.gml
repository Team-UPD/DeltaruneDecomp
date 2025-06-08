con = 0;
noleavefield = 0;
if (global.flag[352] == 1)
{
	if (instance_exists(obj_forcefield))
	{
		with (obj_forcefield)
			instance_destroy();
	}
}
