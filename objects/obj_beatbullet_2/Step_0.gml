var _shouldActivate = false;
with (obj_mainchara)
{
	_shouldActivate = false;
	if (battlemode == 1)
		_shouldActivate = true;
}
shouldActivate = _shouldActivate;
if (shouldActivate == true && framesAway > frames)
	readyToGo = true;
if (snd_is_playing(global.currentsong[1]) && inSync == true)
{
	var _prevBeats = beats;
	beats = audio_sound_get_track_position(global.currentsong[1]) / spb;
	if (beats < _prevBeats)
	{
		targetBeat -= beatMax;
		forgiveLoop = true;
	}
}
else
{
	inSync = false;
	beats += bpf;
}
if (abs(beats - beatsPrev) > 3)
{
	if (!forgiveLoop)
		inSync = false;
	else
		forgiveLoop = false;
}
beatsPrev = beats;
framesAway = (targetBeat - beats) / bpf;
var _percent = max(0, framesAway / frames);
if (!horizontal)
{
	var _yDiff = abs(ystart - endY);
	y = ease_out_cubic(_percent, endY, -_yDiff, 1);
	y = max(y, ystart);
}
else
{
	var _yDiff = abs(xstart - endY);
	x = ease_out_cubic(_percent, endY, -_yDiff, 1);
	x = max(x, xstart);
}
if (image_alpha >= 1)
{
	active = 1;
}
else
{
	if (follow != -4)
		x = follow.x + targetX;
	active = false;
}
if (framesAway < (frames + fadeInSpeed) && readyToGo)
	image_alpha = scr_approach(image_alpha, 1, 1 / fadeInSpeed);
if (!readyToGo)
	image_alpha = scr_approach(image_alpha, 0, 1 / fadeInSpeed);
if (framesAway < frames)
{
	if (_percent <= 0)
	{
		if (active)
		{
			if (global.flag[8] == 0)
			{
				var flash = instance_create_depth(x, y, depth, obj_beatflash);
				flash.image_xscale = sprite_width;
				flash.image_yscale = (1 / sprite_height) * 300;
				flash.image_angle = image_angle;
			}
		}
		image_alpha = 0;
		readyToGo = false;
		if (shouldActivate)
			readyToGo = true;
		if (looping != 0)
			targetBeat += looping;
		active = 0;
	}
}
