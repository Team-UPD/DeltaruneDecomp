function hexcolor(arg0)
{
	return ((arg0 & 255) << 16) | (arg0 & 65280) | ((arg0 >> 16) & 255);
}
