timer++;
if (timer == 3)
{
	timer = 0;
	instance_create(x, y, obj_musical_path_dot);
}
