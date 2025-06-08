if (global.plot < 95 && !scr_havechar(2))
{
	var susie = scr_dark_marker(415, 190, spr_cutscene_15_susie_cotton_candy);
	susie.image_speed = 0.1;
	with (susie)
		scr_depth();
	var ralsei = scr_dark_marker(340, 205, spr_ralsei_cotton_talk);
	ralsei.image_speed = 0.1;
	with (ralsei)
		scr_depth();
}
