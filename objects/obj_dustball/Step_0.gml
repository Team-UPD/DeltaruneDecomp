timer += 1;
image_index = 1 + ((timer * 1.5) / 55);
if (timer >= 55)
	instance_destroy();
x += (sin(timer / 5) * 0.4);
y += cos(timer / 3.5);
x += 1.6;
y -= 0.8;
