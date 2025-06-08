function scr_musicalbattlebullet(arg0, arg1, arg2)
{
	var _bulletDepth = 0;
	var _bpm = 60;
	var _yTop = -40;
	var _instruments = [265, 266, 267, 268, 269, 270, 271];
	var _instrumentsB = [272, 273, 274, 275, 276, 277, 278];
	var _instrumentsAlt = [262, 263, 264];
	var _xLanes = [180, 220, 260, 300, 340, 380, 420, 460];
	var _yLanes = [280, 280, 280, 280, 280, 280, 280, 280];
	var _laneType = [1, 1, 0, 0, 0, 0, 1, 1];
	var _bps = _bpm / 60;
	var _spb = 1 / _bps;
	var _bpf = _bps / game_get_speed(gamespeed_fps);
	var _laneSelected = arg0;
	var _lanes = array_length_1d(_laneSelected);
	for (var i = 0; i < _lanes; i++)
	{
		if (_laneSelected[i] == 1 || _laneSelected[i] == 2)
		{
			var _bullet = instance_create_depth(_xLanes[i], _yTop, _bulletDepth, obj_musicalbattlebullet);
			if (_laneSelected[i] == 2)
				_bullet.varianty = 300;
			with (_bullet)
			{
				bulletType = _laneType[i];
				image_index = bulletType;
				if (bulletType == 1)
				{
					image_yscale *= 0.5;
					image_alpha *= 0.7;
				}
				yTarget = _yLanes[i];
				soundTimeStep = audio_sound_get_track_position(global.batmusic[1]);
				beats = soundTimeStep / _spb;
				var _length = audio_sound_length(global.batmusic[1]);
				beatMax = _length / _spb;
				bpf = _bpf;
				spb = _spb;
				beats = soundTimeStep / _spb;
				targetBeat = ceil(beats) + arg1;
				var _measure = (targetBeat div 2) % 2;
				if (_measure)
					instrument = _instrumentsB[irandom(6)];
				else
					instrument = _instruments[irandom(6)];
				if (i == 1)
					instrument = _instrumentsAlt[0];
				if (i == 6)
					instrument = _instrumentsAlt[1];
				if (i == 7)
					instrument = _instrumentsAlt[2];
				frames = arg2;
				framesAway = (targetBeat - beats) / _bpf;
				if (framesAway < frames)
				{
				}
			}
		}
	}
}
