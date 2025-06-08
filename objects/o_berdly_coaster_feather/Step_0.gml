speed *= 0.94;
if (con == 0)
{
	if (speed < 2)
		con = 1;
}
if (con == 1)
{
	timer++;
	y += (timer / 10);
	repeat (2)
		life--;
	if (life <= 0)
		instance_destroy();
	image_alpha = life / lifeD;
}
image_angle += rot;
rot *= 0.95;
