scr_bullet_init();
active = 0;
scr_rememberxy();
startx = x;
starty = y;
phase = 0;
lerpPoint = 0;
rotationSpeed = irandom(25) + 5;
rotationDir = 1;
if (irandom(1) == 0)
	rotationDir = -1;
fireoffset = irandom(5);
targetAngle = 0;
timer = 0;
delay = 0;
difficulty = 0;
color_timer = 0;
start_angle = -999;
image_speed = 0;
