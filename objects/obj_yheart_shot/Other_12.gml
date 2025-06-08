if (sucked == 0)
{
	sucked = 1;
	direction = point_direction(x, y, obj_sneo_final_forme.x + 122, obj_sneo_final_forme.y + 146);
	gravity_direction = point_direction(x, y, obj_sneo_final_forme.x + 122, obj_sneo_final_forme.y + 146);
	hspeed = 0;
	speed = 3.5;
	friction = 0;
	gravity = 0.3;
}
