if (buffering == 1)
{
	var rightside = lerp(-65, 65, bufferbar / bufferduration);
	draw_set_color(c_gray);
	draw_rectangle(obj_growtangle.x - 65, obj_growtangle.y - 100, obj_growtangle.x + 65, obj_growtangle.y - 90, 0);
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_text(obj_growtangle.x - 65, obj_growtangle.y - 160, "Buffering...");
	draw_rectangle(obj_growtangle.x - 65, obj_growtangle.y - 100, obj_growtangle.x + rightside, obj_growtangle.y - 90, 0);
}
else
{
}
