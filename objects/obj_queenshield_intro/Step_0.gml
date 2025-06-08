winetimer++;
_remx = obj_queen_enemy.x + 29;
_remy = obj_queen_enemy.y + 10;
if (winetimer <= 15)
{
	after = instance_create(x, y, obj_afterimage);
	after.x = x;
	after.y = y;
	after.image_speed = 0;
	after.image_xscale = image_xscale;
	after.image_yscale = image_yscale;
	after.sprite_index = sprite_index;
	after.depth = depth + 1;
	after.image_blend = c_lime;
	x = lerp(_idealx, _remx, winetimer / 15);
	y = lerp(_idealy, _remy, winetimer / 15);
	image_xscale = lerp(2, 0.4, winetimer / 15);
	image_yscale = lerp(2, 0.6, winetimer / 15);
}
if (winetimer == 15)
	image_speed = 1;
if (winetimer >= 15)
{
	x = _remx;
	y = _remy;
}
if (winetimer == 23)
{
	image_speed = 0;
	obj_queen_enemy.wineglasscon = 0;
	shield = instance_create(obj_queen_enemy.x - 82, obj_queen_enemy.y - 100, obj_queenshield_enemy);
	shield.appearcon = 1;
	wine = instance_create(x, y, obj_queen_battlesolid_wine);
	wine.alpha2 = 0;
	instance_destroy();
}
