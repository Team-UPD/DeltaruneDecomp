function scr_slidebeatbullet(arg0, arg1, arg2)
{
	var _lane = arg0;
	var _frames = arg1;
	var _targetBeat = arg2;
	var _positionX = lanesX + (_lane * lanesWidth) + (lanesWidth * 0.5);
	with (instance_create_depth(_positionX, -30, 0, obj_slidebullet))
	{
		framesAway = 999;
		frames = _frames;
		targetBeat = _targetBeat;
		image_alpha = 0;
	}
}
