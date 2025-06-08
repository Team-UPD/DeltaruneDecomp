function c_walktoobject(arg0, arg1, arg2, arg3)
{
	var _targetx = arg0.x + arg1;
	var _targety = arg0.y + arg2;
	c_cmd("walkdirect", _targetx, _targety, arg3, 0);
	c_walk();
}

function c_delaywalktoobject(arg0, arg1, arg2, arg3, arg4)
{
	var _targetx = arg1.x + arg2;
	var _targety = arg1.y + arg3;
	c_cmd_x("delaycmd", arg0, "walkdirect", _targetx, _targety, arg4, 0);
}

function c_walktoobject_wait(arg0, arg1, arg2, arg3)
{
	c_walktoobject(arg0, arg1, arg2, arg3);
	c_wait(arg3);
}

function c_delaywalktoobject_wait(arg0, arg1, arg2, arg3, arg4)
{
	c_delaywalktoobject(arg0, arg1, arg2, arg3, arg4);
	c_wait(arg0 + arg4);
}
