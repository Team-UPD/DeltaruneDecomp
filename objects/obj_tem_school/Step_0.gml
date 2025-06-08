if (myinteract == 3)
{
	if (i_ex(mydialoguer) == false)
	{
		if (egcon == 1)
			egcon = 2;
		if (egcon == 2)
		{
			egtimer += 1;
			sprite_index = spr_tem_eggput;
			image_index = egtimer / 10;
			if (egtimer >= 60)
			{
				sprite_index = spr_tem_sit;
				egg = scr_marker(x + 29, y + 3, spr_egg);
				egg.depth = depth;
				egcon = 3;
			}
		}
		if (egcon == 3 || egcon == 0)
		{
			global.interact = 0;
			myinteract = 0;
			with (obj_mainchara)
				onebuffer = 5;
		}
	}
}
if (egcon != 2)
{
	if (myinteract == 0)
	{
		facing = dfacing;
		image_speed = 0;
	}
	scr_npcdir();
}
