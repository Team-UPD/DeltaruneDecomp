if (button1_p() && stuck == 1)
{
	stuck = 0;
	scr_stickto_stop();
	stuckbuffer = 8;
}
stuckbuffer--;
