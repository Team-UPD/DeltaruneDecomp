timer = 0;
spawned = 1;
shadLength = 1;
floorshadOpacity = 0;
frontshadOpacity = 0;
floorShadowColor = c_black;
frontShadowColor = c_black;
fade_in = false;
fade_out = false;
fade_timer = 0;
fade_cleanup = false;
fade_reset = false;
is_active = false;
if (room == room_dw_cyber_maze_fireworks)
	is_active = global.flag[357] == 1;
inactive_cleanup = false;
cleanup_timer = 0;
depth = (room == room_dw_cyber_post_music_boss_slide) ? 80000 : 900000;
var shadow_amount = 1;
if (i_ex(obj_caterpillarchara))
{
	with (obj_caterpillarchara)
	{
		shadow_amount++;
		scr_caterpillar_interpolate();
	}
}
if (i_ex(obj_interactablesolid))
{
	with (obj_interactablesolid)
		shadow_amount++;
}
for (var i = 0; i < shadow_amount; i++)
{
	shadow_char[i] = instance_create(x, y, obj_marker);
	shadow_char[i].image_speed = 0;
}
shadow_total = shadow_amount;
if (i_ex(obj_interactablesolid))
{
	var hacker_sprite, hacker_x, hacker_y, hacker_index;
	with (obj_interactablesolid)
	{
		hacker_x = x;
		hacker_y = y;
		var hacker_depth = depth;
		hacker_sprite = sprite_index;
		hacker_index = image_index;
	}
	shadow_char[shadow_total - 1].sprite_index = hacker_sprite;
	shadow_char[shadow_total - 1].image_speed = 0;
	shadow_char[shadow_total - 1].image_xscale = 2;
	shadow_char[shadow_total - 1].image_yscale = 2;
	shadow_char[shadow_total - 1].x = hacker_x;
	shadow_char[shadow_total - 1].y = hacker_y + 4;
	shadow_char[shadow_total - 1].image_blend = frontShadowColor;
	shadow_char[shadow_total - 1].image_alpha = frontshadOpacity;
	shadow_char[shadow_total - 1].image_index = hacker_index;
}
