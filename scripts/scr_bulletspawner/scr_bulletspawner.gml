function scr_bulletspawner(arg0, arg1, arg2)
{
	__dc = instance_create(arg0, arg1, arg2);
	__dc.creator = myself;
	__dc.target = mytarget;
	__dc.damage = global.monsterat[myself] * 5;
	return __dc;
}
