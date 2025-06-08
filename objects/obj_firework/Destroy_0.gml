snd_play_pitch(snd_explosion_firework, 0.8 + random(0.1));
var c = instance_create(x, y, obj_firework_explosion);
with (c)
{
	sprite_index = other.mySprite;
	image_blend = other.image_blend;
	colorProfile = other.colorProfile;
	event_user(0);
}
if (i_ex(obj_cyber_shadowMaker_fireworks))
{
	with (obj_cyber_shadowMaker_fireworks)
		fade_in = true;
}
