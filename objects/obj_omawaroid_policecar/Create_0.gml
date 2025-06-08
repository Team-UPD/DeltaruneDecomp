scr_bullet_init();
image_alpha = 1;
if (!instance_exists(obj_heart))
	instance_destroy();
wall_destroy = 1;
state = (irandom(1) == 0) ? -1 : 0;
boxTop = obj_growtangle.y - ((obj_growtangle.sprite_height / 2) - 4);
boxBottom = obj_growtangle.y + ((obj_growtangle.sprite_height / 2) - 4);
boxLeft = obj_growtangle.x - ((obj_growtangle.sprite_width / 2) - 4);
laneTimer = 0;
previousLane = x;
lane = x;
initialSpeed = 0;
forwardSprite = sprite_index;
turnSignal = false;
leftTurnSprite = spr_omawaroid_car_left_turn;
rightTurnSprite = spr_omawaroid_car_right_turn;
init = false;
