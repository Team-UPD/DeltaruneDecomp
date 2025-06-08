function scr_caterpillar_interpolate()
{
	_newfacing = scr_facing_letter_to_number(scr_get_cardinal_direction(point_direction(x, y, obj_mainchara.x, obj_mainchara.y)));
	remx[0] = obj_mainchara.x;
	remy[0] = obj_mainchara.y;
	facing[0] = _newfacing;
	for (_iaia = target; _iaia > 0; _iaia -= 1)
	{
		remx[_iaia] = lerp(obj_mainchara.x, x, _iaia / target);
		if (global.darkzone == 1)
			remy[_iaia] = lerp(obj_mainchara.y, y + 16, _iaia / target);
		else
			remy[_iaia] = lerp(obj_mainchara.y, y + 6, _iaia / target);
		facing[_iaia] = _newfacing;
	}
}
