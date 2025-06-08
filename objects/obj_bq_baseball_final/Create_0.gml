if (room == room_dw_cyber_queen_boxing)
	arcade = 1;
else
	arcade = 0;
f = 2;
depth = o_boxingqueen.depth - 1;
image_angle = irandom(359);
vspeed = 0;
image_xscale = 0.1;
image_yscale = 0.1;
hit = -1;
hit_timer = 0;
prev_room_speed = room_speed;
xbase = x;
ybase = y;
player_basex = o_boxingcontroller.x;
player_basey = o_boxingcontroller.y;
hit_direction = -1;
player_shake_timer = 0;
state = 0;
acc = 0;
spin_speed = 3;
energy_aura_timer = 0;
specialcontimer = 0;
specialcon = 0;
flameframe = 0;
flamealpha = 0;
reticletimer = 0;
