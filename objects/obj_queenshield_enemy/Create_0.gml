depth = obj_queen_enemy.depth - 1;
image_blend = c_green;
image_alpha = 0.9;
image_xscale = 2;
image_yscale = 2;
image_angle = 0;
image_speed = 0;
appeartimer = 0;
hurtsfxtimer = 0;
hurtsfxcon = 0;
siner = 0;
con = 0;
createeffect = 0;
timer = 0;
turn = 0;
shieldsiner = 0;
shieldstate = 0;
shieldtimer = 0;
appearcon = 0;
queenhandx = 510;
queenhandy = 115;
idealx = x;
shieldhurt = 0;
shieldhurttimer = 0;
shieldx = 0;
shieldy = 0;
shieldalpha = 1;
shieldheight = sprite_get_height(sprite_index);
shieldhpgradual = 0;
imabouttobreak = 0;
imabouttobreak_alpha = 0.4;
imabouttobreak_siner = 0;
shaketimer = 0;
movetimer = 0;
movetype = 0;
movecon = 0;
movepiece = 0;
movetimer = 0;
destroycon = 0;
destroytimer = 0;
shieldsize = obj_queen_enemy.shieldsize;
for (i = 0; i < 14; i++)
{
	shieldpiece_x_origin[i] = x + 39;
	if (shieldsize == 7)
		shieldpiece_y_origin[i] = y + 135;
	if (shieldsize == 10)
		shieldpiece_y_origin[i] = y + 135;
	if (shieldsize == 12)
		shieldpiece_y_origin[i] = y + 135;
	shieldpiece_x[i] = x + 39;
	shieldpiece_y[i] = y + 135;
	shieldpiece_y_save[i] = y + 135;
	shieldpiece_visible[i] = 1;
	shieldpiece_xscale[i] = 2;
	shieldpiece_yscale[i] = 2;
	shieldpiece_alpha[i] = 1;
	shieldpiece_sprite_index[i] = spr_queenshield_pieces;
	shieldpiece_image_index[i] = 0;
	shieldpiece_fadetimer[i] = 0;
	shieldpiece_fadecon[i] = 0;
	depthorder[i] = 0;
}
if (shieldsize == 7)
{
	moveorder[0] = 4;
	moveorder[1] = 3;
	moveorder[2] = 2;
	moveorder[3] = 5;
	moveorder[4] = 6;
	moveorder[5] = 1;
	moveorder[6] = 0;
	shieldpiece_sprite_index[7] = spr_nothing;
	shieldpiece_sprite_index[8] = spr_nothing;
	shieldpiece_sprite_index[9] = spr_nothing;
	shieldpiece_sprite_index[10] = spr_nothing;
	shieldpiece_sprite_index[11] = spr_nothing;
	shieldpiece_sprite_index[12] = spr_nothing;
	shieldpiece_sprite_index[13] = spr_nothing;
}
if (shieldsize == 10)
{
	moveorder[0] = 4;
	moveorder[1] = 3;
	moveorder[2] = 2;
	moveorder[3] = 5;
	moveorder[4] = 6;
	moveorder[5] = 1;
	moveorder[6] = 7;
	moveorder[7] = 0;
	moveorder[8] = 8;
	moveorder[9] = 9;
	shieldpiece_sprite_index[10] = spr_nothing;
	shieldpiece_sprite_index[11] = spr_nothing;
	shieldpiece_sprite_index[12] = spr_nothing;
	shieldpiece_sprite_index[13] = spr_nothing;
}
if (shieldsize == 12)
{
	moveorder[0] = 4;
	moveorder[1] = 3;
	moveorder[2] = 2;
	moveorder[3] = 5;
	moveorder[4] = 6;
	moveorder[5] = 1;
	moveorder[6] = 7;
	moveorder[7] = 0;
	moveorder[8] = 8;
	moveorder[9] = 9;
	moveorder[10] = 10;
	moveorder[11] = 11;
	shieldpiece_sprite_index[12] = spr_nothing;
	shieldpiece_sprite_index[13] = spr_nothing;
}
if (shieldsize == 7)
{
	shieldpiece_image_index[0] = 0;
	shieldpiece_image_index[1] = 1;
	shieldpiece_image_index[2] = 1;
	shieldpiece_image_index[3] = 1;
	shieldpiece_image_index[4] = 1;
	shieldpiece_image_index[5] = 1;
	shieldpiece_image_index[6] = 2;
}
if (shieldsize == 10)
{
	shieldpiece_image_index[0] = 0;
	shieldpiece_image_index[1] = 1;
	shieldpiece_image_index[2] = 1;
	shieldpiece_image_index[3] = 1;
	shieldpiece_image_index[4] = 1;
	shieldpiece_image_index[5] = 1;
	shieldpiece_image_index[6] = 1;
	shieldpiece_image_index[7] = 1;
	shieldpiece_image_index[8] = 1;
	shieldpiece_image_index[9] = 2;
}
if (shieldsize == 12)
{
	shieldpiece_image_index[0] = 0;
	shieldpiece_image_index[1] = 1;
	shieldpiece_image_index[2] = 1;
	shieldpiece_image_index[3] = 1;
	shieldpiece_image_index[4] = 1;
	shieldpiece_image_index[5] = 1;
	shieldpiece_image_index[6] = 1;
	shieldpiece_image_index[7] = 1;
	shieldpiece_image_index[8] = 1;
	shieldpiece_image_index[9] = 1;
	shieldpiece_image_index[10] = 1;
	shieldpiece_image_index[11] = 2;
}
