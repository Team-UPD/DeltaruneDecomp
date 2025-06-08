if (con < 75)
	timer = 0;
if (con == 75)
	timer++;
if (con >= 71 && con <= 77)
{
	if (timer < 8)
	{
		draw_sprite_ext(spr_itemBag, item1, 448, 174, 2, 2, 0, c_white, 1);
		draw_sprite_ext(spr_itemBag, item2, 484, 174, 2, 2, 0, c_white, 1);
	}
	if (timer >= 8 && timer < 27)
	{
		draw_sprite_ext(spr_itemBag, 4, 448, 174, 2, 2, 0, c_white, 1);
		draw_sprite_ext(spr_itemBag, 4, 484, 174, 2, 2, 0, c_white, 1);
	}
	if (timer >= 27 && timer < 45)
	{
		draw_sprite_ext(spr_itemBag, 5, 448, 174, 2, 2, 0, c_white, 1);
		draw_sprite_ext(spr_itemBag, 5, 484, 174, 2, 2, 0, c_white, 1);
	}
	if (timer >= 45 && timer < 47)
	{
		draw_sprite_ext(spr_itemBag, 6, 448, 174, 2, 2, 0, c_white, 1);
		draw_sprite_ext(spr_itemBag, 6, 484, 174, 2, 2, 0, c_white, 1);
	}
	if (timer >= 47)
		draw_sprite_ext(spr_itemBag, item3, 466, 174, 2, 2, 0, c_white, 1);
}
if (con == 78)
	draw_sprite_ext(spr_itemBag, item3, 466, 174, 2, 2, 0, c_white, 1);
draw_self();
