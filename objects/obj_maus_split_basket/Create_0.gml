con = 0;
notime = 0;
xx = camerax();
yy = cameray();
draw_in = 0;
draw_in_timer = 0;
caught = 0;
extra_mode = 1;
noisevol = 1;
if (instance_exists(obj_mauswheel_enemy))
	extra_mode = obj_mauswheel_enemy.basket_size;
