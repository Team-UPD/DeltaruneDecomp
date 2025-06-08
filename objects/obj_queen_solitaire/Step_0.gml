if (y > (__view_get(e__VW.YView, 0) + 580) && cardstart == 0)
{
	cardstart = 1;
	gravity = 0;
	hspeed = 0;
}
if (bounced == 0 && (y + vspeed) > (obj_growtangle.y + 60))
{
	bounced = 1;
	vspeed *= -0.6;
	y = (obj_growtangle.y + 30) - vspeed;
}
var __cardHitbox = instance_create(x, y, obj_maus_cursor_trail);
__cardHitbox.damage = damage;
__cardHitbox.target = target;
__cardHitbox.sprite_index = sprite_index;
__cardHitbox.image_speed = 0;
__cardHitbox.image_index = image_index;
__cardHitbox.visible = false;
__cardHitbox.lifetime = arraycap - 1;
