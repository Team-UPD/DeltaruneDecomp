if (uniqueRideExperience == 1 && !reverse)
{
	if (global.flag[373] != 1)
		exit;
}
if (state == 1)
{
	global.interact = 1;
	with (obj_mainchara)
	{
		cutscene = 1;
		battlemode = 1;
		drawbattlemode = 0;
	}
	var _camXto = camerax();
	var _camYto = cameray();
	if (centerX)
	{
		var _camW = camerawidth();
		_camXto = clamp(x - (_camW / 2), 0, room_width - _camW);
	}
	if (centerY)
		_camYto = y - camTargetHeight;
	var _panMax = 8;
	if (rideToRide)
		_panMax = 4;
	if (centerX || centerY)
		scr_pan_lerp(_camXto, _camYto, 8);
	if (camFollow && camFollowAfter == 0)
	{
	}
	partySize = 1;
	if (i_ex(global.cinstance[0]))
		partySize++;
	if (i_ex(global.cinstance[1]))
		partySize++;
	snd_play(snd_jump);
	for (var i = 0; i < partySize; i++)
	{
		var _character = (i == 0) ? obj_mainchara : global.cinstance[i - 1];
		var _cup = cup_char[i];
		var _jumpInDuration = jumpInDuration;
		var _rollSprites = [spr_kris_fall_ball, spr_kris_fall_ball, spr_susie_dw_fall_ball, spr_ralsei_teacup_enter];
		var _rideToRide = rideToRide;
		_rideToRide = true;
		with (_character)
		{
			var _spr = sprite_index;
			if (_rideToRide)
				_spr = _rollSprites[global.char[i]];
			image_alpha = 0;
			facing[0] = 0;
			global.facing = 0;
			with (scr_dark_marker(x, y, _spr))
			{
				if (_rideToRide)
					image_speed = 0.5;
				var _xx = _cup.x;
				var _yy = _cup.y - 10;
				scr_depth();
				scr_jump_to_point(_xx, _yy, _rideToRide ? 16 : 8, _jumpInDuration);
				scr_doom(id, _jumpInDuration);
			}
		}
	}
	state = 2;
	waitingAround = jumpInDuration;
}
if (state == 999 && global.interact == 0)
{
	var nearobj = instance_nearest(x, y, obj_readable_room1);
	if (nearobj > 100)
	{
		with (nearobj)
			event_user(0);
	}
}
