soundTimeStep = audio_sound_get_track_position(global.batmusic[1]);
var _prevBeats = beats;
beats = soundTimeStep / spb;
if (beats < _prevBeats)
	targetBeat -= beatMax;
framesAway = (targetBeat - beats) / bpf;
var _percent = max(0, framesAway / frames);
if (_percent > 0)
{
}
if (varianty > 0)
	varianty -= 5;
y = lerp(yTarget, ystart - varianty, _percent);
if (init == 1)
{
	if (abs(remFramesAway - framesAway) >= 4 && y >= 60)
	{
		active = 0;
		failed = 1;
	}
	remFramesAway = framesAway;
}
if (init == 0)
{
	remFramesAway = framesAway;
	init = 1;
}
if (failed == 1)
{
	image_alpha -= 0.1;
	if (image_alpha <= 0)
		instance_destroy();
}
if (_percent == 0 && failed == 0)
{
	instance_create_depth(x, y, depth + 1, obj_musicalbattlenote);
	snd_stop(instrument);
	snd_play(instrument);
	instance_destroy();
}
