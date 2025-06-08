scr_spareanim();
scr_recruit();
scr_monsterdefeat();
instance_destroy();
with (obj_tasque_manager_enemy)
{
	if (global.mercymod[myself] < global.mercymax[myself])
		scr_mercyadd(myself, 35);
}
