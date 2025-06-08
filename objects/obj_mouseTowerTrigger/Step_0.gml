if (global.flag[379] == 0)
{
	timer++;
	left = false;
	right = false;
	down = false;
	if (instance_exists(obj_masterPlatformController))
		controlled = obj_masterPlatformController.plat[obj_masterPlatformController.currentPlatform - 1];
	if (myinteract == 3)
	{
		if (i_ex(mydialoguer) == false)
		{
			global.interact = 0;
			myinteract = 0;
			with (obj_mainchara)
				onebuffer = 5;
		}
	}
	if (rotate == true && blocked == 0)
	{
		global.interact = 1;
		if (!instance_exists(obj_holemouse) && i_ex(controlled))
		{
			if (left_h())
			{
				with (controlled)
					move = -1;
			}
			if (right_h())
			{
				with (controlled)
					move = 1;
			}
			if (down_p() && controlled.phase >= 3 && controlled.moving == 0)
			{
				with (controlled.hole)
				{
					mousecreate = 1;
					gentimer = 20;
				}
			}
		}
		if (i_ex(controlled))
		{
			if (left_h() && right_h())
			{
				with (controlled)
					move = 0;
			}
			if (!left_h() && !right_h())
			{
				with (controlled)
					move = 0;
			}
		}
	}
	if (i_ex(controlled))
	{
		if (controlled.move == 1)
			right = true;
		if (controlled.move == -1)
			left = true;
	}
	if (instance_exists(obj_holemouse_generator))
	{
		with (obj_holemouse_generator)
		{
			if (gentimer > 0)
				other.down = true;
		}
	}
}
