if (type != 0 || (intro_timer == 0 && heart_recoil == 0))
	exit;
if (intro_timer == -1)
{
	if (obj_heart.x <= ((obj_growtangle.x - (obj_growtangle.sprite_width / 2)) + 4))
		heart_recoil = 10;
	intro_timer = 0;
}
else if (intro_timer > 0)
{
	if (heart_recoil == 0 && intro_timer > 7 && obj_heart.x >= ((obj_growtangle.x + (obj_growtangle.sprite_width / 2)) - 24))
		heart_recoil = scr_remapvalue(8, 15, intro_timer, 0, -10);
}
if (heart_recoil != 0)
{
	obj_heart.x += heart_recoil;
	heart_recoil = scr_movetowards(heart_recoil, 0, 1);
}
obj_heart.x = clamp(obj_heart.x, (obj_growtangle.x - (obj_growtangle.sprite_width / 2)) + 2, (obj_growtangle.x + (obj_growtangle.sprite_width / 2)) - 24);
