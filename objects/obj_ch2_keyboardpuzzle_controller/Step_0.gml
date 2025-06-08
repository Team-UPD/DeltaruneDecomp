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
		ball = scr_dark_marker(obj_mainchara.x - 10, obj_mainchara.y - 40, spr_kris_fall_ball);
		ball.image_speed = 0.5;
		ball.depth = 100;
		if (puzzle_id == 2)
		{
			krisStartX = 80;
			krisStartY = 220;
			if (firstTileX > 420)
			{
				krisStartX = 522;
				if (use_ja)
					krisStartX += 16;
			}
			else if (firstTileX > 180)
			{
				krisStartX = 302;
				krisStartY = 312;
			}
			else if (use_ja)
			{
				krisStartX -= 16;
			}
		}
		var ballX = krisStartX - 10;
		var ballY = krisStartY - 40;
		with (ball)
			scr_jump_to_point(ballX, ballY, 30, 20);
		with (obj_mainchara)
		{
			x = other.ball.x;
			y = other.ball.y;
			visible = 0;
		}
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
		failcount++;
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
		if (puzzle_id != 2)
			snd_play(snd_won);
		else
			snd_play(snd_won_skipping);
	}
	if (puzzle_id == 2)
	{
		if (timer == 30)
			victorySprite = spr_keyboard_puzzle_icee;
		if (timer == 60)
		{
			victorySprite = spr_keyboard_puzzle_icee_hacked;
			hacked = true;
			image_timer = 1;
		}
		else if (timer == 80)
		{
			hacked = false;
			image_timer = -0.25;
			victorySprite = spr_keyboard_puzzle_icee_hacked_2;
		}
	}
	if (timer == 90)
	{
		if (puzzle_id == 0 && room != room_dw_cyber_keyboard_puzzle_2)
		{
			global.interact = 0;
			con = 0;
			event_user(1);
		}
		else
		{
			con = 22;
			if (room == room_dw_cyber_keyboard_puzzle_2)
			{
				snd_play(snd_queen_bitcrushed_hoot);
				victorySprite = spr_keyboard_puzzle_queenface;
			}
			else
			{
				victorySprite = 0;
			}
		}
		timer = 0;
	}
}
if (con == 22)
{
	timer++;
	if (timer == 10)
		global.facing = 2;
	else if (timer == 30)
		con = 23;
}
if (con == 23)
{
	if (room == room_dw_cyber_keyboard_puzzle_2)
	{
		scr_speaker("queen");
		msgsetloc(0, "\\E1* You Typed: Agree 2 All/", "obj_ch2_keyboardpuzzle_controller_slash_Step_0_gml_160_0");
		msgnextloc("* Thank You For Agreeing 2 This Peon Release Form/", "obj_ch2_keyboardpuzzle_controller_slash_Step_0_gml_161_0");
		msgnextloc("\\EC* Now You Are All Legally My Minions/", "obj_ch2_keyboardpuzzle_controller_slash_Step_0_gml_162_0");
		msgnextloc("\\ED* And I Can Use Your Likeness For Funny Statues/", "obj_ch2_keyboardpuzzle_controller_slash_Step_0_gml_163_0");
		scr_anyface_next("susie", 0);
		msgnextloc("\\E0* What if we just..^1. don't do what you say?/", "obj_ch2_keyboardpuzzle_controller_slash_Step_0_gml_165_0");
		scr_anyface_next("queen", 6);
		msgnextloc("\\E6* In That Case I Would Be Forced To/", "obj_ch2_keyboardpuzzle_controller_slash_Step_0_gml_167_0");
		msgnextloc("\\EF* Use Another Guy Probably/", "obj_ch2_keyboardpuzzle_controller_slash_Step_0_gml_168_0");
		scr_anyface_next("susie", 0);
		msgnextloc("\\E0* Uh^1. Better get started on that then./", "obj_ch2_keyboardpuzzle_controller_slash_Step_0_gml_170_0");
		scr_anyface_next("queen", 6);
		msgnextloc("\\E6* Okay But I'm Still Going To Use Your Likeness/%", "obj_ch2_keyboardpuzzle_controller_slash_Step_0_gml_172_0");
		d_make();
		con = 24;
	}
	else
	{
		timer++;
		if (timer == 60)
		{
			victorySprite = spr_keyboard_puzzle_bluecheck;
			global.interact = 0;
			checkscreen = instance_create(monitorx + 40, 80, obj_queenscreen);
			checkscreen.extflag = 4;
			checkscreen.image_index = 10;
			checkscreen.depth = 0;
			event_user(1);
			con = 0;
		}
	}
}
else if (con == 24)
{
	if (!instance_exists(obj_dialoguer))
	{
		victorySprite = spr_keyboard_puzzle_agree2all;
		global.interact = 0;
		global.facing = 0;
		event_user(1);
		con = 0;
	}
}
