function scr_guardpeek(arg0)
{
	if (global.faceaction[arg0.myself] == 4)
	{
		var _peeker = 0;
		if (arg0 == obj_heroralsei)
		{
			obj_heroralsei.image_alpha = 0;
			_peeker = scr_battle_marker(obj_heroralsei.x, obj_heroralsei.y, spr_ralsei_defend_peek);
			_peeker.depth = obj_heroralsei.depth;
			_peeker.sourceobject = obj_heroralsei;
			_peeker.endanimation = spr_ralsei_redefend;
		}
		else if (arg0 == obj_herosusie)
		{
			obj_herosusie.image_alpha = 0;
			_peeker = scr_battle_marker(obj_herosusie.x, obj_herosusie.y, spr_susie_defend_peek);
			_peeker.depth = obj_herosusie.depth;
			_peeker.sourceobject = obj_herosusie;
		}
		return _peeker;
	}
}
