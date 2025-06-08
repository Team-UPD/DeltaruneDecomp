if (choice_index == 0)
{
	var next_chapter = global.chapter + 1;
	if (global.is_console)
	{
		var _loading = instance_create(0, 0, obj_screen_loading);
		_loading.show_loading_screen(next_chapter, scr_chapterswitch);
		_loading.depth = -1000;
	}
	else
	{
		scr_chapterswitch(next_chapter);
	}
}
if (choice_index == 1)
	game_restart_true();
