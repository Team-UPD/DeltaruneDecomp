with (shadow)
{
	x = obj_mainchara.x;
	sprite_index = obj_mainchara.sprite_index;
	image_index = obj_mainchara.image_index;
	y = 192 - obj_mainchara.y;
	if (obj_mainchara.sprite_index == spr_krisd)
		sprite_index = spr_krisu;
	if (obj_mainchara.sprite_index == spr_krisu)
		sprite_index = spr_krisd;
	if (obj_mainchara.sprite_index == spr_krisl)
		sprite_index = spr_krisl;
	if (obj_mainchara.sprite_index == spr_krisr)
		sprite_index = spr_krisr;
}
