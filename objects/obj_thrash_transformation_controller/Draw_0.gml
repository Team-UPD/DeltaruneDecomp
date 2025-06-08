d3d_set_fog(1, c_black, 0, 0);
draw_self();
d3d_set_fog(0, c_black, 0, 0);
draw_set_halign(fa_center);
if (instance_exists(obj_thrash_transformation_original) && obj_thrash_transformation_original.state == 1)
	timer++;
if (button1_p() && text_state == 1)
	text_state = 0;
if (text_state == 1)
	timer--;
if (timer >= (32 / f) && timer <= (38 / f))
{
	shouler_l.visible = 1;
	shouler_l.x -= 9;
	shouler_l.y -= 9;
	shouler_l.image_xscale += 0.2;
	shouler_l.image_yscale += 0.2;
	shouler_r.visible = 1;
	shouler_r.x += 9;
	shouler_r.y -= 9;
	shouler_r.image_xscale += 0.2;
	shouler_r.image_yscale += 0.2;
}
if (timer == (38 / f))
	timer = 60 / f;
if (timer >= (40 / f) && timer <= (50 / f))
{
}
if (timer == (60 / f))
{
	text_state = 1;
	draw_text_ext(x, y - 120, "Kris is the head", 20, 100);
}
if (timer >= (62 / f) && timer <= (82 / f))
{
	arm_l.image_xscale += 0.2;
	arm_l.image_yscale += 0.2;
	arm_l.visible = 1;
	arm_r.image_xscale += 0.2;
	arm_r.image_yscale += 0.2;
	arm_r.visible = 1;
}
if (timer == (84 / f))
{
	text_state = 1;
	draw_text_ext(x - 126, y - 25, "I'll be tha arms", 20, 100);
}
if (timer == (86 / f))
	timer = 92 / f;
if (timer >= (92 / f) && timer <= (98 / f))
{
	leg_l.image_xscale += 0.6;
	leg_l.image_yscale += 0.6;
	leg_l.visible = 1;
	leg_r.image_xscale += 0.6;
	leg_r.image_yscale += 0.6;
	leg_r.visible = 1;
}
if (timer == (100 / f))
{
	leg_l.basex = leg_l.x;
	leg_l.basey = leg_l.y;
	leg_r.basex = leg_r.x;
	leg_r.basey = leg_r.y;
}
if (timer >= (102 / f) && timer <= (140 / f))
{
	leg_l.x = (leg_l.basex - 2) + irandom(4);
	leg_l.y = (leg_l.basey - 2) + irandom(4);
	leg_r.x = (leg_r.basex - 2) + irandom(4);
	leg_r.y = (leg_r.basey - 2) + irandom(4);
}
if (timer >= (140 / f) && timer <= (150 / f))
{
	leg_l.image_xscale += 0.1;
	leg_l.image_yscale += 0.1;
	leg_r.image_xscale += 0.1;
	leg_r.image_yscale += 0.1;
}
if (timer == (162 / f))
{
	text_state = 1;
	draw_text_ext(x, y + 150, "I'll be the legs", 20, 100);
}
if (timer == (164 / f))
{
	flash = instance_create(x, y, o_afterimage);
	flash.sprite_index = sprite_index;
	flash.image_index = image_index;
	flash.image_xscale = image_xscale;
	flash.image_yscale = image_yscale;
	flash.image_blend = c_white;
	flash.image_speed = 0;
	flash.rate = 0.2;
	flash.hasboss = 0;
	flash.depth = depth - 1;
	flash.boss = id;
	flash.white_silhouette = 1;
	flash = instance_create(obj_thrash_transformation_original.x + 36, obj_thrash_transformation_original.heady, o_afterimage);
	flash.sprite_index = spr_thrash_head;
	flash.image_index = 0;
	flash.image_xscale = obj_thrash_transformation_original.head_xscale;
	flash.image_yscale = obj_thrash_transformation_original.head_yscale;
	flash.image_angle = obj_thrash_transformation_original.head_angle;
	flash.image_blend = c_white;
	flash.image_speed = 0;
	flash.rate = 0.2;
	flash.hasboss = 0;
	flash.depth = depth - 4;
	flash.white_silhouette = 1;
	with (obj_thrash_transformation_part)
	{
		flash = instance_create(x, y, o_afterimage);
		flash.sprite_index = sprite_index;
		flash.image_index = image_index;
		flash.image_xscale = image_xscale;
		flash.image_yscale = image_yscale;
		flash.image_blend = c_white;
		flash.image_speed = 0;
		flash.image_angle = image_angle;
		flash.rate = 0.2;
		flash.hasboss = 0;
		flash.depth = depth - 1;
		flash.boss = id;
		flash.white_silhouette = 1;
	}
	with (obj_thrash_transformation_original)
	{
		flash = instance_create(x, y, o_afterimage);
		flash.sprite_index = sprite_index;
		flash.image_index = image_index;
		flash.image_xscale = image_xscale;
		flash.image_yscale = image_yscale;
		flash.image_blend = c_white;
		flash.image_speed = 0;
		flash.rate = 0.2;
		flash.hasboss = 0;
		flash.depth = depth - 1;
		flash.boss = id;
		flash.white_silhouette = 1;
	}
}
if (timer >= (200 / f) && timer <= (210 / f))
{
	ratio = view_hport[0] / view_wport[0];
	view_wport[0] -= 24;
	view_hport[0] -= 24 * ratio;
	camera_set_view_size(view_camera[0], view_wport[0], view_hport[0]);
	__view_set(e__VW.XView, 0, __view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0) + 12));
	__view_set(e__VW.YView, 0, __view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0) + ((24 * ratio) / 2)));
}
if (timer > (250 / f))
{
	vspeed = -80 / f;
	state = 1;
	flash = instance_create(x, y, o_afterimage);
	flash.sprite_index = sprite_index;
	flash.image_index = image_index;
	flash.image_xscale = image_xscale;
	flash.image_yscale = image_yscale;
	flash.image_blend = c_white;
	flash.image_speed = 0;
	flash.rate = 0.1;
	flash.hasboss = 0;
	flash.depth = depth - 1;
	flash.boss = id;
	flash.black_silhouette = 1;
	with (obj_thrash_transformation_part)
	{
		vspeed = -80 / f;
		flash = instance_create(x, y, o_afterimage);
		flash.sprite_index = sprite_index;
		flash.image_index = image_index;
		flash.image_xscale = image_xscale;
		flash.image_yscale = image_yscale;
		flash.image_blend = c_white;
		flash.image_speed = 0;
		flash.rate = 0.1;
		flash.hasboss = 0;
		flash.depth = depth - 1;
		flash.boss = id;
		flash.black_silhouette = 1;
	}
	with (obj_thrash_transformation_original)
	{
		vspeed = -80 / f;
		flash = instance_create(x, y, o_afterimage);
		flash.sprite_index = sprite_index;
		flash.image_index = image_index;
		flash.image_xscale = image_xscale;
		flash.image_yscale = image_yscale;
		flash.image_blend = c_white;
		flash.image_speed = 0;
		flash.rate = 0.1;
		flash.hasboss = 0;
		flash.depth = depth - 1;
		flash.boss = id;
		flash.black_silhouette = 1;
	}
}
if (state == 1)
	black_alpha += 0.02;
draw_sprite_ext(spr_whitepx, 0, 0, 0, 640, 480, 0, c_black, black_alpha);
if (black_alpha > 1.9)
{
	instance_create(0, 0, obj_thrash_transformation_transition);
	room_goto(room_dw_mansion_gigaqueen);
}
draw_set_halign(fa_left);
