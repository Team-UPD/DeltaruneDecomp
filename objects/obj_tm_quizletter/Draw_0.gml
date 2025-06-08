ol = outline ? 2 : 0;
draw_set_color(outline ? c_black : c_white);
draw_circle(x, y, 24 + ol, 0);
if (ol == 2)
	ol++;
tailx = x + lengthdir_x(36 + ol, direction + 180);
taily = y + lengthdir_y(36 + ol, direction + 180);
tailbx = lengthdir_x(16 + ol, direction + 90);
tailby = lengthdir_y(16 + ol, direction + 90);
tailcx = lengthdir_x(16 + ol, direction - 90);
tailcy = lengthdir_y(16 + ol, direction - 90);
draw_triangle(tailx, taily, x + tailbx, y + tailby, x + tailcx, y + tailcy, 0);
