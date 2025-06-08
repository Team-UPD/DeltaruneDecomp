for (j = 0; j < 3; j++)
{
	bul[j] = instance_create(x, 480, obj_collidebullet);
	bul[j].sprite_index = spr_musicenemy_damagebox;
	bul[j].x = (obj_growtangle.x - 30) + (j * 30);
	bul[j].gravity = -0.1;
	bul[j].vspeed = -4;
	bul[j].image_yscale = 0.5;
	bul[j].active = 1;
}
