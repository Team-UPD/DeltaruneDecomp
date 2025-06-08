if (sprite_index == spr_krisb_attack && forceact == 1 && introanim == 1)
{
	sprite_index = spr_krisb_idle;
	image_speed = 0;
	image_index = 0;
	forceact = 0;
	introanim = 0;
}
if (sprite_index == spr_susie_attack && forceact == 1 && introanim == 1)
{
	sprite_index = spr_susieb_idle;
	image_speed = 0;
	image_index = 0;
	forceact = 0;
	introanim = 0;
}
if (sprite_index == spr_ralsei_battleintro && forceact == 1 && introanim == 1)
{
	sprite_index = spr_ralsei_idle;
	image_speed = 0;
	image_index = 9;
	forceact = 0;
	introanim = 0;
}
