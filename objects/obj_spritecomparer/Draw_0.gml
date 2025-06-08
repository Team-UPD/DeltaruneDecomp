for (i = 0; i < 3; i++)
{
	xx[i] = sprite_get_xoffset(mysprite[i]);
	yy[i] = sprite_get_yoffset(mysprite[i]);
}
if (keyboard_check_pressed(ord("4")))
{
	checkstring = get_string("Enter sprite_index of first sprite, OR enemy name from the object", "");
	if (sprite_exists(asset_get_index("spr_" + checkstring + "_idle")))
	{
		sprite[0] = asset_get_index("spr_" + checkstring + "_idle");
		sprite[1] = asset_get_index("spr_" + checkstring + "_hurt");
		sprite[2] = asset_get_index("spr_" + checkstring + "_spared");
	}
	else if (sprite_exists(asset_get_index(checkstring)))
	{
		sprite[0] = asset_get_index(checkstring);
	}
	event_user(0);
}
if (keyboard_check_pressed(ord("5")))
{
	checksprite = asset_get_index(get_string("Enter sprite_index of second sprite.", ""));
	if (checksprite != -1)
		sprite[1] = checksprite;
	event_user(0);
}
if (keyboard_check_pressed(ord("6")))
{
	checksprite = asset_get_index(get_string("Enter sprite_index of third sprite.", ""));
	if (checksprite != -1)
		sprite[2] = checksprite;
	event_user(0);
}
draw_sprite_ext(mysprite[0], image_index, x - 120, y, image_xscale, image_yscale, image_angle, image_blend, 1);
draw_sprite_ext(mysprite[1], image_index, x + 120, y, image_xscale, image_yscale, image_angle, image_blend, 1);
draw_sprite_ext(mysprite[2], image_index, x + 120, y + 120, image_xscale, image_yscale, image_angle, image_blend, 1);
if (!keyboard_check(ord("7")))
	draw_sprite_ext(mysprite[0], image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, 1);
if (!keyboard_check(ord("8")) && !hitbox_mode)
	draw_sprite_ext(mysprite[1], image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, 1);
if (!keyboard_check(ord("9")) && !hitbox_mode)
	draw_sprite_ext(mysprite[2], image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, 1);
if (keyboard_check_pressed(ord("H")))
{
	if (hitbox_mode == 0)
		hitbox_mode = 1;
	else
		hitbox_mode = 0;
}
ii = 3;
if (hitbox_mode)
	ii = 1;
var bboxl = sprite_get_bbox_left(mysprite[0]);
var bboxu = sprite_get_bbox_top(mysprite[0]);
var bboxr = sprite_get_bbox_right(mysprite[0]);
var bboxd = sprite_get_bbox_bottom(mysprite[0]);
draw_set_font(fnt_mainbig);
for (i = 0; i < ii; i++)
{
	if (i == 0)
		draw_set_color(c_yellow);
	if (i == 1)
		draw_set_color(c_red);
	draw_rectangle((x + (xx[i] * 2)) - 1, (y + (yy[i] * 2)) - 1, x + (xx[i] * 2) + 1, y + (yy[i] * 2) + 1, false);
	if (i == 0)
		draw_rectangle((x + (xx[i] * 2)) - 121, (y + (yy[i] * 2)) - 1, (x + (xx[i] * 2)) - 119, y + (yy[i] * 2) + 1, false);
	if (i == 1)
		draw_rectangle(x + (xx[i] * 2) + 119, (y + (yy[i] * 2)) - 1, x + (xx[i] * 2) + 121, y + (yy[i] * 2) + 1, false);
	draw_text(0, i * 20, string(xx[i]) + ", " + string(yy[i]));
	var height = sprite_get_height(mysprite[i]);
	var width = sprite_get_height(mysprite[i]);
	draw_set_color(c_blue);
	draw_rectangle(x - (xx[i] * 2), y - (yy[i] * 2), (x + (width * image_xscale)) - (xx[i] * 2), (y + (height * image_xscale)) - (yy[i] * 2), true);
	if (hitbox_mode)
	{
		var ix = image_xscale;
		var iy = image_yscale;
		draw_set_color(c_red);
		draw_set_alpha(0.5);
		draw_rectangle(x + (bboxl * ix), y + (bboxu * iy), x + (bboxr * ix), y + (bboxd * iy), false);
		draw_set_alpha(1);
	}
}
if (keyboard_check_pressed(ord("1")))
	s = 0;
if (keyboard_check_pressed(ord("2")))
	s = 1;
if (keyboard_check_pressed(ord("3")))
	s = 2;
var m = 5;
if (keyboard_check(vk_down))
{
	movetimer++;
	go = 0;
	if (movetimer >= m)
		go = 1;
	if (go && !hitbox_mode)
		sprite_set_offset(mysprite[s], xx[s], yy[s] - 1);
}
if (keyboard_check(vk_up))
{
	movetimer++;
	go = 0;
	if (movetimer >= m)
		go = 1;
	if (go && !hitbox_mode)
		sprite_set_offset(mysprite[s], xx[s], yy[s] + 1);
}
if (keyboard_check(vk_left))
{
	movetimer++;
	go = 0;
	if (movetimer >= m)
		go = 1;
	if (go && !hitbox_mode)
		sprite_set_offset(mysprite[s], xx[s] + 1, yy[s]);
}
if (keyboard_check(vk_right))
{
	movetimer++;
	go = 0;
	if (movetimer >= m)
		go = 1;
	if (go && !hitbox_mode)
		sprite_set_offset(mysprite[s], xx[s] - 1, yy[s]);
}
if (hitbox_mode)
{
	if (keyboard_check(vk_right))
		bboxr++;
	if (keyboard_check(vk_left))
		bboxr--;
	sprite_set_bbox(mysprite[0], bboxl, bboxu, bboxr, bboxd);
}
if (keyboard_check_pressed(ord("S")))
{
	snd_play(snd_save);
	sprite_set_bbox(sprite[0], bboxl, bboxu, bboxr, bboxd);
	for (i = 0; i < 3; i++)
		sprite_set_offset(sprite[i], xx[i], yy[i]);
}
draw_set_color(c_white);
draw_text(20, 280, "1 or 2 or 3:select sprite to move\nPress 4 or 5 or 6:Change sprite\nPress 7 or 8 or 9: Visibility toggle\nArrows: Adjust.\nH: Edit hitbox of Sprite1\nS: Save changes (this play session only)");
if (keyboard_check(ord("R")))
	room_restart();
if (keyboard_check(vk_enter))
	instance_create(x, y, obj_noellevictory_example);
if (keyboard_check_pressed(vk_insert))
	room_goto_next();
