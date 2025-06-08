if (i_ex(targetObject[cV]))
{
	if (specialCamera[cV])
	{
		if (specialCameraInit == 0)
		{
			remObjectX = targetObject[cV].x;
			remObjectY = targetObject[cV].y;
			specialCameraInit = 1;
			pullXTimer = 0;
			pullYTimer = 0;
			relXLerpAmt = 0;
			relYLerpAmt = 0;
		}
		else
		{
			movedX = targetObject[cV].x - remObjectX;
			movedY = targetObject[cV].y - remObjectY;
			specialCameraBorderMax[cV] = 240;
			idealRelX = 0;
			idealRelY = 0;
			relXLerpAmt = 0.1;
			relYLerpAmt = 0.1;
			if (abs(movedX) > (8 / (global.darkzone + 1)))
			{
				pullXTimer++;
				if (pullXTimer > 30)
				{
					idealRelX = clamp(movedX * 16, -specialCameraBorderMax[cV], specialCameraBorderMax[cV]);
					relXLerpAmt = 0.02;
				}
			}
			else
			{
				pullXTimer = 0;
			}
			if (abs(movedY) > (8 / (global.darkzone + 1)))
			{
				pullYTimer++;
				if (pullYTimer > 30)
					idealRelY = clamp(movedY * 16, -round(specialCameraBorderMax[cV] * 0.7), round(specialCameraBorderMax[cV] * 0.7));
			}
			else
			{
				pullYTimer = 0;
			}
			if (abs(idealRelX) < 2)
				idealRelX = 0;
			if (abs(idealRelY) < 2)
				idealRelY = 0;
			targetXRelative[cV] = lerp(targetXRelative[cV], idealRelX, relXLerpAmt);
			targetYRelative[cV] = lerp(targetYRelative[cV], idealRelY, relYLerpAmt);
			remObjectX = targetObject[cV].x;
			remObjectY = targetObject[cV].y;
		}
	}
	finalX = (targetObject[cV].x + targetXRelative[cV]) - (camerawidth() / 2);
	finalY = (targetObject[cV].y + targetYRelative[cV]) - (cameraheight() / 2);
	if (targetObjectCenter[cV] == 1)
	{
		finalX += (targetObject[cV].sprite_width / 2);
		finalY += (targetObject[cV].sprite_height / 2);
	}
	if (ignoreTargetObjectX[cV])
		finalX = targetX[cV];
	if (ignoreTargetObjectY[cV])
		finalY = targetY[cV];
}
else if (targetObject[cV] == -4)
{
	finalX = targetX[cV];
	finalY = targetY[cV];
}
finalX = clamp(finalX, panLimitLeft[cV], panLimitRight[cV]);
finalY = clamp(finalY, panLimitTop[cV], panLimitBottom[cV]);
