if (init == 0)
{
	var _jpmode = global.lang == "ja";
	switch (search)
	{
		case 0:
			targetstring = _jpmode ? "ビクトリー" : "Victory";
			break;
		case 1:
			targetstring = _jpmode ? "ガン" : "Gun";
			break;
		case 2:
			targetstring = _jpmode ? "ちぎりき" : "Flail";
			break;
		case 3:
			targetstring = "Birthday Boy";
			break;
		case 4:
			targetstring = "Jifts";
			break;
		case -1:
			if (_jpmode)
				targetstring = choose("があん", "うーん", "ヒーローけしマシン", "しぎりき", "うーん", "いたい");
			else
				targetstring = string_hash_to_newline(choose("Guun", "Zappy#Shooter", "Hero#Eraser", "Falil", "Hurt", "Perish"));
			break;
	}
	init = 1;
	depth++;
}
