draw_self();
if (heartwagon == 1)
{
	draw_sprite(spr_wheelbarrow_parts, 4, wagon.x + 5, wagon.y + 1);
	draw_sprite(spr_wheelbarrow_parts, 3, (wagon.x + 5 + heartx + random(cageamt * 2)) - random(cageamt * 2), (wagon.y + 1 + hearty + random(cageamt * 2)) - random(cageamt * 2));
	draw_sprite(spr_wheelbarrow_parts, 2, (wagon.x + 5 + random(cageamt)) - random(cageamt), (wagon.y + 1 + random(cageamt)) - random(cageamt));
	draw_sprite(spr_wheelbarrow_parts, 1, wagon.x + 5, wagon.y + 1);
}
