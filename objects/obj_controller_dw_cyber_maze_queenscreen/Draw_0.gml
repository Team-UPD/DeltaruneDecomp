if (hatinit == 0)
{
	hat = scr_dark_marker(room_width, room_height, spr_werewirehat);
	hatinit = 1;
}
if (!i_ex(obj_battleback))
{
	if (i_ex(werewire6))
	{
		with (hat)
			setxy(other.werewire6.x + 20, other.werewire6.y - 28);
	}
	if (i_ex(werewire7))
	{
		with (hat)
			setxy(other.werewire7.x + 20, other.werewire7.y - 28);
	}
}
