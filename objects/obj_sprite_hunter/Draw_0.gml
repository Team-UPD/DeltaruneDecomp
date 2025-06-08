if (obj_len > 0)
{
	var spriteName = string(sprite_get_name(spriteID));
	var theString = "Objects with " + spriteName + ":";
	for (i = 0; i < obj_len; i++)
		theString += ("\n" + objectNames[i]);
	draw_set_halign(fa_left);
	draw_text(camerax() + 10, cameray() + 30, theString);
}
