draw_self();
if (room == room_dw_cyber_teacup_final)
{
	if (theScore == 70)
	{
		scoreCol = 65280;
		if (treasure == 0)
			treasure = instance_create(2676, 1684, obj_treasure_room);
	}
}
draw_sprite_ext(spr_teacup_scoreboard_b, image_index, x, y, image_xscale, image_yscale, image_angle, scoreCol, image_alpha);
var ones = theScore % 10;
var tens = theScore div 10;
if (theScore > 0)
{
	draw_sprite_ext(spr_teacup_scoreboard_digits, ones, x, y, 2, 2, 0, scoreCol, 1);
	draw_sprite_ext(spr_teacup_scoreboard_digits, 10 + tens, x, y, 2, 2, 0, scoreCol, 1);
}
