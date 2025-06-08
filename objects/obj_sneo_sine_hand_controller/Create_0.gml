var a = 0;
b = 0;
repeat (19)
{
	hand = instance_create((camerax() + camerawidth()) - b, (cameray() + cameraheight()) - 80, obj_sneo_sine_hand);
	hand.y = cameray() + cameraheight();
	if (a == 0)
		hand.siner = 20;
	if (a == 1)
		hand.siner = 26;
	if (a == 2)
		hand.siner = 32;
	if (a == 3)
		hand.siner = 26;
	a++;
	if (a > 3)
		a = 0;
	b += 35;
}
a = 0;
b = 0;
repeat (19)
{
	hand = instance_create((camerax() + camerawidth()) - b, cameray() - 80, obj_sneo_sine_hand);
	hand.y = cameray() + cameraheight();
	hand.image_yscale = -1;
	if (a == 0)
		hand.siner = 20;
	if (a == 1)
		hand.siner = 26;
	if (a == 2)
		hand.siner = 32;
	if (a == 3)
		hand.siner = 26;
	a++;
	if (a > 3)
		a = 0;
	b += 35;
}
