if (listlength == 0)
	listlength = array_length_1d(cursor.memory.xpos);
var startpoint = ceil(cursor.followindex / 5) * 5;
for (i = startpoint; i < min(cursor.followindex + 60, listlength); i += 5)
{
	var alpha = 1 - ((i - cursor.followindex) / 60);
	draw_sprite_ext(sprite_index, image_index, cursor.memory.xpos[i], cursor.memory.ypos[i], 1, 1, 0, image_blend, alpha);
}
