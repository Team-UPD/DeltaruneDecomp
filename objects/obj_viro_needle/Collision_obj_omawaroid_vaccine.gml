if (active)
{
	active = 0;
	spawnVirus = 0;
	image_speed = 1;
	speed = 0;
	if (other.topspeed == 0)
		other.topspeed = other.speed;
	other.speed = 0;
}
