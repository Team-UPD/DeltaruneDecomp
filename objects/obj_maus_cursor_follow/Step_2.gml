followindex++;
if (followindex > followindexmax)
	followindex = 0;
var timer2 = followindexmax;
if (instance_exists(obj_mauswheel_enemy))
	timer2 = 35;
timer++;
if (timer <= timer2)
{
	var easedlerp = scr_ease_inout(timer / timer2, 2);
	x = lerp(maxx, heartposx[followindex], easedlerp);
	y = lerp(maxy, heartposy[followindex], easedlerp);
}
else if (timer > followindexmax)
{
	x = heartposx[followindex];
	y = heartposy[followindex];
}
heartposx[followindex] = obj_heart.x;
heartposy[followindex] = obj_heart.y;
bul_trail = scr_childbullet(x, y, obj_maus_cursor_trail);
bul_trail.image_blend = image_blend;
bul_trail.damage = damage;
bul_trail.target = target;
