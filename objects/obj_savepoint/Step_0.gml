if (myinteract == 3)
{
	if (instance_exists(mydialoguer) == false)
	{
		instance_create(0, 0, obj_savemenu);
		myinteract = 0;
	}
}
