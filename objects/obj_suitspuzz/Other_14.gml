for (i = 0; i < max_suit; i += 1)
{
	if (suit[i] == 1)
		suit[i] = 3;
	else if (suit[i] == 3)
		suit[i] = 1;
	if (suit[i] == 2)
		suit[i] = 4;
	else if (suit[i] == 4)
		suit[i] = 2;
}
swap += 1;
