var _bpf = bpm / 60 / game_get_speed(gamespeed_fps);
var _spb = 1 / (bpm / 60);
if (snd_is_playing(global.currentsong[1]) && inSync == true)
{
	beat = audio_sound_get_track_position(global.currentsong[1]) / _spb;
	beat = frac(beat);
}
else
{
	inSync = false;
	beat += _bpf;
	if (beat >= 1)
		beat -= 1;
}
image_index = beat * (image_number * loopsPerBeat);
