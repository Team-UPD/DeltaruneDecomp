active = false;
moveAmount = 10;
holdDelayMax = 3;
holdDelay = 0;
pieceColours = [c_orange, c_green, c_purple, c_yellow, c_aqua];
image_speed = 0;
troublePiece = 0;
myPiece = instance_create_depth(x + choose(0, -20, 20), y + 170, depth, obj_shapepuzzlepiece);
depth = 999990;
var _count = instance_number(obj_shapepuzzlepiece);
icon_color = pieceColours[_count - 1];
bird = (_count == 5) ? 1 : 0;
berdly_taunt_timer = 0;
mybuffer = 0;
with (myPiece)
{
	depth = 999900;
	sprite_index = obj_shapepuzzle.sprite_index;
	_count = instance_number(obj_shapepuzzlepiece);
	image_index = 1 + _count;
	image_blend = other.pieceColours[_count - 1];
	image_xscale = 2;
	image_yscale = 2;
	if (room == room_dw_mansion_darkbulb_2 && image_index == 5)
		other.troublePiece = true;
	var _loopcount;
	if (room == room_dw_mansion_darkbulb_3)
		_loopcount = irandom(3);
	else if (other.troublePiece)
		_loopcount = 1;
	else
		_loopcount = 1 + irandom(2);
	repeat (_loopcount)
	{
		image_angle -= 90;
		x += lengthdir_x(sprite_width, image_angle + 90);
		y += lengthdir_y(sprite_width, image_angle + 90);
	}
}
if (obj_shapepuzzle.goalHit)
	image_index = 8;
