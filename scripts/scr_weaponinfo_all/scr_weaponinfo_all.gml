function scr_weaponinfo_all()
{
	for (i = 0; i < 48; i += 1)
	{
		scr_weaponinfo(global.weapon[i]);
		weaponname[i] = weaponnametemp;
		weapondesc[i] = weapondesctemp;
		wmessage2[i] = wmessage2temp;
		wmessage3[i] = wmessage3temp;
		wmessage4[i] = wmessage4temp;
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
		weaponchar4[i] = weaponchar4temp;
		weaponvalue[i] = value;
		weaponability[i] = weaponabilitytemp;
		weaponabilityicon[i] = weaponabilityicontemp;
		weaponicon[i] = weaponicontemp;
	}
}
