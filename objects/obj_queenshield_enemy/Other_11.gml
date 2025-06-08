anim = instance_create(x + 40, y + 120, obj_queen_vector_explosion);
anim.image_xscale = 2;
anim.image_yscale = 2;
exit;
for (i = 0; i < shieldsize; i++)
{
	after[i] = instance_create(shieldpiece_x[i], shieldpiece_y[i] + y, obj_afterimage);
	after[i].image_speed = 0;
	after[i].sprite_index = spr_queenshield_pieces_hurt;
	after[i].image_xscale = image_xscale;
	after[i].image_yscale = image_yscale;
	after[i].image_index = shieldpiece_image_index[i];
	after[i].speed = 8;
	after[i].friction = 0.4;
	after[i].depth = obj_queen_enemy.depth - 10;
}
if (shieldsize == 7)
{
	after[0].direction = 110;
	after[1].direction = 90;
	after[2].direction = 160;
	after[3].direction = 225;
	after[4].direction = 315;
}
if (shieldsize == 10)
{
	after[0].direction = 110;
	after[1].direction = 70;
	after[2].direction = 90;
	after[3].direction = 160;
	after[4].direction = 190;
	after[6].direction = 225;
	after[7].direction = 270;
	after[8].direction = 315;
}
if (shieldsize == 12)
{
	after[0].direction = 110;
	after[1].direction = 90;
	after[2].direction = 70;
	after[3].direction = 90;
	after[4].direction = 160;
	after[5].direction = 190;
	after[7].direction = 225;
	after[8].direction = 270;
	after[9].direction = 290;
	after[10].direction = 315;
}
