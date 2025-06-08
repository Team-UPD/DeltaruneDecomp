function scr_element_damage_reduction(arg0, arg1)
{
	var ___element = arg0;
	var ___char = arg1;
	var ___reduction = 1;
	if (___element != 0)
	{
		for (var ___itemi = 0; ___itemi < 2; ___itemi++)
		{
			if (global.itemelement[___char][___itemi + 1] != 0)
			{
				if (global.itemelement[___char][___itemi + 1] == ___element)
					___reduction -= global.itemelementamount[___char][___itemi + 1];
				if (global.itemelement[___char][___itemi + 1] == 9)
				{
					if (___element == 2 || ___element == 8)
						___reduction -= global.itemelementamount[___char][___itemi + 1];
				}
				if (global.itemelement[___char][___itemi + 1] == 10)
					___reduction -= global.itemelementamount[___char][___itemi + 1];
			}
		}
	}
	if (___reduction < 0.25)
		___reduction = 0.25;
	return ___reduction;
}
