if (instance_exists(obj_insideclosetcutscene))
{
	i = obj_insideclosetcutscene.papeno;
	obj_insideclosetcutscene.pape[i] = id;
	with (obj_insideclosetcutscene)
		papeno += 1;
}
