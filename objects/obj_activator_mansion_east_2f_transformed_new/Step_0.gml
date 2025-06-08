count = 0;
with (obj_saucer)
{
	if (mode == 2 && con == 0)
		other.count++;
}
if (count == 6)
{
	with (obj_saucer)
	{
		if (mode == 2)
			activated = true;
	}
}
