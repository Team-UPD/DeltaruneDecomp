_copyright_enabled = false;
_copyright_text = "(C) Toby Fox 2018-2025";
_version_text = "DELTARUNE " + get_version();
_scale = 1;
_alpha = 1;
_font = 2;

set_screen_state = function(arg0)
{
	if (arg0 == (4 << 0))
		_copyright_enabled = true;
};

set_alpha = function(arg0)
{
	_alpha = arg0;
};
