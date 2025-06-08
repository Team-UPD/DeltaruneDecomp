siner++;
y += (sin(siner / 16) / 4);
if (global.plot < 100)
{
	if (instance_exists(obj_npc_room))
	{
		draw_sprite_ext(spr_queenscreen, 11, x - 4, y - 5, 2, 2, 0, c_white, 1);
		draw_sprite_ext(spr_npc_nubert_screen, obj_npc_room.image_index, x - (obj_npc_room.sprite_width / 2) - 4, y - (obj_npc_room.sprite_height / 2) - 5, -2, 2, 0, c_white, 1);
	}
}
if (global.plot >= 100)
{
	draw_sprite_ext(spr_queenscreen, 11, x - 4, y - 5, 2, 2, 0, c_white, 1);
	draw_sprite_ext(spr_npc_nubert_screen, 2, x - 30, y - 24, 2, 2, 0, c_white, 1);
}
