function scr_actinfo(arg0)
{
	actcost = -1;
	acttype = 0;
	actspell = 0;
	actor = obj_pipis_bullet_cone;
	actname = " ";
	switch (arg0)
	{
		case 0:
			actcost = -1;
			acttype = 0;
			actspell = 0;
			actor = obj_pipis_bullet_cone;
			actname = " ";
			break;
		case 1:
			actcost = -1;
			acttype = 0;
			actspell = 0;
			actor = obj_pipis_bullet_cone;
			actname = "Compliment";
			break;
		case 2:
			actcost = -1;
			acttype = 1;
			actspell = 2;
			actor = obj_84_lang_helper;
			actname = "DualBuster";
			break;
	}
}
