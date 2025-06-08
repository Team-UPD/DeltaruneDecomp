if (canchoose == 1)
{
	scr_84_set_draw_font((dar == 1) ? "main" : "mainbig");
	textx = xx;
	texty = yy;
	for (i = 0; i < (choicetotal + 1); i += 1)
	{
		draw_set_color((mychoice == i) ? c_yellow : c_white);
		textx = textposx[i];
		texty = textposy[i];
		draw_text(textx, texty, string_hash_to_newline(global.choicemsg[i]));
	}
	draw_sprite_ext(spr_heartsmall, 0, hx, hy, image_xscale, image_yscale, 0, c_white, 1);
}
