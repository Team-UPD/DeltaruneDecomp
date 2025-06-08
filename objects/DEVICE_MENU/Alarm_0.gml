var _target_chapter = 0;
if (global.is_console)
{
	var _loading = instance_create(0, 0, obj_screen_loading);
	_loading.show_loading_screen(_target_chapter, scr_chapterswitch);
	_loading.depth = -1000;
}
else
{
	scr_chapterswitch(_target_chapter);
}
