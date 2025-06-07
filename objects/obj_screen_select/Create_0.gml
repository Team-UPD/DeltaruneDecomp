_parent = -4;
_list = instance_create(0, 0, obj_screen_select_list);
_footer = instance_create(0, 410, obj_screen_select_footer);

init = function(arg0)
{
	_parent = arg0;
	_list.init(id);
	_footer.init(id);
	_list.reset();
	var latest_chapter = get_highest_revealed_chapter();
	_list.highlight_chapter(latest_chapter);
	_list.enable_input();
	_init = true;
};

fade_in = function()
{
	_list.fade_in();
	_footer.fade_in();
};

trigger_event = function(arg0, arg1 = 0)
{
	switch (arg0)
	{
		case "scroll_list_down":
			_list.disable_input();
			_footer.reset();
			_footer.highlight();
			_footer.enable_input();
			break;
		case "scroll_list_up":
			_list.disable_input();
			_footer.reset();
			_footer.highlight();
			_footer.enable_input();
			break;
		case "scroll_footer_down":
			_footer.reset();
			_footer.disable_input();
			_list.reset();
			_list.highlight();
			_list.enable_input();
			break;
		case "scroll_footer_up":
			_footer.reset();
			_footer.disable_input();
			_list.highlight_bottom();
			_list.enable_input();
			break;
		case "launch_game":
			_list.disable_input();
			_parent.trigger_event("launch_game", arg1);
			break;
		default:
			_parent.trigger_event(arg0, arg1);
			break;
	}
};
