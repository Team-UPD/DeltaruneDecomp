function scr_beatbullet()
{
	var _frames = argument[1];
	var _targetBeat = argument[2];
	var _yTop = cameray();
	var _yBottom = _yTop + 450;
	if (argument_count > 5)
		_yTop = argument[5];
	if (argument_count > 6)
		_yBottom = argument[6];
	with (instance_create_depth(argument[0], _yTop, 0, obj_beatbullet))
	{
		endY = _yBottom;
		targetX = argument[0];
		follow = argument[4];
		bpm = argument[3];
		framesAway = 999;
		frames = _frames;
		image_alpha = 0;
		bps = bpm / 60;
		spb = 1 / bps;
		bpf = bps / game_get_speed(gamespeed_fps);
		if (snd_is_playing(global.currentsong[1]))
		{
			soundTimeStep = audio_sound_get_track_position(global.currentsong[1]);
			beats = soundTimeStep / spb;
			beatsPrev = beats;
			targetBeat = floor(beats + _targetBeat);
			inSync = true;
		}
		else
		{
			targetBeat = _targetBeat;
			inSync = false;
		}
	}
}
