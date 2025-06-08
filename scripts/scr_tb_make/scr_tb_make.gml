function scr_tb_make(arg0, arg1, arg2, arg3, arg4)
{
	var _mytbullet = instance_create(x, y - arg0, obj_teacup_bullet);
	with (_mytbullet)
	{
		spin = arg1;
		spinrate = arg2;
		hitType = arg3;
		master = other.id;
		if (hitType == 1)
		{
			colClose = c_fuchsia;
			colFar = c_blue;
			image_blend = c_fuchsia;
		}
		if (hitType == 2)
		{
			colClose = c_lime;
			colFar = c_blue;
			image_blend = c_lime;
		}
		if (hitType == 3)
		{
			colClose = #4040FF;
			colFar = c_navy;
			image_blend = colClose;
		}
		if (hitType == 5)
		{
			image_blend = #7F553F;
			colClose = image_blend;
			colFar = image_blend;
		}
		if (hitType == 4)
		{
			sprite_index = spr_teacup_bullet_big;
			bulletCollisionAngle = 20;
		}
		lineToCenter = arg4;
		if (hitType == 3 || hitType == 5)
			lineToCenter = false;
		if (hitType == 1 || hitType == 2)
		{
			sprite_index = spr_teacup_bullet_good;
			groundForgiveness = 1;
			bulletCollisionAngle = 28;
			bulletHitHeight = 80;
		}
		spriteWidthRoot = sprite_get_width(sprite_index);
		spriteHeightRoot = sprite_get_width(sprite_index);
	}
	return _mytbullet;
}
