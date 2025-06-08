depth = original_depth;
x = basex;
y = basey;
sprite_index = spr_bqueen_idle;
if (o_boxingcontroller.wireframe_boxing == 1)
	sprite_index = spr_bqueen_idle_wireframe;
image_index = 0;
state = 0;
nextdrawflip = choose(0, 1);
blocking = nextdrawflip;
fliptimer = 0;
movetimer = 0;
image_speed = 0;
makedizzy = 0;
