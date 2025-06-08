con = 0;
realral = 0;
realsus = 0;
if (instance_exists(obj_caterpillarchara))
{
	with (obj_caterpillarchara)
	{
		if (name == "susie")
			other.realsus = id;
		if (name == "ralsei")
			other.realral = id;
	}
}
if (global.flag[420] == 1 || realral == 0 || realsus == 0)
	instance_destroy();
npcral = 0;
npcsus = 0;
