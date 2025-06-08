function scr_textsound()
{
	playtextsound = 1;
	if (button2_h() == 1)
		playtextsound = 0;
	if (skippable == 0)
		playtextsound = 1;
	if (playtextsound == 1)
	{
		if (rate <= 2)
			getchar = string_char_at(mystring, pos);
		else
			getchar = string_char_at(mystring, pos - 1);
		play = 1;
		playcheck = 0;
		if (getchar == "&" || getchar == "\n")
		{
			if (rate < 3)
			{
				playcheck = 1;
				getchar = string_char_at(mystring, pos + 1);
			}
			else
			{
				play = 0;
			}
		}
		if (getchar == " ")
			play = 0;
		if (getchar == "^")
			play = 0;
		if (getchar == "!")
			play = 0;
		if (getchar == ".")
			play = 0;
		if (getchar == "?")
			play = 0;
		if (getchar == ",")
			play = 0;
		if (getchar == ":")
			play = 0;
		if (getchar == "/")
			play = 0;
		if (getchar == "\\")
			play = 0;
		if (getchar == "|")
			play = 0;
		if (getchar == "*")
			play = 0;
		if (play == 1)
		{
			if (textsound == snd_txtq)
			{
				audio_stop_sound(snd_txtq_2);
				qv = snd_play(snd_txtq_2);
				qp = 0.9 + random(0.15);
				snd_pitch(qv, qp);
				sound_timer = 2;
			}
			else if (textsound == snd_txtspam)
			{
				audio_stop_sound(snd_txtspam2);
				snd_play_x(snd_txtspam2, 0.8, 1.2);
				sound_timer = 2;
			}
			else if (textsound == snd_txtsans)
			{
				audio_stop_sound(snd_txtsans);
				qv = snd_play(snd_txtsans);
				sound_timer = 2;
			}
			else
			{
				snd_play(textsound);
			}
			with (obj_face_parent)
				mouthmove = 1;
			miniface_pos++;
		}
	}
}
