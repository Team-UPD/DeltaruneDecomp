draw_self();
image_index = 1;
if (obj_controller_mansion_traffic.victory && instance_exists(obj_traffic_car))
	image_index = 0;
else
	image_index = 1;
if (image_index == 0)
	draw_amount = 10;
if (image_index == 1)
{
	if (draw_amount > 0)
		draw_amount = lerp(draw_amount, 0, 0.1);
	else
		draw_amount = 0;
}
draw_sprite_ext(sprite_index, 0, x, y, 2, 2, 0, c_white, draw_amount);
draw_sprite_ext(spr_mansiontraffic_alert, 0, x + 6, y + 16, 2, 2, 0, c_white, 1);
draw_sprite_ext(spr_mansiontraffic_alert, 1, x + 6, y + 16, 2, 2, 0, c_white, draw_amount);
