sprite_index = spr_boxing_bqueen_hurt_fx;
if (o_boxingcontroller.drawflip == 1)
{
	direction = 155 - irandom(50);
	y = o_boxingcontroller.y - 169;
	x = o_boxingcontroller.x;
	spin = -1;
}
else
{
	direction = 25 + irandom(50);
	y = o_boxingcontroller.y - 169;
	x = o_boxingcontroller.x;
	spin = 1;
}
image_angle = direction;
