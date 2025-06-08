burst = 0;
shift = 1;
image_alpha = 1;
flytime = 8;
distx = obj_herokris.x + 10;
disty = obj_herokris.y + 40;
if (global.chapter == 2 && instance_exists(obj_gigaqueen_enemy))
{
	distx = o_boxingcontroller.x;
	disty = o_boxingcontroller.y - 110;
}
dist = point_distance(x, y, distx, disty);
move_towards_point(distx, disty, dist / flytime);
alarm[0] = flytime;
image_speed = 0;
