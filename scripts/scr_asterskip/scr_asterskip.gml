function scr_asterskip()
{
	if (aster == 1 && autoaster == 1)
	{
		length += 2;
		mystring = string_insert(scr_84_get_lang_string("scr_asterskip_slash_scr_asterskip_gml_4_0"), mystring, i);
	}
	if (aster == 2)
		aster = 1;
}
