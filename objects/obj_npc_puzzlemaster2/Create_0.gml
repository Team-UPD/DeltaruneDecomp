myinteract = 0;
talked = 0;
image_speed = 0;
image_xscale = 2;
image_yscale = 2;
con = 0;
scr_depth();
image_speed = 0;
type = 0;
siner = 0;
active = 0;
emotion = 0;
beanie[0] = 0;
beanie[1] = 0;
beanie[2] = 0;
if (x < 350)
{
	beanie[1] = 0;
	beanie[0] = 1;
	type = 1;
}
if (x < 250)
{
	beanie[0] = 1;
	beanie[2] = 1;
	type = 2;
}
if (x < 150)
{
	beanie[0] = 1;
	beanie[1] = 1;
	beanie[2] = 1;
	type = 3;
	if (room == room_field_puzzletutorial)
	{
		hole = scr_dark_marker(270, 126, spr_donation_hole_and_tree);
		hole.image_index = 1;
		hole.depth = 900000;
	}
}
