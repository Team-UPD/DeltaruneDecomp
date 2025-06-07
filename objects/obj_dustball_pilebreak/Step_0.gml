timer += 1;
image_index = (timer / 30) * 4;
if (timer >= 30)
{
	image_index = 3;
	image_alpha -= 0.1;
}
if (timer >= 40)
	instance_destroy();
