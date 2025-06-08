wheel_base_angle -= rotate_speed;
draw_sprite_ext(spr_dw_mansion_ferris_wheel_base, 0, x, y, 1, 1, wheel_base_angle, c_white, image_alpha);
car_angle -= rotate_speed;
if (car_angle >= 360)
	car_angle += 360;
var orbit = car_orbit;
var angle = car_angle;
var center_x = x - 10;
var center_y = y - 15;
var car_sn_x = lengthdir_x(orbit, angle) + center_x;
var car_sn_y = lengthdir_y(orbit, angle) + center_y;
draw_sprite_ext(spr_dw_mansion_ferris_wheel_car_sn, 0, car_sn_x, car_sn_y, 1, 1, 0, c_white, image_alpha);
for (var i = 0; i < 15; i++)
{
	angle = car_angle - (22.5 * (i + 1));
	var car_x = lengthdir_x(orbit, angle) + center_x;
	var car_y = lengthdir_y(orbit, angle) + center_y;
	draw_sprite_ext(spr_dw_mansion_ferris_wheel_car, 0, car_x, car_y, 1, 1, 0, c_white, image_alpha);
}
