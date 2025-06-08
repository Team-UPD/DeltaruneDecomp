draw_set_color(c_black);
xx = camerax() - 72;
yy = cameray() + 88;
if (i_ex(obj_mainchara))
{
	if (obj_mainchara.x <= (camerax() + 320))
		xx += 320;
}
scr_darkbox_black(xx + 96, yy + 100, xx + 360, yy + 220);
draw_set_color(c_white);
scr_84_set_draw_font("mainbig");
draw_text(xx + 120, yy + 120, "$" + string(global.gold));
var roomstring = stringsetloc("HELD SPACE: ", "obj_moneydisplay_slash_Draw_0_gml_22_0");
var roomstring2 = stringsetloc("STORAGE SPACE: ", "obj_moneydisplay_slash_Draw_0_gml_23_0");
scr_itemcheck(0);
draw_text(xx + 120, yy + 146, roomstring + string(itemcount));
scr_itemcheck_pocket(0);
draw_text(xx + 120, yy + 172, roomstring2 + string(itemcount));
if (!d_ex())
	instance_destroy();
