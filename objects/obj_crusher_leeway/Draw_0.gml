draw_sprite(sprite_index, image_index, x - 5, y - 5);
if (parent != -1 && i_ex(parent))
{
	x = parent.x - 35;
	y = parent.y - 4;
}
else
{
	instance_destroy();
}
for (var i = 0; i < instance_number(obj_yheart_shot); i += 1)
{
	enemy[i] = instance_find(obj_yheart_shot, i);
	if (enemy[i].x >= (x + 5) && distance_to_object(enemy[i]) < 40)
	{
		enemy[i].y = y;
		instance_destroy();
	}
}
