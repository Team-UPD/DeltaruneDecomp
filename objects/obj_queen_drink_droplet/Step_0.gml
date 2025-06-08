timer++;
path_position = lerp(0, 1, timer / 15);
path_position += offset;
if (path_position > 0.99)
	instance_destroy();
if (y > (obj_queen_enemy.y + 46))
	instance_destroy();
