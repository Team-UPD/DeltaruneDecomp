if (o_boxingcontroller.dead == 1)
	exit;
if (o_boxingcontroller.invincible == 0 && confirm == 0 && o_boxingcontroller.wireframe_boxing == 0)
{
	if (other.grazed == 0)
	{
		other.grazed = 1;
		confirm = 1;
		tpgain = other.tpgain;
		alarm[0] = 2;
		with (o_boxingcontroller)
			boxingtimer -= 4;
	}
}
