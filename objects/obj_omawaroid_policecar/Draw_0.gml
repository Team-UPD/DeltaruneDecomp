var oob = false;
if (y < (boxTop + 18) || y > (boxBottom - 18))
{
	oob = true;
	scr_draw_in_box_begin();
}
draw_self();
if (oob)
	scr_draw_in_box_end();
