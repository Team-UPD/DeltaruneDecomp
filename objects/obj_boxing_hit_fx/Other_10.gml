if (o_boxingcontroller.drawflip == 1)
{
	direction = 155 - irandom(50);
	x = (o_boxingcontroller.x + 20) - irandom(40);
	y = o_boxingcontroller.y - 80 - irandom(40);
}
else
{
	direction = 25 + irandom(50);
	x = (o_boxingcontroller.x - 20) + irandom(40);
	y = o_boxingcontroller.y - 80 - irandom(40);
}
