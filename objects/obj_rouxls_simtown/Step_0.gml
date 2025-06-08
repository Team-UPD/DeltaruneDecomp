if (MyTurn == 1)
{
	if (left_p())
	{
		if (CursorX > 0)
			CursorX -= 1;
	}
	if (right_p())
	{
		if (CursorX < 15)
			CursorX += 1;
	}
	if (up_p())
	{
		if (CursorY > 0)
			CursorY -= 1;
	}
	if (down_p())
	{
		if (CursorY < 5)
			CursorY += 1;
	}
	if (button1_p())
	{
		if (TileYouCanBuild[CursorX][CursorY] == 1)
		{
			HouseCount++;
			TileYouCanBuild[CursorX][CursorY] = 0;
			TileHasHouse[CursorX][CursorY] = 1;
			snd_play(snd_noise);
			obj_rouxls_enemy.hasplayerplacedhouses = 1;
			repeat (21)
			{
				instance_create(base_xpos + (CursorX * 40) + irandom(40), cameray() + ((CursorY + 1) * 40) + 40 + irandom(40), obj_house_placed_effect);
				instance_create(base_xpos + (CursorX * 40) + irandom(40), cameray() + ((CursorY + 1) * 40) + 40 + irandom(40), obj_house_placed_effect);
				scr_fx_housesquare(base_xpos + (CursorX * 40) + 20, cameray() + ((CursorY + 1) * 40) + 40 + 20, 255);
			}
			scr_simtown_canbuild_check();
			if (GameOver == 1 || HouseCount >= HouseCountMax)
			{
				MyTurn = 0;
				TurnCon = 1;
				HouseCount = 0;
			}
		}
	}
}
if (TurnCon == 1)
{
	scr_simtown_canbuild_check();
	if (GameOver == 1)
	{
		event_user(0);
		if (instance_exists(obj_rouxls_enemy))
		{
			global.mnfight = 0;
			global.myfight = 3;
			obj_rouxls_enemy.actcon = 1;
			obj_rouxls_enemy.acting = -1;
			obj_rouxls_enemy.endbattle = 1;
			obj_rouxls_enemy.actresult = actresult;
		}
		TurnCon = 5;
		MyTurn = 0;
		with (obj_rouxls_enemy)
			actcon = 1;
	}
	else
	{
		with (obj_rouxls_enemy)
		{
			msgsetloc(0, "* Finished!/%", "obj_rouxls_simtown_slash_Step_0_gml_93_0");
			scr_battletext_default();
			actcon = 1;
		}
		TurnCon = 5;
		MyTurn = 0;
	}
}
if (TurnCon == 2)
{
	scr_simtown_canbuild_check();
	RouxlsWaitTimer = 0;
	RouxlsHousesBuilt = 0;
	TurnCon = 3;
}
if (TurnCon == 3)
{
	RouxlsWaitTimer += 1;
	if (RouxlsWaitTimer >= 10)
	{
		if (RouxlsHousesBuilt < (RouxlsHouseMax - RalseiDistract) && GameOver == 0)
		{
			found = 0;
			while (found == 0)
			{
				RandomHouseX = floor(random(15));
				RandomHouseY = floor(random(6));
				if (RandomHouseY == 6)
					RandomHouseY = 5;
				if (TileRouxlsCanBuild[RandomHouseX][RandomHouseY] == 1)
					found = 1;
			}
			TileYouCanBuild[RandomHouseX][RandomHouseY] = 0;
			TileHasHouse[RandomHouseX][RandomHouseY] = 2;
			scr_simtown_canbuild_check();
			RouxlsHousesBuilt += 1;
			RouxlsWaitTimer = 0;
			repeat (21)
			{
				instance_create(camerax() + (RandomHouseX * 40) + irandom(40), cameray() + ((RandomHouseY + 1) * 40) + 40 + irandom(40), obj_house_placed_effect);
				instance_create(camerax() + (RandomHouseX * 40) + irandom(40), cameray() + ((RandomHouseY + 1) * 40) + 40 + irandom(40), obj_house_placed_effect);
				scr_fx_housesquare(camerax() + (RandomHouseX * 40) + 20, cameray() + ((RandomHouseY + 1) * 40) + 40 + 20, 16711680);
			}
			snd_play(snd_noise);
		}
		else
		{
			TurnCon = 4;
		}
	}
}
if (TurnCon == 4)
{
	if (GameOver == 1)
	{
		TurnCon = 1;
	}
	else
	{
		obj_rouxls_enemy.talked = 1;
		TurnCon = 5;
		Myturn = 0;
		RouxlsTurn++;
		HouseTensionCost = 0;
		if (RalseiDistract == 1)
			RalseiDistractTwice = 1;
		if (RalseiDistract == 0 && RalseiDistractTwice == 1)
			RalseiDistractTwice = 0;
		RalseiDistract = 0;
		if (RouxlsTurn > 2)
			RouxlsHouseMax = 3;
		if (RouxlsTurn > 5)
			RouxlsHouseMax = 4;
		with (obj_rouxls_enemy)
		{
			if (buildedblockstimer < 50)
				buildedblockstimer = 50;
		}
	}
}
CursorIdealVisualX = CursorX * 40;
CursorIdealVisualY = (CursorY * 40) + 80;
if (CursorVisualX > CursorIdealVisualX)
	CursorVisualX -= 20;
if (CursorVisualX < CursorIdealVisualX)
	CursorVisualX += 20;
if (CursorVisualY > CursorIdealVisualY)
	CursorVisualY -= 20;
if (CursorVisualY < CursorIdealVisualY)
	CursorVisualY += 20;
