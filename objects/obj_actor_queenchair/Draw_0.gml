if (float == 1)
{
	floatsiner++;
	floaty = sin(floatsiner / 12) * 4;
}
if (shadow == 1)
{
	fakeshadow.x = x;
	fakeshadow.y = (y + sprite_height) - fakeshadow.sprite_height;
	fakeshadow.visible = 1;
	fakeshadow.sprite_index = sprite_index;
	fakeshadow.image_index = image_index;
	fakeshadow.image_blend = c_black;
}
draw_sprite_ext(sprite_index, image_index, x, y + fakey + floaty, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
