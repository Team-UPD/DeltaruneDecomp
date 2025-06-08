function c_shakestep(arg0, arg1)
{
	c_autowalk(0);
	c_imageindex(1);
	c_addxy(arg0, arg1);
	c_var("stepsound", 1);
	c_delaycmd(15, "imageindex", 0);
	c_shakeobj();
}
