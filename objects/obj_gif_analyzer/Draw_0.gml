draw_set_color(c_red);
draw_set_font(fnt_mainbig);
if (sprite_exists(mygif))
{
	sprite_index = mygif;
	draw_self();
	timer++;
	if (keyboard_check(vk_left))
		image_index -= 1;
	if (keyboard_check(vk_right))
		image_index += 1;
	if (keyboard_check_pressed(vk_up))
		image_index++;
	if (keyboard_check_pressed(vk_down))
		image_index++;
	draw_text(20, cameray() + 440, "This is broken bc GM cant import gifs. lol. see you in 2.3");
}
else
{
	draw_text(20, cameray() + 460, "GIF not found.");
}
