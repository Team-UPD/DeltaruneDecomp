function scr_pan(arg0, arg1, arg2)
{
	panner = instance_create(0, 0, obj_panner);
	panner.panmax = arg2;
	panner.panx = arg0;
	panner.pany = arg1;
}
