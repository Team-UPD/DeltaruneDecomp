if (mybuffer < 10)
	mybuffer++;
if (mybuffer > 2)
{
	if (active && bird >= 0)
	{
		if (button2_p() || obj_shapepuzzle.goalHit)
		{
			snd_play(snd_wing);
			with (obj_shapepuzzle)
				inUse = false;
			active = false;
			image_index = 0;
			global.interact = obj_shapepuzzle.goalHit;
			global.facing = 0;
			with (myPiece)
				active = false;
			exit;
		}
		if (button1_p())
		{
			snd_play_pitch(snd_item, 1.5);
			with (myPiece)
			{
				if (other.troublePiece && image_angle == -90)
				{
					image_angle += 90;
					x -= lengthdir_x(sprite_width, image_angle);
					y -= lengthdir_y(sprite_width, image_angle);
				}
				else
				{
					image_angle -= 90;
					x += lengthdir_x(sprite_width, image_angle + 90);
					y += lengthdir_y(sprite_width, image_angle + 90);
				}
			}
			with (obj_shapepuzzle)
				goalCheck = true;
		}
		var _moveH = right_h() - left_h();
		var _moveV = down_h() - up_h();
		with (myPiece)
		{
			var _centerLength = sprite_width * (sqrt(2) / 2);
			if ((x + lengthdir_x(_centerLength, image_angle - 45) + (_moveH * other.moveAmount)) < 0 || (x + lengthdir_x(_centerLength, image_angle - 45) + (_moveH * other.moveAmount)) > 640)
				_moveH = 0;
			if ((y + lengthdir_y(_centerLength, image_angle - 45) + (_moveV * other.moveAmount)) < 200 || (y + lengthdir_y(_centerLength, image_angle - 45) + (_moveV * other.moveAmount)) > 480)
				_moveV = 0;
		}
		var _moveDir = point_direction(0, 0, _moveH, _moveV);
		if (_moveH == 0 && _moveV == 0)
		{
			holdDelay = 0;
			image_index = 0;
		}
		else
		{
			image_index = min(1 + round(_moveDir / 90), 4);
			if (--holdDelay <= 0)
			{
				snd_play_pitch(snd_menumove, 1.5);
				holdDelay = holdDelayMax;
				with (myPiece)
				{
					x += (_moveH * other.moveAmount);
					y += (_moveV * other.moveAmount);
					if (other.bird > 0)
					{
						var pieceCenterLen = point_distance(0, 0, sprite_width / 2, sprite_height / 2);
						var pieceCenterDir = point_direction(0, 0, sprite_width / 2, sprite_height / 2);
						var _xx = x + lengthdir_x(pieceCenterLen, pieceCenterDir + image_angle);
						var _yy = y + lengthdir_y(pieceCenterLen, pieceCenterDir + image_angle);
						if (_xx >= 530 && _xx <= 610 && _yy >= 255 && _yy <= 315)
							other.bird = 2;
						else
							other.bird = 1;
					}
				}
				with (obj_shapepuzzle)
					goalCheck = true;
			}
		}
	}
	else if (obj_shapepuzzle.goalHit)
	{
		if (image_index < 5)
			image_index = 5;
		else if (image_index < 8)
			image_index += 0.5;
	}
	if (bird == 2 && active)
	{
		berdly_taunt_timer++;
		if (berdly_taunt_timer >= 15)
		{
			image_index = 0;
			bird = -1;
			active = false;
			global.facing = 0;
			scr_speaker("berdly");
			msgsetloc(0, "\\EB* Kris!^1 Stop taunting me with that appealing blue shape!/", "obj_shapepuzzlebutton_slash_Step_0_gml_101_0");
			msgnextloc("\\EC* Y^1-You're just lucky this isn't online,^1 or...^1 or.../", "obj_shapepuzzlebutton_slash_Step_0_gml_102_0");
			msgnextloc("\\ED* ... or you wouldn't be able to taunt!!/%", "obj_shapepuzzlebutton_slash_Step_0_gml_103_0");
			var d = d_make();
			d.side = 1;
		}
	}
	if (bird == -1 && !instance_exists(obj_dialoguer))
	{
		active = true;
		global.facing = 2;
		bird = 0;
	}
}
