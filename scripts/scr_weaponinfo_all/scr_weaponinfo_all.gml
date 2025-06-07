function scr_weaponinfo_all()
{
	for (i = 0; i < 12; i += 1)
	{
		scr_weaponinfo(global.weapon[i]);
		weaponname[i] = weaponnametemp;
		weapondesc[i] = weapondesctemp;
		wmessage2[i] = wmessage2temp;
		wmessage3[i] = wmessage3temp;
		weaponat[i] = weaponattemp;
		weapondf[i] = weapondftemp;
		weaponmag[i] = weaponmagtemp;
		weaponbolts[i] = weaponboltstemp;
		weaponstyle[i] = weaponstyletemp;
		weapongrazeamt[i] = weapongrazeamttemp;
		weapongrazesize[i] = weapongrazesizetemp;
		weaponchar1[i] = weaponchar1temp;
		weaponchar2[i] = weaponchar2temp;
		weaponchar3[i] = weaponchar3temp;
		weaponvalue[i] = value;
		weaponability[i] = weaponabilitytemp;
		weaponabilityicon[i] = weaponabilityicontemp;
		weaponicon[i] = weaponicontemp;
	}
}
