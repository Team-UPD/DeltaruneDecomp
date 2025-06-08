function scr_messagepriority(arg0)
{
	if (i_ex(obj_battlecontroller))
	{
		if (obj_battlecontroller.messagepriority < arg0)
		{
			obj_battlecontroller.messagepriority = arg0;
			return true;
		}
		else
		{
			return false;
		}
	}
	else
	{
		return false;
	}
}
