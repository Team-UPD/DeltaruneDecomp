draw_self();
draw_set_color(c_white);
var _percent = max(0, framesAway / frames);
var _yDiff = abs(ystart - endY);
draw_set_color(c_red);
draw_rectangle(x, y - 60, x + 100, (y - 60) + 20, false);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
