function scr_beatbullet_2()
{
	var _frames = argument[1];
	var _targetBeat = argument[2];
	var _yTop = cameray();
	var _yBottom = _yTop + 450;
	var _loopOffset = argument[6] + 2;
	var _fadeInFrames = 15;
	if (argument_count > 7)
		_yTop = argument[7];
	if (argument_count > 8)
		_yBottom = argument[8];
	if (argument_count > 9)
		_fadeInFrames = argument[9];
	var _horizontal = false;
	if (argument_count > 10)
		_horizontal = argument[10];
	var _bullet;
	if (!_horizontal)
		_bullet = instance_create_depth(argument[0], _yTop, 0, obj_beatbullet_2);
	else
		_bullet = instance_create_depth(_yTop, argument[0], 0, obj_beatbullet_2);
	with (_bullet)
	{
		horizontal = _horizontal;
		if (horizontal)
			image_angle = 90;
		endY = _yBottom;
		targetX = argument[0];
		follow = argument[4];
		bpm = argument[3];
		framesAway = 999;
		frames = _frames;
		fadeSpeed = _fadeInFrames;
		image_alpha = 0;
		bps = bpm / 60;
		spb = 1 / bps;
		bpf = bps / game_get_speed(gamespeed_fps);
		if (snd_is_playing(global.currentsong[1]))
		{
			soundTimeStep = audio_sound_get_track_position(global.currentsong[1]);
			var _length = audio_sound_length(global.currentsong[1]);
			beats = soundTimeStep / spb;
			beatMax = _length / spb;
			beatsPrev = beats;
			looping = argument[5];
			beatLoop = _targetBeat;
			loopOffset = _loopOffset;
			if (looping == 0)
				targetBeat = _targetBeat;
			else
				targetBeat = (ceil(beats / looping) * looping) + _targetBeat + _loopOffset;
			inSync = true;
		}
		else
		{
			beatMax = 9999;
			loopOffset = _loopOffset;
			looping = argument[5];
			beatLoop = _targetBeat;
			targetBeat = _targetBeat + loopOffset;
			inSync = false;
		}
	}
	return _bullet;
}
