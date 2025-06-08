time += 1;
for (var i = 0; i < pixels; i++)
{
	mypixely[i] += pixelvsp[i];
	if (maintain_shape)
	{
		pixelvsp[i] += def_grav;
		if (pixelvsp[i] > max_vsp)
			pixelvsp[i] = max_vsp;
	}
	else
	{
		pixelvsp[i] += pixelgravoffset[i];
		if (pixelvsp[i] > (max_vsp + pixelvspmaxoffset[i]))
			pixelvsp[i] = max_vsp + pixelvspmaxoffset[i];
	}
	if (pixelexpandprog[i] < 1)
	{
		pixelexpandprog[i] += pixelexpandspd[i];
		if (pixelexpandprog[i] >= 1)
			pixelexpandprog[i] = 1;
		var _expand = sin(1.5707963267948966 * pixelexpandprog[i]);
		pixelexpand_h[i] = _expand;
		pixelexpand_v[i] = sin(1.0995574287564276 * _expand);
	}
	else
	{
		pixelexpand_v[i] += 0.01 + (pixelexpandspd[i] * 0.01);
		pixelexpand_h[i] += 0.01 + (pixelexpandspd[i] * 0.01);
		if (pixelvsp[i] >= 1)
		{
			pixelscale[i] -= 0.02;
			if (pixelscale[i] <= 0)
				pixelscale[i] = 0;
		}
	}
	if (!maintain_shape)
		pixelalpha[i] -= 0.01;
	if (pixelspritechangealarm[i])
		pixelspritechangealarm[i] -= 1;
}
