function __view_set(arg0, arg1, arg2)
{
	var __prop = arg0;
	var __index = arg1;
	var __val = arg2;
	__view_set_internal(__prop, __index, __val);
	var __res = __view_get(__prop, __index);
	return __res;
}
