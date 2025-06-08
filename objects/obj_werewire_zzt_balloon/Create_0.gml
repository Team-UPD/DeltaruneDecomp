siner = 0;
lettersiner = 0;
letter[0] = 0;
letter[1] = 0;
letter[2] = 1;
letter[3] = 2;
for (i = 0; i < 3; i++)
	letter[i] = floor(random(5));
if (choose(0, 1, 2) != 2)
	letter[0] = 0;
preset = choose(0, 1, 2, 3);
if (preset == 0)
{
	letter[0] = 0;
	letter[1] = 0;
	letter[2] = 1;
	letter[3] = 2;
}
if (preset == 1)
{
	letter[0] = 3;
	letter[1] = 0;
	letter[2] = 0;
	letter[3] = 2;
}
image_xscale = 2;
image_yscale = 2;
canDestroyTimer = 0;
