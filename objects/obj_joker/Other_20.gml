for (i = 0; i < 4; i += 1)
{
	global.maxhp[i] = remmaxhp[i];
	if (global.hp[i] >= global.maxhp[i])
		global.hp[i] = global.maxhp[i];
}
global.invc = reminvc;
with (obj_joker_body)
{
	image_xscale = 2;
	image_yscale = 2;
	sprite_index = spr_joker_teleport;
	sparedsprite = sprite_index;
	image_index = 1;
	image_speed = 0;
}
if (global.monsterhp[myself] > 0)
{
	with (obj_joker_body)
	{
		x += 20;
		y += 18;
		scr_spareanim();
		x -= 20;
		y -= 18;
	}
}
with (obj_battlecontroller)
	skipvictory = 1;
snd_free_all();
body.dancelv = 4;
body.condition = 0;
with (obj_jokerbg_triangle_real)
	on = 0;
scr_monsterdefeat();
global.invc = reminvc;
instance_destroy();
