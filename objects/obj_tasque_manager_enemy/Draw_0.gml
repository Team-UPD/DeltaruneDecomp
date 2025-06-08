if (instance_exists(obj_tm_whip_animation) && obj_tm_whip_animation.visible == true)
	exit;
if (state == 3)
	scr_enemy_drawhurt_generic();
if (state == 0)
{
	if (flash == 1)
		fsiner++;
	var mercy = global.mercymod[myself] >= global.mercymax[myself];
	timer += 1.5;
	var tailsprite = mercy ? sparesprite[2] : sprite[2];
	draw_monster_body_part_ext(tailsprite, 0, x + xOffset[2], y + yOffset[2], 2, 2, -sin(timer / 6) * 10, c_white, image_alpha);
	var handSprite = mercy ? sparesprite[4] : sprite[4];
	draw_monster_body_part_ext(handSprite, 0, x + xOffset[4] + (sin(timer / 6) * 2), y + yOffset[4] + (sin(timer / 6) * 2), 2, 2, 0, c_white, image_alpha);
	var whipSprite = mercy ? sparesprite[3] : sprite[3];
	draw_monster_body_part_ext(whipSprite, 0, x + xOffset[3] + (cos(timer / 6) * 2), y + yOffset[3] + (sin(timer / 6) * 2), 2, 2, sin(timer / 6) * 15, c_white, image_alpha);
	var legSprite = mercy ? sparesprite[5] : sprite[5];
	draw_monster_body_part_ext(legSprite, 0, x + xOffset[5] + (sin(timer / 6) * 0), y + yOffset[5], 2, 2, 0, c_white, image_alpha);
	var bodySprite = mercy ? sparesprite[1] : sprite[1];
	draw_monster_body_part_ext(bodySprite, 0, x + xOffset[1], y + yOffset[1] + (sin(timer / 6) * 2), 2, 2, 0, c_white, image_alpha);
	var headSprite = mercy ? sparesprite[0] : sprite[0];
	draw_monster_body_part_ext(headSprite, 0, x + xOffset[0], y + yOffset[0] + (sin(timer / 6) * 3), 2, 2, sin(timer / 6) * 10, c_white, image_alpha);
}
if (becomeflash == 0)
	flash = 0;
becomeflash = 0;
