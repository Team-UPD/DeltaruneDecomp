if (init == 0)
{
	idealLength = string_length(idealString);
	for (i = 0; i < idealLength; i++)
		idealLetter[i] = string_char_at(idealString, 1 + i);
	init = 1;
}
if (con == 10 && global.interact == 0)
{
	global.interact = 1;
	global.facing = 2;
	timer = 0;
	con = 11;
	lost = 1;
}
if (con == 11)
{
	timer++;
	if (timer == 30)
		snd_play(snd_cantselect);
	if (timer == 60)
	{
		with (lastPressedTile)
			bouncecon = 1;
		snd_play(snd_jump);
		ball = scr_dark_marker(obj_mainchara.x, obj_mainchara.y, spr_kris_fall_ball);
		ball.image_speed = 0.5;
		ball.depth = 100;
		var ballY = krisStartY;
		var ballX = krisStartX;
		with (ball)
			scr_jump_to_point(ballX, ballY, 30, 20);
		with (obj_mainchara)
			visible = 0;
		letterCount = 0;
		addString = "";
		currentString = "";
		lost = 0;
	}
	if (timer == 80)
	{
		obj_mainchara.x = krisStartX;
		obj_mainchara.y = krisStartY;
		global.facing = 0;
		with (ball)
			instance_destroy();
		with (obj_mainchara)
			visible = 1;
		global.interact = 0;
	}
}
if (con == 20 && global.interact == 0)
{
	global.interact = 1;
	global.facing = 2;
	timer = 0;
	con = 21;
}
if (con == 21)
{
	timer++;
	if (timer == 30)
	{
		won = 1;
		snd_play(snd_won);
		for (i = 0; i < 15; i++)
		{
			d = instance_create(180, 200, obj_confetti_overworld);
			d.direction = random_range(310, 350);
			d.height = 20;
		}
		for (i = 0; i < 15; i++)
		{
			d = instance_create(480, 200, obj_confetti_overworld);
			d.direction = random_range(190, 230);
			d.height = 20;
		}
	}
	if (timer == 90)
	{
		con = 0;
		with (obj_ch2_keyboardpuzzle_tile)
		{
			pressed = 1;
			pressable = 0;
		}
		global.facing = 0;
		snd_play(snd_locker);
		instance_create(0, 0, obj_shake);
		global.interact = 0;
		timer = 0;
	}
}
