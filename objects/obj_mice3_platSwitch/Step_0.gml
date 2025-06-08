if (place_meeting(x, y, obj_mainchara) || place_meeting(x, y, obj_marker) || place_meeting(x, y, obj_actor) || place_meeting(x, y, obj_trigger_area) || (instance_exists(obj_noelle_scared) && place_meeting(x, y, obj_noelle_scared) && obj_noelle_scared.jumpy == 0))
{
	if (toggle == 0)
	{
		if (instance_exists(obj_controller_city_mice3))
			obj_controller_city_mice3.micescore += 1;
		if (obj_controller_city_mice3.language == 0)
		{
			if (obj_controller_city_mice3.micescore == 1)
				snd_play(snd_speak_and_spell_I);
			if (obj_controller_city_mice3.micescore == 2)
				snd_play(snd_speak_and_spell_L);
			if (obj_controller_city_mice3.micescore == 3)
				snd_play(snd_speak_and_spell_O);
			if (obj_controller_city_mice3.micescore == 4)
				snd_play(snd_speak_and_spell_V);
			if (obj_controller_city_mice3.micescore == 5)
				snd_play(snd_speak_and_spell_E);
			if (obj_controller_city_mice3.micescore == 6)
				snd_play(snd_speak_and_spell_M);
			if (obj_controller_city_mice3.micescore == 7)
				snd_play(snd_speak_and_spell_O);
			if (obj_controller_city_mice3.micescore == 8)
				snd_play(snd_speak_and_spell_U);
			if (obj_controller_city_mice3.micescore == 9)
				snd_play(snd_speak_and_spell_S);
			if (obj_controller_city_mice3.micescore == 10)
				snd_play(snd_speak_and_spell_E);
		}
		if (obj_controller_city_mice3.language == 1)
		{
			if (obj_controller_city_mice3.micescore == 1)
				snd_play(snd_speak_and_spell_I);
			if (obj_controller_city_mice3.micescore == 2)
				snd_play(snd_speak_and_spell_L);
			if (obj_controller_city_mice3.micescore == 3)
				snd_play(snd_speak_and_spell_U);
			if (obj_controller_city_mice3.micescore == 4)
				snd_play(snd_speak_and_spell_V);
			if (obj_controller_city_mice3.micescore == 5)
				snd_play(snd_speak_and_spell_N);
			if (obj_controller_city_mice3.micescore == 6)
				snd_play(snd_speak_and_spell_E);
			if (obj_controller_city_mice3.micescore == 7)
				snd_play(snd_speak_and_spell_Z);
			if (obj_controller_city_mice3.micescore == 8)
				snd_play(snd_speak_and_spell_U);
			if (obj_controller_city_mice3.micescore == 9)
				snd_play(snd_speak_and_spell_M);
			if (obj_controller_city_mice3.micescore == 10)
				snd_play(snd_speak_and_spell_I);
		}
	}
	toggle = 1;
}
image_index = toggle;
