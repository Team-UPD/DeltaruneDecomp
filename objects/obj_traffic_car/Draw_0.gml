downframetimer++;
animsiner++;
if (downframetimer >= 3)
{
	if (downframe == 0)
		downframe = 1;
	else
		downframe = 0;
	downframetimer = 0;
}
if (walkdir == "down")
{
	draw_sprite_ext(spr_traffic_car_legs, animsiner / 6, x, y + (downframe * 2), image_xscale, image_yscale, 0, c_white, image_alpha);
	draw_sprite_ext(sprite_index, image_index, x + walkx, y + (downframe * 4) + walky, image_xscale, image_yscale, 0, c_white, image_alpha);
}
if (walkdir == "right")
{
	draw_sprite_ext(spr_traffic_car_side_legs_only, animsiner / 6, x, (y + (downframe * 2)) - 32, image_xscale, image_yscale, 0, c_white, image_alpha);
	draw_sprite_ext(spr_traffic_car_side, image_index, x + walkx, y + (downframe * 4) + walky, image_xscale, image_yscale, 0, c_white, image_alpha);
}
if (walkdir == "left")
{
	draw_sprite_ext(spr_traffic_car_side_legs_only, animsiner / 6, sprite_width + x, (y + (downframe * 2)) - 32, -image_xscale, image_yscale, 0, c_white, image_alpha);
	draw_sprite_ext(spr_traffic_car_side, image_index, sprite_width + x + walkx, y + (downframe * 4) + walky, -image_xscale, image_yscale, 0, c_white, image_alpha);
}
if (walking == 1)
{
	walklerp += (0.01 + (walklerp / 2));
	if (walklerp >= 1)
		walklerp = 1;
}
else
{
	if (walklerp >= 0)
		walklerp *= 0.85;
	if (abs(walklerp) < 0.02)
		walklerp = 0;
	if (abs(walkx) < 0.02)
		walkx = 0;
	if (abs(walky) < 0.02)
		walky = 0;
}
walkx = sin(animsiner / 4) * walklerp * 2;
walky = lerp(0, walklerp, -26);
if (alwayswalking == 1)
	walky = -26;
