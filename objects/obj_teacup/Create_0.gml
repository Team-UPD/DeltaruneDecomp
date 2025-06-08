idletimer = 0;
drawtutorialarrows = false;
drawtutorialarrows_alpha = 0;
depthBase = 900000;
depthSeparation = 200;
depth = depthBase;
image_xscale = 2;
image_yscale = image_xscale;
movedSoFar = 0;
state = 0;
partySize = 1;
reverse = false;
fixcamera = 0;
spin = 0;
screwSegHeight = sprite_get_height(spr_teacup_screw) * 2;
camTargetHeight = 0;
camFollowMultiplier = 2;
cupCharXnudge = -20;
cupCharYnudge = -54;
cupDistanceFromCenter = 112;
cupCharExists = 0;
held = false;
heldThisRide = false;
heldAmount = 0;
debugHitThisFrame = false;
spinSpeedInitial = 2;
jumpMarker = [-1, -1, -1];
shadowSurf = -1;
riseSpeedBoostInitial = riseSpeedBoost;
theScore = 0;
myPitch = 1;
scoreboard = -4;
teaBullets = 60;
teaFilled = 0;
rideToRide = false;
crusher = -4;
crushed = false;
scoreCol = 14483711;
timer = 0;
shaketimer = 0;
remcamerax = 0;
wooshnoise = 0;
swallownoise = 0;
bouncenoise = 0;
teatimer = 0;
hitboxxa = 16;
hitboxxb = 24;
hitboxya = 24;
hitboxyb = 40;
var _offsetY = [0, -32, 32];
var _offsetX = [64, 0, 0];
for (var i = 0; i < 3; i++)
{
	var _check = endPos[i];
	if (_check[0] == undefined)
		endPos[i] = [x + 200 + _offsetX[i], (endY + _offsetY[i]) - 64];
	_check = startPos[i];
	if (_check[0] == undefined)
		startPos[i] = [x - 200 - _offsetX[i], (ystart + _offsetY[i]) - 64];
}
for (var i = 0; i < 3; i += 1)
{
	cup_char[i] = instance_create_depth(0, 0, 0, obj_markercup);
	with (cup_char[i])
	{
		sprite_index = spr_teacup_empty;
		image_speed = 0;
		image_xscale = 2;
		image_yscale = 2;
		scr_depth();
		spin = 0;
	}
}
if (startOffset != undefined)
{
	state = 0;
	y += startOffset;
}
if (scoreboardExists)
{
	scoreboard = instance_create_depth(x, y, depth - 9999, obj_teacup_scoreboard);
	with (scoreboard)
		scoreCol = 14483711;
}
if (uniqueBulletPattern != -1)
	scr_tb_pattern(uniqueBulletPattern);
else
	scr_tb_pattern();
if (global.chapter == 2)
{
	if (room == room_dw_mansion_b_west_2f && global.tempflag[33] > 0)
	{
		y = 600;
		riseSpeedInitial = 12;
		riseSpeed = 12;
	}
	if (room == room_dw_city_postbaseball_1)
		state = 999;
}
looptrack = -10;
