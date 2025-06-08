if (phase > 1 && image_blend != c_white)
{
	color_timer += 0.1;
	image_blend = merge_color(c_gray, c_white, color_timer);
}
switch (phase)
{
	case 0:
		if (delay == 0)
			image_alpha = 0;
		if (delay >= timer)
		{
			image_alpha = 1;
			phase++;
		}
		else
		{
			delay++;
		}
		break;
	case 1:
		var lerpValue = lerpPoint / 15;
		ease = -1 * lerpValue * (lerpValue - 2);
		x = lerp(startx, ___myrememberx, ease);
		y = lerp(starty, ___myremembery, ease);
		lerpPoint++;
		image_angle += (rotationSpeed * rotationDir);
		if (lerpPoint > 15)
			phase++;
		break;
	case 2:
		if (difficulty == 1)
		{
			targetAngle = (205 - ((targetAngle - 205) * 0.75)) + random_range(-10, 10);
		}
		else if (difficulty == 0)
		{
			targetAngle = point_direction(___myrememberx, ___myremembery, obj_heart.x, obj_heart.y);
			targetAngle += random_range(-10, 10);
		}
		else
		{
			targetAngle = point_direction(___myrememberx, ___myremembery, obj_growtangle.x, obj_growtangle.y);
			targetAngle = 210 - ((targetAngle - 210) * 1.1);
		}
	case 3:
		timer++;
		if (rotationSpeed > 2)
			rotationSpeed -= 1;
		image_angle += (rotationSpeed * rotationDir);
		if (timer >= (6 + (fireoffset / 2)))
		{
			timer = 0;
			phase++;
			rotationDir = sign(angle_difference(image_angle, targetAngle));
			if (rotationDir == 0)
				rotationDir = 1;
		}
		break;
	case 4:
		image_angle += (min(abs(angle_difference(image_angle, targetAngle)), 40) * rotationDir);
		timer++;
		if (timer >= (4 + (fireoffset / 2)))
		{
			direction = targetAngle;
			image_angle = targetAngle;
			active = true;
			phase++;
			gravity = random_range(0.5, 0.7);
			gravity_direction = targetAngle;
			speed = -2;
		}
		break;
	case 5:
		image_index = clamp(0, sprite_get_number(sprite_index) - 1, floor(speed / 2));
}
