sprite_index = spr_ch2_dojo_puzzlebullet;
image_index = floor(random(sprite_get_number(sprite_index)));
image_speed = 0;
grazed = 0;
target = 0;
inv = 120;
damage = 124;
element = "none";
grazepoints = 5;
timepoints = 5;
active = 0;
activetimer = 0;
times = 5;
timesfired = 0;
timetarg = 0;
bulletspeed = 5;
image_alpha = 0;
if (instance_exists(obj_heart))
	futuredir = point_direction(x, y, obj_heart.x + 8, obj_heart.y + 8);
else
	instance_destroy();
