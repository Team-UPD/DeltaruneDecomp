if (x <= (camerax() - 200))
	cleanup = true;
if (crash)
{
	cleanup_timer--;
	if (cleanup_timer <= 0)
	{
		crash = false;
		cleanup = true;
	}
}
if (cleanup)
{
	cleanup = false;
	if (explosion != -1)
		instance_destroy(explosion);
	instance_destroy();
}
