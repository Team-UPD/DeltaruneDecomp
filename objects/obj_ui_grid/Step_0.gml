if (_fade_in)
{
	_alpha = lerp(_alpha, 1, 0.06);
	for (var i = 0; i < array_length(_grid_lines); i++)
	{
		var grid_line = _grid_lines[i];
		grid_line.set_alpha(_alpha);
		grid_line.y = lerp(grid_line.y, grid_line.ystart, 0.14);
	}
	if (_alpha >= 1)
		_fade_in = false;
}
