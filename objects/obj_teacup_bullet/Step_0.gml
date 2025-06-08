if (cupDistanceFromCenter == 0)
	cupDistanceFromCenter = master.cupDistanceFromCenter;
circleX = lengthdir_x(cupDistanceFromCenter, spin);
circleY = lengthdir_y(cupDistanceFromCenter * 0.5, spin);
fakedepth = circleY / 16;
x = xstart + circleX;
if (bouncing)
	ystart = master.y;
y = (ystart + circleY) - bounceCurrent;
depth = master.depth - master.depthSeparation - circleY - 5;
if (obj_teacup.state == 5)
	spin += spinrate;
var _cutOffBonus = 0;
if (hitType == 5)
{
	spin = -master.spin + offsetAngle + 25;
	ystart += 4;
	depth = master.depth - 400;
	_cutOffBonus = 16;
}
sizefactor = fakedepth / 8;
image_xscale = scr_approach(image_xscale, 2 + sizefactor, 0.05);
image_yscale = image_xscale;
blendo = 0.3 - (sizefactor / 2);
if (blendo < 0)
	blendo = 0;
image_blend = merge_color(colClose, colFar, blendo);
cutOff = (y + sprite_height) - sprite_yoffset - ((master.y - _cutOffBonus) + circleY);
cutOff = max(cutOff, 0);
if (cutOff > sprite_height)
{
	if (hitType == 5)
	{
		with (master)
		{
			teaFilled += 0.05;
			swallownoise = 1;
		}
	}
	else
	{
		with (master)
			wooshnoise = 1;
	}
	instance_destroy();
}
if (hitType == 3)
{
	if (cutOff > 0 && bouncesLeft > 0 && !bouncing)
	{
		with (master)
			bouncenoise = 1;
		bouncesLeft--;
		bouncing = true;
		bounceHeight = 128;
		bounceTime = 1;
		bounceCurrent = 0;
		bounceProgress = (1/15) / bounceTime;
	}
	if (bouncing)
	{
		bounceProgress += ((1/30) / bounceTime);
		bounceCurrent = abs(sin(bounceProgress * pi) * bounceHeight);
		if (bounceProgress >= 1)
		{
			with (master)
				bouncenoise = 1;
			bouncesLeft--;
			bounceProgress--;
			if (bouncesLeft < 0)
			{
				bouncing = false;
				bounceCurrent = 0;
			}
		}
	}
}
if ((ystart - bounceCurrent) > (master.y - bulletHitHeight) && (cutOff / sprite_height) < groundForgiveness)
{
	var _cupChar = master.cup_char;
	for (var i = 0; i < master.partySize; i++)
	{
		if (master.bulletsApplyToAll || i == 0)
		{
			if (abs(angle_difference(spin, _cupChar[i].spin)) < bulletCollisionAngle)
			{
				debugHitThisFrame = true;
				switch (hitType)
				{
					case 0:
					case 3:
					case 4:
						target = 0;
						global.inv = -1;
						global.charinstance[0] = obj_mainchara;
						global.charinstance[1] = global.cinstance[0];
						global.charinstance[2] = global.cinstance[1];
						for (var __j = 0; __j < 3; __j++)
						{
							if (i_ex(global.charinstance[__j]))
							{
								if (instance_exists(obj_teacup.cup_char[__j]))
								{
									global.charinstance[__j].x = obj_teacup.cup_char[__j].x;
									global.charinstance[__j].y = obj_teacup.cup_char[__j].y;
								}
							}
						}
						with (obj_darkcontroller)
							charcon = 1;
						global.heartx = global.charinstance[0].x - camerax();
						global.hearty = global.charinstance[0].y - cameray();
						scr_damage_all_overworld();
						with (obj_shake)
							instance_destroy();
						with (obj_teacup)
							shaketimer = 5;
						break;
					case 1:
						image_blend = c_white;
						with (master)
						{
							if (theScore == 0)
								myPitch = 1;
							snd_pitch(snd_play(snd_booster), myPitch);
							riseSpeedBoost += other.boostAmount;
							theScore++;
							tutorialRide = false;
							myPitch *= 1.05946;
						}
						if (room == room_dw_cyber_teacup_final)
						{
							with (obj_teacup_scoreboard)
								theScore++;
						}
						break;
					case 2:
						break;
					case 5:
						break;
				}
				if (hitType != 5)
				{
					with (instance_create_depth(x, y, depth, obj_teacup_bullet_dead))
					{
						sprite_index = other.sprite_index;
						image_index = other.image_index;
						image_speed = other.image_speed;
						image_xscale = other.image_xscale + 0.2;
						image_yscale = other.image_yscale + 0.2;
						image_alpha = other.image_alpha;
						image_blend = other.image_blend;
						spriteWidthRoot = other.spriteWidthRoot;
						spriteHeightRoot = other.spriteHeightRoot;
						cutOff = other.cutOff;
						master = other.master;
						posY = y - master.y;
					}
					instance_destroy();
				}
			}
		}
	}
}
if (eatMe && hitType == 5)
{
	var _col = collision_point(x, y, obj_markercup, false, false);
	if (_col != -4 && _col.sprite_index == spr_teacup_susie_tea)
		instance_destroy();
}
