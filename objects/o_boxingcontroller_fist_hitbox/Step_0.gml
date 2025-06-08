timer++;
x = o_boxingcontroller.x;
y = o_boxingcontroller.y;
if (timer == 8)
	instance_destroy();
if (o_boxingcontroller.sprite_index == spr_bhero && o_boxingcontroller.image_index == 7)
	instance_destroy();
