depth = 890200;
con = 0;
hand1 = 0;
hand2 = 0;
coverup = 0;
bubbles = 0;
timer = 0;
if (global.flag[343] == 0)
{
	con = 0;
	hand1 = instance_create(264, 64, obj_marker);
	hand1.sprite_index = spr_dw_mansion_hands_cutscene;
	hand1.visible = true;
	hand1.image_xscale = -2;
	hand1.image_yscale = 2;
	hand1.image_speed = 0;
	hand1.image_index = 3;
	hand1.depth = 890200;
	bubbles1 = instance_create(184, 238, obj_marker);
	bubbles1.sprite_index = spr_mansion_hands_bubbles;
	bubbles1.image_xscale = 2;
	bubbles1.image_yscale = 2;
	bubbles1.image_speed = 0.25;
	bubbles1.depth = 890100;
}
if (global.flag[343] == 1)
{
	hand1 = instance_create(264, 64, obj_marker);
	hand1.sprite_index = spr_dw_mansion_hands_cutscene;
	hand1.image_xscale = -2;
	hand1.image_yscale = 2;
	hand1.image_speed = 0;
	hand1.image_index = 3;
	hand1.depth = 890200;
	hand2 = instance_create(499, 64, obj_marker);
	hand2.sprite_index = spr_dw_mansion_hands_cutscene;
	hand2.image_xscale = -2;
	hand2.image_yscale = 2;
	hand2.image_speed = 0;
	hand2.image_index = 1;
	hand2.depth = 890200;
	bubbles1 = instance_create(420, 238, obj_marker);
	bubbles1.sprite_index = spr_mansion_hands_bubbles;
	bubbles1.image_xscale = 2;
	bubbles1.image_yscale = 2;
	bubbles1.image_speed = 0.25;
	bubbles1.depth = 890100;
	bubbles2 = instance_create(184, 238, obj_marker);
	bubbles2.sprite_index = spr_mansion_hands_bubbles;
	bubbles2.image_xscale = 2;
	bubbles2.image_yscale = 2;
	bubbles2.image_speed = 0.25;
	bubbles2.depth = 890100;
	safe_delete(obj_camera_area);
	con = 99;
}
