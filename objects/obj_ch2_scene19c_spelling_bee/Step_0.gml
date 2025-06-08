if (sb_con == 1)
{
	if (update_word)
	{
		update_word = false;
		sb_word_previous = sb_word_current;
		if (!noelle_lose)
		{
			while (sb_word_current == sb_word_previous)
				sb_word_current = sb_word[random_range(0, 5)];
		}
		else
		{
			sb_word_current = stringsetloc("DECEMBER", "obj_ch2_scene19c_spelling_bee_slash_Step_0_gml_21_0");
		}
		wb_word_length = string_length(sb_word_current) + 1;
		sb_noelle = "";
		sb_berdly = "";
		noelle_index = 0;
		berdly_index = 0;
		text_alpha = 1;
		if (!noelle_lose)
			alarm[0] = 30;
		alarm[1] = 30;
	}
	if (noelle_spell)
	{
		noelle_spell = false;
		alarm[0] = random_range(5, 10);
	}
	if (berdly_spell)
	{
		berdly_spell = false;
		alarm[1] = noelle_lose ? 15 : random_range(10, 15);
	}
	if (noelle_finish && berdly_finish)
	{
		if (text_alpha > 0)
		{
			text_alpha -= 0.05;
		}
		else
		{
			noelle_finish = false;
			berdly_finish = false;
			alarm[2] = noelle_lose ? 60 : 30;
		}
	}
	if (noelle_lose && berdly_finish)
	{
		if (text_alpha > 0)
		{
			text_alpha -= 0.05;
		}
		else
		{
			berdly_finish = false;
			sb_con = 99;
			if (i_ex(obj_ch2_scene19c))
			{
				with (obj_ch2_scene19c)
					con = 25;
			}
		}
	}
}
if (berdly_smart)
{
	if (berdly_show_word)
	{
		berdly_show_word = false;
		berdly_word_previous = berdly_word_current;
		while (berdly_word_current == berdly_word_previous)
			berdly_word_current = sb_word[random_range(0, 5)];
		berdly_word_count++;
		var x_pos = ((berdly_word_count % 2) == 1) ? 180 : 400;
		var word = instance_create(camerax() + x_pos, cameray() + 150 + choose(20, 60, 80, 100), obj_ch2_scene19c_berdly_smart_word);
		word.berdly_word = berdly_word_current;
		alarm[3] = 15;
	}
}
