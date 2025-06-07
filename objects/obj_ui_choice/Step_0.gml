if (!_init)
	exit;
if (!_input_enabled)
	exit;
_input_time--;
if (_input_time > 0)
	exit;
if (button1_p())
{
	_input_time = _input_buffer;
	select();
}
