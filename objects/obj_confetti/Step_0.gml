if (speed < 5)
	friction = 0.4;
if (speed < 2)
	fallspeed = scr_movetowards(fallspeed, 2, 0.1);
y += fallspeed;
x += (sin(siner / 15) * (fallspeed / 2));
siner++;
image_speed = 1 + (speed / 15);
