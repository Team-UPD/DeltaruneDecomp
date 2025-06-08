function scr_asterskip()
{
	if (aster == 1 && autoaster == 1)
	{
		length += 2;
		mystring = string_insert("||", mystring, i);
	}
	if (aster == 2)
		aster = 1;
}
