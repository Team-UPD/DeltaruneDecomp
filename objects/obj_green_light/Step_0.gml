timer++;
if (timer == 7)
	instance_destroy();
if (faster == 0)
{
	if (timer < 3)
		image_alpha += 0.1;
	if (timer >= 3)
		image_alpha -= 0.1;
}
else
{
	if (timer < 2)
		image_alpha += 0.2;
	if (timer >= 2)
		image_alpha -= 0.2;
}
