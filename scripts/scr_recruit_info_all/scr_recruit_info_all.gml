function scr_recruit_info_all()
{
	if (argument_count <= 1)
		allrecruits = scr_recruits_to_array();
	if (argument_count >= 2)
		allrecruits = scr_recruits_to_array(argument[0], argument[1]);
	if (argument_count >= 1)
	{
		if (argument[0] == "half")
			allrecruits = halfrecruits;
		if (argument[0] == "either")
			allrecruits = eitherrecruits;
	}
	for (__i = 0; __i < allrecruits; __i++)
	{
		scr_recruit_info(recruit[__i]);
		recruitID[__i] = recruit[__i];
		recruitSprite[__i] = _sprite;
		recruitSpriteX[__i] = _spritex;
		recruitSpriteY[__i] = _spritey;
		recruitImageSpeed[__i] = _imagespeed;
		recruitName[__i] = _name;
		recruitDesc[__i] = _desc;
		recruitLike[__i] = _like;
		recruitDislike[__i] = _dislike;
		recruitChapter[__i] = _chapter;
		recruitLevel[__i] = _level;
		recruitAttack[__i] = _attack;
		recruitDefense[__i] = _defense;
		recruitElement[__i] = _element;
		recruitDialogueBoxes[__i] = _dialogueboxes;
		recruitCountMax[__i] = _recruitcount;
		recruitCountCurrent[__i] = _recruitcountcurrent;
		recruitFullyRecruited[__i] = 0;
		if (global.flag[600 + recruitID[__i]] == 1)
			recruitFullyRecruited[__i] = 1;
		if (recruitFullyRecruited[__i] == 0)
		{
			recruitDesc[__i] = stringsetloc("Not yet fully recruited", "scr_recruit_info_all_slash_scr_recruit_info_all_gml_46_0");
			recruitLike[__i] = stringsetloc("?", "scr_recruit_info_all_slash_scr_recruit_info_all_gml_47_0");
			recruitDislike[__i] = stringsetloc("?", "scr_recruit_info_all_slash_scr_recruit_info_all_gml_48_0");
		}
		recruitPlaceable[__i] = _placeable;
	}
}
