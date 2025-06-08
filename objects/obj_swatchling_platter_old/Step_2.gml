if (global.turntimer > 1 && swatchbc.red_count > swatchbc.blue_count && (x - xstart) > 20 && i_ex(swatchbc))
{
	yy = ystart;
	var _spikeHeight;
	if ((swatchbc.shockwave_x_1 + 100) > x)
		_spikeHeight = x - (swatchbc.shockwave_x_1 - 100);
	else
		_spikeHeight = x - (swatchbc.shockwave_x_2 - 100);
	if (_spikeHeight >= 0 && _spikeHeight < 280)
	{
		_spikeHeight /= 7;
		var duration = 30;
		var at = duration / 2;
		var psuedoscale = 0;
		if (_spikeHeight < 20)
			psuedoscale = _spikeHeight / at;
		else if (_spikeHeight < duration)
			psuedoscale = (at - (_spikeHeight - at)) / at;
		psuedoscale = -1 * psuedoscale * (psuedoscale - 2);
		yy -= (psuedoscale * 60);
	}
	if (yy < y && !lidOff)
	{
		lidOff = true;
		lidSpeed = -12;
		platterLid.y = ystart + lidSpeed;
		timer = 0;
	}
	y = yy;
}
