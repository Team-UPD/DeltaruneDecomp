dismiss = false;
vertical_dismiss = false;
horizontal_dismiss = false;
animsiner = 0;
vertical_jam_x = x;
vertical_jam_y = y;
hor_jam_x = 3090;
hor_jam_y = 180;
release_hor_jam = false;
release_hor_x = 4000;
release_speed = 12;
scr_depth();
if (global.plot >= 90)
{
	vertical_dismiss = true;
	var readable_cars = instance_create(4140, 255, obj_readable_room1);
	readable_cars.image_xscale = 8;
}
else
{
	var readable_cars = instance_create(3160, 300, obj_readable_room1);
	readable_cars.image_xscale = 10;
}
