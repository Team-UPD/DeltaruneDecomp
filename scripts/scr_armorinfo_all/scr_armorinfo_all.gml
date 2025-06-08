function scr_armorinfo_all()
{
	for (i = 0; i < 48; i += 1)
	{
		scr_armorinfo(global.armor[i]);
		armorname[i] = armornametemp;
		armordesc[i] = armordesctemp;
		amessage2[i] = amessage2temp;
		amessage3[i] = amessage3temp;
		amessage4[i] = amessage4temp;
		armorat[i] = armorattemp;
		armordf[i] = armordftemp;
		armormag[i] = armormagtemp;
		armorbolts[i] = armorboltstemp;
		armorgrazeamt[i] = armorgrazeamttemp;
		armorgrazesize[i] = armorgrazesizetemp;
		armorchar1[i] = armorchar1temp;
		armorchar2[i] = armorchar2temp;
		armorchar3[i] = armorchar3temp;
		armorchar4[i] = armorchar4temp;
		armorvalue[i] = value;
		armorability[i] = armorabilitytemp;
		armorabilityicon[i] = armorabilityicontemp;
		armoricon[i] = armoricontemp;
		armorelement[i] = armorelementtemp;
		armorelementamount[i] = armorelementamounttemp;
	}
}
