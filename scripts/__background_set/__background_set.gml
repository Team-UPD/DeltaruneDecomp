function __background_set(arg0, arg1, arg2)
{
	var __prop = arg0;
	var __bind = arg1;
	var __val = arg2;
	var __backinfo = __background_get_element(__bind);
	__background_set_internal(__prop, __bind, __val, __backinfo);
	var __res = __background_get_internal(__prop, __bind, __backinfo);
	return __res;
}
