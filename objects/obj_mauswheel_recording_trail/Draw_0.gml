if (timer == 5)
{
	heartposx[index] = obj_heart.x + 8;
	heartposy[index] = obj_heart.y + 8;
	index++;
	if (index > totalpoints)
		totalpoints++;
	if (index >= 12)
		index = 0;
	if (totalpoints == 12)
		followindex += 1;
	timer = 0;
}
for (i = 0; i < totalpoints; i++)
{
	var alpha;
	if (i < followindex)
		alpha = ((i + followindex) / 12) + (timer / 60);
	else
		alpha = ((i - followindex) / 12) + (timer / 60);
	draw_sprite_ext(spr_maus_player_trail, 0, heartposx[i], heartposy[i], 1, 1, 0, c_white, alpha);
}
