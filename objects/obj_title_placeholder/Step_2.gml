if (specialmode)
{
	if (keyboard_check_pressed(ord("T")))
		screen_save("sprite_remove_" + string(n) + ".PNG");
	if (keyboard_check_pressed(vk_space))
		screen_save("sprite_translate_" + string(n) + ".PNG");
}
