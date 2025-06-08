alphaprev = draw_get_alpha();
draw_set_alpha(alpha);
draw_set_color(c_white);
scr_draw_circle_width_qb(x, y, radCurrent, widthC, quality);
draw_set_alpha(alphaprev);
