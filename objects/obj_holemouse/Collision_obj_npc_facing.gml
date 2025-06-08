if (nointeract == false)
{
	if (other.lifetimer > 20)
	{
		if (room == room_dw_city_mice && con == 1)
		{
			with (other)
			{
				noelle = instance_create(x, y, obj_noelle_scared);
				noelle.con = 0;
				noelle.targetx = x;
				noelle.targety = y;
				noelle.alarm[0] = 1;
				noelle.extflag = "mice1Scare";
				instance_destroy();
			}
			if (instance_exists(obj_controller_dw_city_mice))
				obj_controller_dw_city_mice.scaredAgain = 0;
		}
		if (room == room_dw_city_mice2 && con == 1 && !d_ex())
		{
			with (other)
			{
				scaredNoelle = instance_create(x, y, obj_noelle_scared);
				scaredNoelle.con = 0;
				scaredNoelle.targetx = x;
				scaredNoelle.targety = y;
				scaredNoelle.alarm[0] = 1;
				instance_destroy();
			}
			if (instance_exists(obj_controller_city_mice2))
				obj_controller_city_mice2.scared = 0;
		}
	}
}
