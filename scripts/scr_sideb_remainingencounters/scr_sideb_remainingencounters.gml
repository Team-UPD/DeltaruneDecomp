function scr_sideb_remainingencounters()
{
	var killcount = 0;
	var encounterlist = 0;
	encounterlist[0] = 531;
	array_push(encounterlist, 532);
	array_push(encounterlist, 533);
	array_push(encounterlist, 534);
	array_push(encounterlist, 535);
	array_push(encounterlist, 538);
	array_push(encounterlist, 556);
	array_push(encounterlist, 553);
	array_push(encounterlist, 554);
	array_push(encounterlist, 555);
	array_push(encounterlist, 559);
	array_push(encounterlist, 560);
	array_push(encounterlist, 561);
	array_push(encounterlist, 562);
	array_push(encounterlist, 563);
	array_push(encounterlist, 564);
	array_push(encounterlist, 565);
	array_push(encounterlist, 566);
	array_push(encounterlist, 567);
	for (var i = 0; i < array_length(encounterlist); i++)
	{
		if (global.flag[encounterlist[i]] == 6)
			killcount++;
		debug_message("global.flag[" + string(encounterlist[i]) + "], result: " + string(global.flag[encounterlist[i]]));
	}
	var enemiesleft = array_length(encounterlist) - killcount;
	return enemiesleft;
}
