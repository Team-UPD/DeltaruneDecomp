if (con == -1)
	event_inherited();
if (con == 0 && !d_ex())
{
	con = 1;
	event_user(0);
}
if (con == 1 && !d_ex())
	con = -1;
