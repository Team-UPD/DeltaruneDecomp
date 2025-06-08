if (movecon == 0)
{
	if (my_direction == "up")
		idealpos = pos - 1;
	if (my_direction == "down")
		idealpos = pos + 1;
	if (idealpos >= 2)
		idealpos = 2;
	if (idealpos < 0)
		idealpos = 0;
	movecon = 1;
	movetimer = 0;
}
