for (i = 0; i < 9; i++)
{
	after[i] = instance_create(x, y, obj_afterimage);
	after[i].image_speed = 0;
	after[i].sprite_index = spr_queenshield_break;
	after[i].image_xscale = image_xscale;
	after[i].image_yscale = image_yscale;
	after[i].image_index = i;
	after[i].speed = 8;
	after[i].friction = 0.4;
	after[i].depth = obj_queen_enemy.depth - 10;
}
after[0].direction = 110;
after[1].direction = 70;
after[2].direction = 90;
after[3].direction = 0;
after[4].direction = 180;
after[5].speed = 0;
after[5].friction = 0;
after[6].direction = 225;
after[7].direction = 270;
after[8].direction = 315;
