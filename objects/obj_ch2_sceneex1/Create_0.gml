con = -1;
customcon = 0;
su_actor = -1;
disable_face = false;
if (global.chapter != 2 || global.flag[309] == 9)
{
	instance_destroy();
}
else if (global.flag[358] == 1)
{
	nise_susie = scr_dark_marker(575, 275, spr_cutscene_ex1_susie_ralsei_glasses_1);
	nise_susie.image_speed = 0.25;
	with (nise_susie)
		scr_depth();
	nise_ralsei = scr_dark_marker(660, 280, spr_cutscene_ex1_ralsei_glasses_1);
	nise_ralsei.image_speed = 0.25;
	with (nise_ralsei)
		scr_depth();
}
else if (global.flag[358] > 1)
{
	if (!scr_havechar(2))
		scr_getchar(2);
	if (!scr_havechar(3))
		scr_getchar(3);
}
