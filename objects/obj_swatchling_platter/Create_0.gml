scr_bullet_init();
if (x < obj_growtangle.x)
{
	side = -1;
	image_angle = -90;
}
else
{
	side = 1;
	image_angle = 90;
}
platterLid = instance_create(x, y, obj_regularbullet);
platterLid.sprite_index = spr_swatchling_platter_lid;
platterLid.image_angle = image_angle;
platterPlate = instance_create(x, y, obj_regularbullet);
platterPlate.sprite_index = spr_swatchling_platter_plate;
platterPlate.image_angle = image_angle;
timer = -10;
loopTimer = 40;
lidOffset = 0;
colorTimer = 25;
firstOpen = true;
targetColor = c_yellow;
platterPlate.image_blend = targetColor;
platterLid.image_blend = targetColor;
platterPlate.damage = 5;
platterLid.damage = 5;
platterPlate.destroyonhit = 0;
platterLid.destroyonhit = 0;
platterPlate.wall_destroy = 0;
platterLid.wall_destroy = 0;
active = 0;
destroyonhit = 0;
opened = false;
hasCandy = 0;
startColor = c_yellow;
init = 0;
swatchbc = obj_swatchling_battle_controller;
ychange = 0;
lidOff = false;
lidSpeed = 0;
birds = 0;
plateSpeed = 0;
yy = y;
image_alpha = 0;
