global.currentsong[0] = snd_init("cybercity.ogg");
global.currentsong[1] = mus_loop_ext(global.currentsong[0], 0.8, 0.97);
audio_sound_gain(global.currentsong[1], 1, 30);
