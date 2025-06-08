function scr_musicmenu_songadd(arg0, arg1)
{
	songOgg[songCount] = arg0;
	songName[songCount] = string(songCount + 1) + " - " + arg1;
	songCount++;
}
