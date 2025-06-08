if (active == 0)
	exit;
if (other.object_index == obj_virovirokun_virus || (other.object_index == object_index && other.direction != 0))
	exit;
if (direction == 0 || other.object_index == obj_omawaroid_vaccine)
{
	active = 0;
	spawnVirus = 0;
	image_speed = 1;
	speed = 0;
}
else if (other.object_index != obj_virovirokun_needle || abs(angle_difference(other.direction, direction) > 90))
{
	if (spawning == true)
	{
		spawning = false;
		sprite_index = spr_virovirokun_needle;
		image_index = 0;
	}
	image_speed = 1;
	active = 0;
	spawnVirus = 1;
	image_speed = 1;
	speed = 0;
	infection = 1;
	if (other.object_index != obj_viro_needle)
	{
		targetx = other.x;
		targety = other.y;
		targetsprite = other.sprite_index;
		targetimage = other.image_index;
	}
	else
	{
		targetx = lerp(x, other.x, 0.5);
		targety = lerp(y, other.y, 0.5);
		poisoncolor = c_white;
	}
	instance_destroy(other);
}
