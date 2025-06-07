siner = 0;
bgsiner = 0;
siner = 100;
colcol = 0;
hscroll = 0;
eyebody = 1;
adjust = 0;
slowdown = 0;
nowcolor = c_lime;

function change_fountain_color(arg0)
{
	if (room == room_cc_fountain)
	{
		__background_set_colour(arg0);
		nowcolor = arg0;
	}
}
