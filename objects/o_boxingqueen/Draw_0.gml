if (instance_exists(obj_thrash_intro) || instance_exists(obj_thrash_transformation_transition))
	exit;
if (instance_exists(obj_bqueen_missle_controller))
	exit;
if (instance_exists(obj_bqueen_breath_controller))
	exit;
if (nextdrawflip >= 0)
{
	drawflip = nextdrawflip;
	nextdrawflip = -1;
}
if (o_boxingqueen.health_count < (o_boxingqueen.health_count_max * 1) && o_boxingcontroller.wireframe_boxing == 1)
{
	if (force_drawflip == 0)
		drawflip = 0;
	if (force_drawflip == 1)
		drawflip = 1;
}
if (specialcon == 1 || specialcon == 2)
{
	specialcontimer++;
	flameframe = (specialcontimer / 4) % 2;
	flamealpha = specialcontimer / 15;
	if (flamealpha >= 0.5)
		flamealpha = 0.5;
	if (specialcontimer >= 15)
		flamealpha = 1 - (specialcontimer / 30);
	if (specialcontimer >= 30)
	{
		specialcontimer = 0;
		specialcon = 0;
		image_index = 0;
	}
	var move_flame = 5;
	if (drawflip == 1)
		move_flame = -5;
	if (pirouette_amount == 5)
	{
		draw_sprite_ext(spr_bhero, 10 + flameframe, (x + ((specialcon - 1) * 10) + move_flame) - 8, y, 1.7, 2.4, 0, c_red, flamealpha);
		draw_sprite_ext(spr_bhero, 11 - flameframe, (x + ((specialcon - 1) * 10) + move_flame) - 8, y, 1.7, 2.4, 0, c_orange, flamealpha / 2);
	}
	else
	{
		draw_sprite_ext(spr_bhero, 10 + flameframe, x + ((specialcon - 1) * 10) + move_flame, y, -image_xscale * specialcon, (image_yscale * specialcon) + 0.8 + abs(sin(specialcontimer / 4) / 2), 0, c_red, flamealpha);
		draw_sprite_ext(spr_bhero, 11 - flameframe, x + ((specialcon - 1) * 10) + move_flame, y, -image_xscale * specialcon, (image_yscale * specialcon) + 0.8, 0, c_orange, flamealpha / 2);
	}
}
if (drawflip == 0)
{
	if (sprite_index == spr_bqueen_punch && image_index == 5)
	{
		draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
		draw_sprite_ext(sprite_index, 5, x, y, image_xscale, image_yscale, 0, c_white, white_flash / 100);
		white_flash -= 20;
	}
	else if (sprite_index == spr_bqueen_stomp)
	{
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_red, (stomp_speed * 75) / 100);
	}
	else if ((sprite_index == spr_bqueen && image_index == 26 && final_sequence_red_state != 0) || sprite_index == spr_queen_rocket_punch_pose)
	{
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_red, final_sequence_red_alpha);
	}
	else
	{
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
		if (sprite_index == spr_bqueen_kick && image_index == 0)
			draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_black, 0.3);
		if (sprite_index == spr_bqueen_splash && image_index == 0)
			draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_black, 0.15);
	}
}
else if (sprite_index == spr_bqueen_punch && image_index == 5)
{
	draw_sprite_ext(sprite_index, 0, x, y, -image_xscale, image_yscale, 0, c_white, image_alpha);
	draw_sprite_ext(sprite_index, 5, x, y, -image_xscale, image_yscale, 0, c_white, white_flash / 100);
	white_flash -= 20;
}
else
{
	draw_sprite_ext(sprite_index, image_index, x, y, -image_xscale, image_yscale, 0, c_white, image_alpha);
	if (sprite_index == spr_bqueen_kick && image_index == 0)
		draw_sprite_ext(sprite_index, image_index, x, y, -image_xscale, image_yscale, 0, c_black, 0.3);
	if (sprite_index == spr_bqueen_splash && image_index == 0)
		draw_sprite_ext(sprite_index, image_index, x, y, -image_xscale, image_yscale, 0, c_black, 0.15);
}
if (global.bmenuno == 12 && global.bmenucoord[0][global.charturn] == 3)
{
	fsiner++;
	d3d_set_fog(1, c_white, 0, 0);
	if (drawflip == 0)
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, (-cos(fsiner / 5) * 0.4) + 0.6);
	if (drawflip == 1)
		draw_sprite_ext(sprite_index, image_index, x, y, -2, image_yscale, 0, c_white, (-cos(fsiner / 5) * 0.4) + 0.6);
	d3d_set_fog(0, c_white, 0, 0);
}
draw_set_halign(fa_left);
