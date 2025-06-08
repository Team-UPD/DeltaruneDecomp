timer = 0;
state = 0;
flash = 0;
depth = o_boxingcontroller.depth - 3;
if (o_boxingqueen.x > 320)
{
	dir = 1;
	x = 30;
	y = 215;
	instance_create(x + 430, y + 33, obj_bq_laser_exclamation_point);
	instance_create(x + 350, y + 33, obj_bq_laser_exclamation_point);
	instance_create(x + 270, y + 33, obj_bq_laser_exclamation_point);
	instance_create(x + 190, y + 33, obj_bq_laser_exclamation_point);
	instance_create(x + 110, y + 33, obj_bq_laser_exclamation_point);
	instance_create(x + 30, y + 33, obj_bq_laser_exclamation_point);
}
else
{
	dir = -1;
	x = 610;
	y = 215;
	instance_create(x - 430, y + 33, obj_bq_laser_exclamation_point);
	instance_create(x - 350, y + 33, obj_bq_laser_exclamation_point);
	instance_create(x - 270, y + 33, obj_bq_laser_exclamation_point);
	instance_create(x - 190, y + 33, obj_bq_laser_exclamation_point);
	instance_create(x - 110, y + 33, obj_bq_laser_exclamation_point);
	instance_create(x - 30, y + 33, obj_bq_laser_exclamation_point);
}
