if (specialtalkcon == 0)
{
	with (other)
	{
		dotalk = 1;
		talkcon++;
	}
}
else
{
	other.specialtalkcon = specialtalkcon;
	other.dospecialtalk = 1;
}
instance_destroy();
