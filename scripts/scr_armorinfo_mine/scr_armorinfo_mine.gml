function scr_armorinfo_mine()
{
	for (i = 0; i < 6; i += 1)
	{
		scr_armorinfo(global.chararmor1[i]);
		chararmor1name[i] = armornametemp;
		chararmor1desc[i] = armordesctemp;
		chararmor1at[i] = armorattemp;
		chararmor1df[i] = armordftemp;
		chararmor1mag[i] = armormagtemp;
		chararmor1bolts[i] = armorboltstemp;
		chararmor1grazeamt[i] = armorgrazeamttemp;
		chararmor1grazesize[i] = armorgrazesizetemp;
		chararmor1ability[i] = armorabilitytemp;
		chararmor1abilityicon[i] = armorabilityicontemp;
		chararmor1icon[i] = armoricontemp;
		chararmor1element[i] = armorelementtemp;
		chararmor1elementamount[i] = armorelementamounttemp;
		global.itemat[i][1] = armorattemp;
		global.itemdf[i][1] = armordftemp;
		global.itemmag[i][1] = armormagtemp;
		global.itembolts[i][1] = armorboltstemp;
		global.itemgrazeamt[i][1] = armorgrazeamttemp;
		global.itemgrazesize[i][1] = armorgrazesizetemp;
		global.itemelement[i][1] = armorelementtemp;
		global.itemelementamount[i][1] = armorelementamounttemp;
		scr_armorinfo(global.chararmor2[i]);
		chararmor2name[i] = armornametemp;
		chararmor2desc[i] = armordesctemp;
		chararmor2at[i] = armorattemp;
		chararmor2df[i] = armordftemp;
		chararmor2mag[i] = armormagtemp;
		chararmor2bolts[i] = armorboltstemp;
		chararmor2grazeamt[i] = armorgrazeamttemp;
		chararmor2grazesize[i] = armorgrazesizetemp;
		chararmor2ability[i] = armorabilitytemp;
		chararmor2abilityicon[i] = armorabilityicontemp;
		chararmor2icon[i] = armoricontemp;
		chararmor2element[i] = armorelementtemp;
		chararmor2elementamount[i] = armorelementamounttemp;
		global.itemat[i][2] = armorattemp;
		global.itemdf[i][2] = armordftemp;
		global.itemmag[i][2] = armormagtemp;
		global.itembolts[i][2] = armorboltstemp;
		global.itemgrazeamt[i][2] = armorgrazeamttemp;
		global.itemgrazesize[i][2] = armorgrazesizetemp;
		global.itemelement[i][2] = armorelementtemp;
		global.itemelementamount[i][2] = armorelementamounttemp;
	}
}
