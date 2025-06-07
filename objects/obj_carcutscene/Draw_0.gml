if (instance_exists(myd))
{
	depth = myd.depth + 1000;
	draw_set_color(c_black);
	draw_set_alpha(0.15);
	prevalpha[0] = 1;
	prevwx[0] = myd.writingx;
	prevwy[0] = myd.writingy;
	prevstringmax[0] = myd.stringmax;
	prevhspace[0] = myd.hspace;
	prevlinecount[0] = myd.linecount;
	prevvspace[0] = myd.vspace;
	for (i = 6; i > 0; i -= 1)
	{
		prevalpha[i] = prevalpha[i - 1];
		prevwx[i] = prevwx[i - 1];
		prevwy[i] = prevwy[i - 1];
		prevstringmax[i] = prevstringmax[i - 1];
		prevhspace[i] = prevhspace[i - 1];
		prevlinecount[i] = prevlinecount[i - 1];
		prevvspace[i] = prevvspace[i - 1];
		if (prevalpha[i] > 0)
			draw_rectangle(prevwx[0] - 10 - i, prevwy[0] - 10 - i, prevwx[0] + (prevstringmax[0] * prevhspace[0]) + 10 + i, prevwy[0] + ((prevlinecount[0] + 1) * prevvspace[0]) + 15 + i, false);
	}
	draw_set_alpha(1);
}
