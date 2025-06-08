if (big == 1)
{
	damage = 4;
	image_alpha += (0.1 * f);
	if (image_xscale < 1)
		image_xscale += (0.1 * f);
	if (image_yscale > 1)
		image_yscale -= (0.1 * f);
}
if (x >= (camerax() + 700))
	instance_destroy();
if (y >= (cameray() + 520))
	instance_destroy();
if (y <= (cameray() - 40))
	instance_destroy();
if (x >= (camerax() + 500) && x < (camerax() + 530) && instance_exists(obj_sneo_faceattack) && obj_sneo_faceattack.init == 1)
{
	event_user(0);
	snd_play(snd_bell);
}
if (sucked == 1 && instance_exists(obj_sneo_final_forme))
{
	if (y < (obj_sneo_final_forme.y + 146))
		y++;
	if (y > (obj_sneo_final_forme.y + 146))
		y--;
	direction = point_direction(x, y, obj_sneo_final_forme.x + 122, obj_sneo_final_forme.y + 146);
	gravity_direction = point_direction(x, y, obj_sneo_final_forme.x + 122, obj_sneo_final_forme.y + 146);
}
if (trail == 1)
{
	trail_timer++;
	if (trail_timer == 2)
	{
		trail_timer = 0;
		after = instance_create(x - 10, y, obj_yheart_shot_afterimage);
		after.image_speed = 0;
		after.sprite_index = spr_yheart_bigshot_trail;
		after.image_xscale = 0.8;
		after.image_yscale = 0.5;
		after.image_index = image_index;
		after.speed = 0;
		after.friction = 0;
		after.depth = depth;
		after.direction = 180;
	}
}
