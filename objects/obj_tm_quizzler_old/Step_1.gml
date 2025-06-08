if (init == 0 || restart)
{
	if (init == 0)
	{
		animator.creator = creator;
		animator.quizmode = 1;
	}
	if (dojo && difficulty >= 4)
	{
		turnspeed = 40 - ((difficulty - 4) * 5);
		turns = difficulty - 2;
	}
	else if (difficulty == 5)
	{
		turnspeed = 30;
		turns = 5;
	}
	else if (difficulty == 4)
	{
		turnspeed = 40;
		turns = 4;
	}
	init = 1;
	restart = false;
	for (i = 0; i < turns; i++)
	{
		if (i > 0 && !canrepeat)
		{
			var nextletter = irandom(2);
			if (nextletter == lastletter)
				nextletter = 3;
			letters[i] = nextletter;
			lastletter = nextletter;
		}
		else
		{
			letters[i] = irandom(3);
		}
	}
}
timer--;
if (state == -1)
{
	if (timer <= 0)
	{
		timer = 0;
		state = 0;
	}
}
if (state == 0)
{
	if (currentturn == turns)
	{
		animator.targetx = obj_growtangle.x + 100;
		animator.targety = obj_growtangle.y;
		state = 1;
		animator.quizloop = true;
		currentturn = 0;
		timer = turnspeed + 10;
	}
	else if (timer <= 0)
	{
		var targetDirection;
		if (turns > 1)
		{
			var bottomangle = 140;
			var topangle = 220;
			if (turns == 2)
			{
				bottomangle = 170;
				topangle = 190;
			}
			else if (turns == 3)
			{
				bottomangle = 155;
				topangle = 205;
			}
			targetDirection = lerp(bottomangle, topangle, currentturn / (turns - 1));
		}
		else
		{
			targetDirection = 180;
		}
		var offset = 36;
		var xx = x + 80 + lengthdir_x(offset, targetDirection);
		var yy = y + 40 + lengthdir_y(offset, targetDirection);
		var _letter;
		for (i = 0; i < 2; i++)
		{
			temp = instance_create(xx, yy, obj_tm_quizletter);
			temp.sprite_index = spr_tm_letters;
			temp.image_speed = 0;
			_letter = letters[currentturn];
			temp.image_index = _letter;
			temp.direction = targetDirection;
			temp.speed = 10;
			temp.friction = 1;
			timer = turnspeed - 20;
			if (i == 1)
			{
				temp.outline = 1;
				temp.depth++;
			}
			temp.alarm[0] = (20 * (turns - currentturn)) - ((turns - 1 - currentturn) * 2);
		}
		currentturn++;
		snd_play(voiceclips[_letter]);
	}
}
else if (state == 1)
{
	if (animator.state == 0 && timer < 20)
		animator.state = 1;
	if (timer <= 0)
	{
		var xx = obj_growtangle.x + 1;
		var yy = obj_growtangle.y;
		var zaptime = (difficulty >= 4) ? clamp(turnspeed - 20, 10, 20) : 20;
		for (i = 0; i < 4; i++)
		{
			if (i == letters[currentturn])
				continue;
			d = scr_bullet_create(xx, yy, obj_tm_quizzap);
			d.alarm[0] = zaptime;
			d.letter = i;
		}
		currentturn++;
		animator.state = 2;
		timer = turnspeed;
		if (currentturn == turns)
		{
			alarm[1] = 20;
			state = 2;
			timer = 20;
		}
		else
		{
			alarm[0] = 20;
		}
	}
}
