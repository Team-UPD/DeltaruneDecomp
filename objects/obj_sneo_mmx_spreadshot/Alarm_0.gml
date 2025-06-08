for (i = 0; i < 3; i++)
{
	shot = instance_create(x, y, obj_regularbullet);
	if (i_ex(shot))
	{
		shot.direction = 120 + (i * 60);
		shot.speed = 2;
		shot.friction = -0.6;
		shot.sprite_index = spr_sneo_soundbullet;
		shot.image_angle = shot.direction;
		shot.depth = obj_sneo_phonehand_master.depth - 1;
		shot.grazepoints = 7;
		shot.element = 6;
	}
	scr_bullet_inherit(shot);
}
instance_destroy();
