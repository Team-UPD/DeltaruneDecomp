function scr_init()
{
}

function create_choice(arg0, arg1) constructor
{
	choice_text = arg0;
	choice_value = arg1;
}

function get_chapter_confirm_sound(arg0)
{
	switch (arg0)
	{
		case (1 << 0):
			return 1;
			break;
		case (2 << 0):
			return 0;
			break;
		case (3 << 0):
			return 2;
			break;
		case (4 << 0):
			return 4;
			break;
		default:
			return 3;
			break;
	}
}

function get_chapter_title(arg0)
{
	switch (arg0)
	{
		case (1 << 0):
			return (global.lang == "en") ? "The Beginning" : "はじまり";
			break;
		case (2 << 0):
			return (global.lang == "en") ? "A Cyber's World" : "サイバーワールド";
			break;
		case (3 << 0):
			return (global.lang == "en") ? "Late Night" : "レイトナイト";
			break;
		case (4 << 0):
			return (global.lang == "en") ? "Prophecy" : "予言";
			break;
		default:
			return "- -";
			break;
	}
}

function get_version()
{
	var version = "v14";
	return version;
}

function get_chapter_icon_index(arg0)
{
	switch (arg0)
	{
		case (1 << 0):
			return (1 << 0);
			break;
		case (2 << 0):
			return (2 << 0);
			break;
		case (3 << 0):
			return scr_completed_chapter_any_slot(arg0) ? (4 << 0) : (3 << 0);
			break;
		case (4 << 0):
			return (5 << 0);
			break;
		default:
			return (0 << 0);
			break;
	}
}

function get_title()
{
	var title = "DELTARUNE";
	return title;
}
