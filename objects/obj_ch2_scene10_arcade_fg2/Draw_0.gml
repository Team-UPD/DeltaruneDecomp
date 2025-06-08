timer++;
image_alpha += 0.2;
draw_set_alpha(image_alpha);
draw_rectangle_color(camerax(), cameray(), camerax() + 640, cameray() + 480, c_black, c_black, c_black, c_black, 0);
draw_set_alpha(1);
