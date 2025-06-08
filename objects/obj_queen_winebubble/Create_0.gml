scr_bullet_init();
fuelbubble = irandom(4) == 4;
direction = 90;
speed = 2;
siner = choose(0, 4 * pi);
if (fuelbubble)
	image_blend = c_teal;
image_xscale = 0.5;
image_yscale = 0.5;
depth = obj_queen_wineglass.depth;
scale = 0.5;
var d = instance_create(x, y, obj_queen_bubble_half);
d.parent = self;
d.depth = obj_queen_wineglass.depth - 1;
d.image_alpha = 0.4;
init = 0;
