if (instance_exists(obj_camera_advanced))
{
	if (overrideDefaultValues)
	{
		if (hasTargetObject)
			obj_camera_advanced.targetObject[myView] = targetObject;
		if (panLimitBottom != -1)
			obj_camera_advanced.panLimitBottom[myView] = panLimitBottom;
		if (panLimitTop != -1)
			obj_camera_advanced.panLimitBottom[myView] = panLimitBottom;
		if (panLimitRight != -1)
			obj_camera_advanced.panLimitBottom[myView] = panLimitBottom;
		if (panLimitLeft != -1)
			obj_camera_advanced.panLimitBottom[myView] = panLimitBottom;
		obj_camera_advanced.ignoreTargetObjectX[myView] = useTargetX;
		obj_camera_advanced.ignoreTargetObjectY[myView] = useTargetY;
		if (ignoreFreezeArea != -2)
			obj_camera_advanced.ignoreFreezeArea[myView] = ignoreFreezeArea;
		obj_camera_advanced.targetX[myView] = targetX;
		obj_camera_advanced.targetY[myView] = targetY;
		obj_camera_advanced.targetXRelative[myView] = targetXRelative;
		obj_camera_advanced.targetYRelative[myView] = targetYRelative;
		obj_camera_advanced.panStyle[myView] = panStyle;
		if (panSpeedInit != -1)
			obj_camera_advanced.panSpeedInit[myView] = panSpeedInit;
	}
	init = 1;
}
