cameraActive = 1;
cX = camerax();
cY = cameray();
cV = currentView;
if (ignoreFreezeArea[cV] != -2)
	ignoreFreeze = ignoreFreezeArea[cV];
if (ignoreFreeze == 0)
{
	if (global.interact != 0)
		cameraActive = 0;
}
if (ignoreCutscene == 0)
{
	if (cutscene == 1)
		cameraActive = 0;
}
if (cameraActive == 1)
{
	xAdd = 0;
	yAdd = 0;
	cameraFinished = 0;
	event_user(2);
	if (panStyle[cV] == 0)
	{
		panSpeed = panSpeedInit[cV];
		panDir = point_direction(cX, cY, finalX, finalY);
		xAdd = lengthdir_x(panSpeed, panDir);
		yAdd = lengthdir_y(panSpeed, panDir);
		nextX = cX + xAdd;
		nextY = cY + yAdd;
	}
	if (panStyle[cV] == 1)
	{
		if (targetObject[cV] != remTargetObject)
		{
			lerpProgress = 0;
		}
		else if (targetObject[cV] == -4)
		{
			if (remFinalX != finalX || remFinalY != finalY)
				lerpProgress = 0;
		}
		if (remCurrentView != cV)
			lerpProgress = 0;
		if (lerpSmooth[cV] == 0)
		{
			if (lerpProgress == 0)
			{
				startLerpX = cX;
				startLerpY = cY;
			}
		}
		else
		{
			startLerpX = cX;
			startLerpY = cY;
		}
		if (lerpTime[cV] != 0)
			lerpProgress += (1 / lerpTime[cV]);
		else
			lerpProgress = lerpForceAmount[cV];
		lerpProgress = clamp(lerpProgress, 0, 1);
		nextX = lerp(startLerpX, finalX, lerpProgress);
		nextY = lerp(startLerpY, finalY, lerpProgress);
		if (lerpForceAmount[cV] != 0 && lerpSmooth[cV] == 1)
		{
			if (abs(nextX - finalX) < 2)
				nextX = finalX;
			if (abs(nextY - finalY) < 2)
				nextY = finalY;
		}
	}
	if (panStyle[cV] == 2)
	{
		if (remCurrentView != cV || accelInit == 0)
		{
			panSpeed = panSpeedInit[cV];
			panXSpeed = lengthdir_x(panSpeed, panIdealDir);
			panYSpeed = lengthdir_y(panSpeed, panIdealDir);
			accelInit = 1;
		}
		panIdealDir = point_direction(cX, cY, finalX, finalY);
		panXSpeedMax = lengthdir_x(panSpeedMax[cV], panIdealDir);
		panYSpeedMax = lengthdir_y(panSpeedMax[cV], panIdealDir);
		panDir = point_direction(0, 0, panXSpeed, panYSpeed);
		panXAccel = lengthdir_x(panAccel[cV], panIdealDir);
		panYAccel = lengthdir_y(panAccel[cV], panIdealDir);
		if (panDecelBool[cV] == 1)
		{
			if (point_distance(cX, cY, finalX, finalY) < (point_distance(0, 0, panXSpeed, panYSpeed) / panDecelFactor[cV]))
			{
				panXAccel = -panXAccel;
				panYAccel = -panYAccel;
				if (sign(panXAccel) == sign(panXSpeed) || panXSpeed == 0)
					panXAccel = 0;
				if (sign(panYAccel) == sign(panYSpeed) || panYSpeed == 0)
					panYAccel = 0;
			}
		}
		panXSpeed = clamp(panXSpeed + panXAccel, -abs(panXSpeedMax), abs(panXSpeedMax));
		panYSpeed = clamp(panYSpeed + panYAccel, -abs(panYSpeedMax), abs(panYSpeedMax));
		xAdd = panXSpeed;
		yAdd = panYSpeed;
		nextX = cX + xAdd;
		nextY = cY + yAdd;
	}
	if (panStyle[cV] == 3)
	{
		nextX = finalX;
		nextY = finalY;
	}
	if (xAdd > 0)
		nextX = min(nextX, finalX);
	if (xAdd < 0)
		nextX = max(nextX, finalX);
	if (yAdd > 0)
		nextY = min(nextY, finalY);
	if (yAdd < 0)
		nextY = max(nextY, finalY);
	cX = nextX;
	cY = nextY;
	if (cX == finalX || cX < panLimitLeft[cV] || cX > panLimitRight[cV])
	{
		if (cY == finalY || cY < panLimitTop[cV] || cY > panLimitBottom[cV])
			cameraFinished = 1;
	}
	cX = clamp(cX, panLimitLeft[cV], panLimitRight[cV]);
	cY = clamp(cY, panLimitTop[cV], panLimitBottom[cV]);
	if (!ignoreX[cV])
		camerax_set(cX);
	if (!ignoreY[cV])
		cameray_set(cY);
	remFinalX = finalX;
	remFinalY = finalY;
	remTargetObject = targetObject[cV];
	remCurrentView = cV;
}
