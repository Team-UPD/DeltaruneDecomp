var timeslooped;
if (typetext == " frames")
{
	solotimer = audio_sound_get_track_position(solo_music) * 30;
	timeslooped = floor(audio_sound_get_track_position(solo_music) / backing_audio_length);
	backingtimer = (audio_sound_get_track_position(backing_music) * 30) + (backing_audio_length * timeslooped * 30);
}
if (typetext == " seconds")
{
	solotimer = audio_sound_get_track_position(solo_music);
	timeslooped = floor(audio_sound_get_track_position(solo_music) / backing_audio_length);
	backingtimer = audio_sound_get_track_position(backing_music) + (backing_audio_length * timeslooped);
}
draw_set_halign(fa_right);
draw_set_halign(fa_left);
draw_set_color(c_red);
if (partfocus == 0)
	draw_set_color(c_yellow);
draw_text(0, 20, "Solo: " + string(solotimer) + string(typetext));
draw_set_color(c_red);
if (partfocus == 1)
	draw_set_color(c_yellow);
draw_text(0, 40, "Backing: " + string(backingtimer) + typetext + "(times looped: " + string(timeslooped) + ")");
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_text(0, 60, "Press left/right arrow key to make track skip backwards/forwards");
draw_text(0, 80, "Press up/down arrow key to change track selected");
draw_text(0, 100, "Press R to reset");
draw_text(0, 120, "Press Z to change frame count to second count");
draw_text(0, 140, "Press X to sync solo to backing track");
draw_text(0, 160, "Length1 " + string(backing_audio_length) + " Length2 " + string(main_audio_length));
draw_text(0, 180, string(main_audio_length / backing_audio_length));
partmode = -1;
var realign = 0;
if (partmode == -1)
{
	if (keyboard_check_pressed(ord("R")))
		room_restart();
	if (keyboard_check_pressed(ord("Z")))
	{
		if (typetext == " frames")
			typetext = " seconds";
		else
			typetext = " frames";
	}
	if (keyboard_check_pressed(ord("X")))
		realign = 1;
	if (keyboard_check(vk_right))
	{
		if (partfocus == 0)
			audio_sound_set_track_position(solo_music, audio_sound_get_track_position(solo_music) + (1/30));
		if (partfocus == 1)
			audio_sound_set_track_position(backing_music, audio_sound_get_track_position(backing_music) + (1/30));
	}
	if (keyboard_check(vk_left))
	{
		if (partfocus == 0)
			audio_sound_set_track_position(solo_music, audio_sound_get_track_position(solo_music) - (1/30));
		if (partfocus == 1)
			audio_sound_set_track_position(backing_music, audio_sound_get_track_position(backing_music) - (1/30));
	}
	if (keyboard_check_pressed(vk_up))
		partfocus -= 1;
	if (keyboard_check_pressed(vk_down))
		partfocus++;
	if (partfocus < 0)
		partfocus = 1;
	if (partfocus > 1)
		partfocus = 0;
}
loopbuffer--;
if (loopbuffer < 0)
{
	if (remlooped != timeslooped)
	{
		realign = 1;
		loopbuffer = 10;
	}
}
if (realign)
{
	backingtimer = ceil((audio_sound_get_track_position(backing_music) * 30) + (backing_audio_length * timeslooped * 30));
	audio_sound_set_track_position(solo_music, (backingtimer / 30) * 0.9992);
	if (timeslooped == 0)
		audio_sound_set_track_position(solo_music, 0);
	if (timeslooped == 0)
		audio_sound_set_track_position(backing_music, 0);
	scr_debug_print("realigned" + string(timeslooped));
}
remlooped = timeslooped;
