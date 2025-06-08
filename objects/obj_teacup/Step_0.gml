camTargetHeight = reverse ? camTargetHeightReverse : camTargetHeightNormal;
var _tempLock = false;
riseSpeedBoost = min(riseSpeedBoost, riseSpeedBoostMax);
var _generalSpeed = riseSpeed;
if (reverse && !is_undefined(riseSpeedReverse))
	_generalSpeed = riseSpeedReverse;
var _riseSpeedFinal = _generalSpeed + riseSpeedBoost;
if (tutorialRide)
	_riseSpeedFinal = riseSpeedBoost;
if (state == 0)
{
	if (uniqueRideExperience == 1 && global.flag[373] == 1)
		instance_destroy();
	var _targetY = ystart;
	if (reverse)
		_targetY = endY;
	y = scr_approach(y, _targetY, riseSpeedInitial);
	if (y == _targetY)
	{
		state = 1;
		if (uniqueRideExperience == 1)
		{
			snd_play(snd_locker);
			instance_create(0, 0, obj_shake);
			state = 0.1;
			waitingAround = 15;
		}
	}
}
if (state == 0.1)
{
	if (--waitingAround <= 0)
		state = 1;
}
if (state == 1)
{
}
if (state == 2)
{
	if (--waitingAround <= 0)
	{
		state = 3;
		snd_play(snd_wing);
	}
}
if (state == 3)
{
	for (var i = 0; i < partySize; i += 1)
	{
		var _sprites = [spr_teacup_kris, spr_teacup_kris, spr_teacup_susie, spr_teacup_ralsei];
		cup_char[i].sprite_index = _sprites[global.char[i]];
		with (cup_char[i])
		{
			image_xscale = 2;
			image_yscale = 2;
			image_index = 0;
			image_speed = 0;
			cutoff = 10;
		}
	}
	cupCharExists = 1;
	state = 4;
	waitingAround = 15;
	if (uniqueRideExperience == 1 && !reverse)
	{
		waitingAround = 45;
		originalY = y;
		originalX = x;
	}
	if (rideToRide)
		waitingAround = 3;
}
if (state == 4)
{
	if (uniqueRideExperience == 1 && !reverse)
	{
		for (var i = 0; i < 3; i += 1)
		{
			with (cup_char[i])
				scr_depth();
		}
		var _shakeSize = 5;
		x = originalX + irandom_range(-_shakeSize, _shakeSize);
		y = originalY + irandom_range(-_shakeSize, _shakeSize);
		spin = scr_approach(spin, 0, spinSpeed);
		if (waitingAround <= 15)
		{
			x = originalX;
			y = originalY;
		}
	}
	if (--waitingAround <= 0)
	{
		heldThisRide = false;
		state = 5;
		looptrack = snd_loop(snd_chain_extend);
		snd_pitch(looptrack, 0.3 + (_riseSpeedFinal * 0.09));
		snd_volume(looptrack, 0.3, 0);
	}
}
var _destinationY;
if (state == 5)
{
	if (room == room_dw_cyber_battle_maze_1 && global.flag[442] == 0)
	{
		if (riseSpeedBoost == 0)
		{
			idletimer++;
		}
		else
		{
			global.flag[442] = 1;
			idletimer = 0;
		}
	}
	var _moveDirection = reverse ? 1 : -1;
	_destinationY = reverse ? ystart : endY;
	if (!held)
	{
		if (!heldThisRide && holdHeight > -1 && !reverse)
		{
			var _moveAmount = y + (_riseSpeedFinal * _moveDirection);
			var _holdCondition = reverse ? (_moveAmount > holdHeight) : (_moveAmount < holdHeight);
			if (_holdCondition)
			{
				y = holdHeight;
				held = true;
				heldThisRide = true;
				heldAmount = 0;
			}
		}
	}
	else
	{
		with (obj_teacupParallaxer)
			autoamount -= (_riseSpeedFinal * 2);
		heldAmount += _riseSpeedFinal;
		if (heldAmount >= holdDistance)
			held = false;
		with (obj_teacup_bullet)
		{
			if (master == other.id)
				ystart += _riseSpeedFinal;
		}
		if (uniqueRideExperience == 4 && scr_sideb_get_phase() != 3)
		{
			if (teaBullets-- > 0)
			{
				if ((teaBullets % 3) == 0)
					scr_tb_make_split(800, spin, 0, 3, 5);
			}
			if (collision_rectangle(bbox_left, bbox_top - 10, bbox_right, bbox_bottom, obj_teacup_bullet, false, true) != -4)
			{
				if (cup_char[1].sprite_index == spr_teacup_susie)
					cup_char[1].sprite_index = spr_teacup_susie_tea;
				teatimer--;
				if (teatimer <= 0)
				{
					snd_play(snd_swallow);
					teatimer = 6;
				}
			}
			else if (cup_char[1].sprite_index == spr_teacup_susie_tea)
			{
				cup_char[1].sprite_index = spr_teacup_susie;
			}
			var _closest = abs(368 - spin) > abs(8 - spin);
			spin = scr_approach(spin, _closest ? 8 : 368, spinSpeed);
			if (instance_exists(obj_teacupParallaxer))
			{
				if (obj_teacupParallaxer.auto == 0)
					obj_teacupParallaxer.auto = 1;
			}
			_tempLock = true;
		}
	}
	var _spinSpeed = spinSpeed;
	var _mode = mode;
	if (uniqueRideExperience == 1 && reverse)
	{
		_mode = 2;
		_spinSpeed = 2;
		if (global.tempflag[33] > 0 && room == room_dw_mansion_b_west_2f)
			_riseSpeedFinal = 12;
	}
	var _spinDir = (down_h() || left_h()) - (up_h() || right_h());
	switch (_mode)
	{
		case 0:
			if (!_tempLock)
				spin -= _spinSpeed;
			if (!held)
				y += (_spinDir * _riseSpeedFinal);
			break;
		case 1:
			if (!_tempLock)
				spin += (_spinSpeed * _spinDir);
			if (!held)
				y = scr_approach(y, _destinationY, _riseSpeedFinal);
			break;
		case 2:
			if (!_tempLock)
				spin += (_spinSpeed * _moveDirection);
			if (!held)
				y = scr_approach(y, _destinationY, _riseSpeedFinal);
			break;
	}
	spin = scr_wrap(spin, 0, 360);
	if (camFollow)
	{
		var _movedSoFar = abs(reverse ? (endY - y) : (ystart - y));
		if (_movedSoFar > camFollowAfter)
		{
			var _camTarget = camTargetHeight;
			cameray_set(lerp(cameray(), y - _camTarget, 0.2));
			cameray_set(clamp(cameray(), 0, room_height - 480));
			if (_movedSoFar > (camFollowAfter * 2))
				cameray_set(min(cameray(), (y - _camTarget) + 140));
			if (held)
				cameray_set((y - camTargetHeight) + (_riseSpeedFinal * 4));
			if (shaketimer > 0)
			{
				shaketimer--;
				var shakex = shaketimer;
				if ((shakex % 2) == 0)
					shakex *= -1;
				camerax_set(clamp(x - (camerawidth() / 2), 0, room_width - camerawidth()) + shakex);
			}
		}
	}
	if (y == _destinationY)
	{
		state = 6;
		instance_create_depth(0, 0, 0, obj_shake);
		snd_play(snd_locker);
	}
	if (riseSpeedBoost != 0)
		riseSpeedBoost = scr_approach(riseSpeedBoost, 0, riseSpeedBoostFriction);
	if ((uniqueRideExperience == 2 || uniqueRideExperience == 3) && crusher == -4 && abs(_destinationY - y) < 100)
	{
		crusher = instance_create_depth(x, endY - 510, depth - 1000, obj_dw_pancakemaker);
		with (crusher)
		{
			image_xscale = 2;
			image_yscale = image_xscale;
		}
	}
}
if (state == 6)
{
	with (obj_teacup_bullet)
	{
		if (master == other.id)
			instance_destroy();
	}
	if (reverse)
		theScore = 0;
	snd_stop(looptrack);
	if (!instance_exists(obj_shake))
	{
		if (scoreboardExists && !reverse)
		{
			if (scoreboardGoal <= theScore)
			{
				state = 7;
			}
			else
			{
				snd_play(snd_error);
				state = 6.1;
				waitingAround = 30;
			}
		}
		else
		{
			state = 7;
		}
	}
}
if (state == 6.1)
{
	var _flash = (waitingAround div 5) % 2;
	if (_flash == 0)
		scoreboard.scoreCol = 0;
	else
		scoreboard.scoreCol = 255;
	if (--waitingAround <= 0)
	{
		scoreboard.scoreCol = 14483711;
		reverse = true;
		state = 5;
	}
}
with (crusher)
{
	y += (5 + _riseSpeedFinal);
	if (y >= other.y)
	{
		y = other.y;
		if (!other.crushed)
		{
			other.crushed = true;
			instance_create(0, 0, obj_shake);
			snd_play(snd_locker);
		}
	}
}
if (state == 7)
{
	if (uniqueRideExperience == 1 && !reverse)
	{
		oX = x;
		oY = y;
	}
	if (uniqueRideExperience == 2)
	{
		for (var i = 0; i < partySize; i++)
		{
			var _character = (i == 0) ? obj_mainchara : global.cinstance[i - 1];
			var _marker = cup_char[i];
			with (_character)
			{
				x = _marker.x;
				y = _marker.y - 10;
				image_alpha = 1;
			}
			with (_marker)
				sprite_index = spr_teacup_empty;
		}
		with (jumpToRide)
		{
			rideToRide = true;
			event_perform(ev_other, ev_user0);
		}
		snd_play(snd_jump);
		state = 12;
	}
	else
	{
		snd_play(snd_jump);
		for (var i = 0; i < partySize; i++)
		{
			var _sprites = [spr_kris_fall_ball, spr_kris_fall_ball, spr_susie_dw_fall_ball, spr_ralsei_teacup_enter];
			var _charaDest = reverse ? startPos[i] : endPos[i];
			jumpMarker[i] = instance_create(cup_char[i].x, cup_char[i].y, obj_marker);
			with (jumpMarker[i])
			{
				sprite_index = _sprites[global.char[i]];
				image_xscale = 2;
				image_yscale = 2;
				image_index = 0;
				image_speed = 0.5;
				jumper = scr_jump_to_point(_charaDest[0], _charaDest[1], 16, other.jumpOutDuration);
			}
			with (cup_char[i])
				sprite_index = spr_teacup_empty;
		}
		cupCharExists = 0;
		waitingAround = jumpOutDuration;
		state = 8;
	}
}
if (state == 8)
{
	if (uniqueRideExperience == 1 && !reverse)
	{
		x = oX + irandom_range(-3, 3);
		y = oY + irandom_range(-1, 1);
	}
	if (--waitingAround <= 0)
	{
		var _longestAnim, _animSpeed;
		for (var i = 0; i < partySize; i++)
		{
			var _sprites = [spr_kris_dw_land_example_dark, spr_kris_dw_land_example_dark, spr_susie_dw_landed, spr_teacup_ralsei_land];
			_longestAnim = 0;
			_animSpeed = 0.25;
			with (jumpMarker[i])
			{
				sprite_index = _sprites[global.char[i]];
				image_index = 0;
				image_speed = _animSpeed;
				cutoff = 0;
				_longestAnim = max(_longestAnim, image_number);
			}
		}
		waitingAround = 12 + (_longestAnim / _animSpeed);
		state = 9;
		snd_play(snd_wing);
		cameramarker = scr_dark_marker(jumpMarker[0].jumper.endx, jumpMarker[0].jumper.endy, spr_krisd_dark);
		cameramarker.depth = -100;
		cameramarker.image_blend = c_blue;
		cameramarker.visible = 0;
		if (uniqueRideExperience != 1)
			scr_pan_to_obj(cameramarker, 12);
	}
}
if (state == 9)
{
	with (obj_mainchara)
	{
		battlemode = 0;
		drawbattlemode = 1;
	}
	if (uniqueRideExperience == 1 && !reverse)
	{
		x = oX + irandom_range(-3, 3);
		y = oY + irandom_range(-1, 1);
	}
	var animdone = 0;
	for (var i = 0; i < partySize; i++)
	{
		with (jumpMarker[i])
		{
			if (image_index >= (image_number - 1))
			{
				image_speed = 0;
				image_index = image_number - 1;
			}
			if (image_index == (image_number - 1))
				animdone++;
		}
		if (animdone >= 3 && waitingAround > 6)
			waitingAround = 6;
	}
	if (--waitingAround <= 0)
	{
		for (var i = 0; i < partySize; i++)
		{
			var _character = (i == 0) ? obj_mainchara : global.cinstance[i - 1];
			var _marker = jumpMarker[i];
			with (_character)
			{
				x = _marker.x;
				y = _marker.y;
				image_alpha = 1;
			}
			with (_marker)
				instance_destroy();
			with (cameramarker)
				instance_destroy();
			global.facing = 0;
			with (obj_caterpillarchara)
				scr_caterpillar_interpolate();
		}
		waitingAround = -1;
		state = 10;
	}
}
if (state == 10)
{
	if (uniqueRideExperience == 1 && !reverse)
	{
		x = oX + irandom_range(-3, 3);
		y = oY + irandom_range(-1, 1);
	}
	if (--waitingAround <= 0)
	{
		with (obj_darkcontroller)
			charcon = 0;
		global.interact = 0;
		myPitch = 1;
		with (obj_mainchara)
			cutscene = 0;
		riseSpeedBoost = riseSpeedBoostInitial;
		heldAmount = 0;
		if (!returnOnFinish)
		{
			if (scoreboardExists && reverse)
			{
				state = 13;
				scoreboard.scoreCol = 14483711;
			}
			else
			{
				state = 1;
			}
			reverse = !reverse;
			if (!reverse && regenerateBullets)
			{
				if (uniqueBulletPattern != -1)
					scr_tb_pattern(uniqueBulletPattern);
				else
					scr_tb_pattern();
			}
		}
		else
		{
			state = 11;
		}
		if (uniqueRideExperience == 3)
			state = 12;
		if (uniqueRideExperience == 4 && reverse)
			state = 12;
		if (uniqueRideExperience == 1 && reverse)
		{
			state = 14;
			waitingAround = 30;
			x = oX;
			y = oY;
		}
	}
}
if (state == 11)
{
	y = scr_approach(y, ystart, riseSpeedInitial);
	spin -= riseSpeedInitial;
	if (y == ystart)
	{
		state = 1;
		if (uniqueBulletPattern != -1)
			scr_tb_pattern(uniqueBulletPattern);
		else
			scr_tb_pattern();
	}
}
if (state == 12)
{
}
if (state == 13)
{
	var _closest = abs(360 - spin) > abs(0 - spin);
	spin = scr_approach(spin, _closest ? 0 : 360, spinSpeed);
	if (spin == 0 || spin == 360)
		state = 1;
}
if (state == 14)
{
	y += 10;
	if (y > (room_height + 500))
		state = 12;
}
for (var i = 0; i < 3; i++)
{
	var _charSpin = (-90 + (120 * i)) - spin;
	cupx = lengthdir_x(cupDistanceFromCenter, _charSpin);
	cupy = lengthdir_y(cupDistanceFromCenter * 0.5, _charSpin);
	var _cupDepth = depth - depthSeparation - cupy;
	var _spritesTea = [spr_teacup_tea, spr_teacup_kris_tea, spr_teacup_kris_tea, spr_teacup_ralsei_tea];
	if (teaFilled > 0.1 && global.char[i] != 2)
	{
		if (teaFilled >= 1)
			_spritesTea = [spr_teacup_tea2, spr_teacup_kris_tea2, spr_teacup_kris_tea, spr_teacup_ralsei_tea2];
		if ((state == 5 || state == 6) && i < partySize)
			cup_char[i].sprite_index = _spritesTea[global.char[i]];
		else
			cup_char[i].sprite_index = _spritesTea[0];
	}
	cup_char[i].spin = _charSpin;
	cup_char[i].x = x + cupx;
	cup_char[i].y = (y + cupy) - 16;
	cup_char[i].x += cupCharXnudge;
	cup_char[i].y += cupCharYnudge;
	cup_char[i].image_index = scr_wrap(_charSpin, 0, 360) div 30;
	if (fadeOutOthers && !reverse && i != 0)
	{
		if (state == 5)
		{
			var _fadeDistance = 120;
			if (uniqueRideExperience == 4)
				_fadeDistance = 900;
			if (abs(_destinationY - y) <= _fadeDistance)
				cup_char[i].image_alpha = scr_approach(cup_char[i].image_alpha, 1, 0.02 + (riseSpeed / _fadeDistance));
			else
				cup_char[i].image_alpha = scr_approach(cup_char[i].image_alpha, 0.15, 0.05);
		}
		else
		{
			cup_char[i].image_alpha = scr_approach(cup_char[i].image_alpha, 1, 0.05);
		}
	}
	cup_char[i].depth = _cupDepth - 1;
}
if (scoreboardExists)
{
	with (scoreboard)
	{
		var _theCurrentScore = other.theScore;
		y = other.y + 92;
		theScore = _theCurrentScore;
		if (other.state == 6.1)
			theScore = other.scoreboardGoal;
		image_index = floor((_theCurrentScore / other.scoreboardGoal) * (image_number - 1));
		if (_theCurrentScore >= other.scoreboardGoal)
		{
			image_index = image_number - 1;
			scoreCol = 65280;
		}
	}
}
if (room == room_dw_cyber_battle_maze_1)
{
	if (state == 5 && idletimer > 30 && global.flag[442] == 0)
		drawtutorialarrows = true;
	else
		drawtutorialarrows = false;
}
if (wooshnoise == 1)
{
	var woosh = snd_play_pitch(snd_swallow, 0.6);
	snd_volume(woosh, 0.1, 0);
	snd_volume(woosh, 1, 1);
	wooshnoise = 0;
}
if (bouncenoise)
{
	if (!snd_is_playing(snd_jump))
		snd_play_pitch(snd_jump, 1.5);
	bouncenoise = 0;
}
if (swallownoise)
{
	snd_play(snd_swallow);
	swallownoise = 0;
}
