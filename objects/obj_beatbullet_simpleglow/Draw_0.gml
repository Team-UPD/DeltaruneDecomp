timer++;
if ((timer % 2) == 0 && timer < 30)
{
	my_new = scr_afterimagefast();
	my_new.image_blend = c_orange;
	if (image_angle == 0)
		my_new.image_angle += random_range(3, -3) * random_range(0.7, 1.4285714285714286);
	my_new.image_xscale = 2 * random_range(0.7, 1.4285714285714286);
	my_new.image_yscale = 2 * random_range(0.7, 1.4285714285714286);
	my_new.image_alpha = random_range(0.6, 0.8);
}
