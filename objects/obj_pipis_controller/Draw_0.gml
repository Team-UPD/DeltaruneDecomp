siner += 0.25;
var xx = (camerax() + camerawidth()) - 10;
var yy = ((cameray() + cameraheight()) - 230) + (sin(siner / 6) * 21);
var shake = 0;
if (sprite_index == spr_sneo_arml_egg)
	shake = -4 + random(8);
if (movecon == 0)
{
	movetimer++;
	xx = lerp(camerax() + camerawidth() + 70, (camerax() + camerawidth()) - 10, movetimer / 10);
	if (movetimer == 10)
	{
		movetimer = 0;
		movecon = 1;
	}
}
if (global.turntimer < 16)
	movecon = 2;
if (movecon == 2)
{
	movetimer++;
	xx = lerp((camerax() + camerawidth()) - 10, camerax() + camerawidth() + 70, movetimer / 10);
	if (movetimer == 10)
		instance_destroy();
}
if (variant == 3 && movecon == 1)
{
	if (con == 0)
	{
		timer++;
		if (timer >= 1)
		{
			if (!instance_exists(obj_pipis_wall))
			{
				wall = instance_create(obj_growtangle.x + 200, obj_growtangle.y + (obj_growtangle.sprite_height / 2) + 60, obj_pipis_wall);
				wall.image_xscale = 2.5;
			}
			con = 1;
			timer = 0;
		}
	}
	if (con == 1)
	{
		repeat (3)
		{
			if (irandom(10) < 6)
			{
				bul = instance_create(xx + 5 + lengthdir_x(50, image_angle + 270), yy + lengthdir_y(50, image_angle + 270), obj_sneo_pipis_bomb);
				bul.gravity = 0.2 + (random(3) / 100);
				bul.vspeed = -6 - random(2);
				bul.hspeed = -1.8 - random(1.5);
				bul.target = target;
				bul.damage = damage;
				bul.depth = depth - 1;
				bul.directhit = 1;
			}
			else
			{
				bul = instance_create(xx + 5 + lengthdir_x(50, image_angle + 270), yy + lengthdir_y(50, image_angle + 270), obj_pipis_egg_bullet);
				bul.type = 3;
				bul.gravity = 0.2 + (random(3) / 100);
				bul.vspeed = -6 - random(2);
				bul.hspeed = -1.6 - random(3);
				bul.target = target;
				bul.damage = damage;
				bul.depth = depth - 1;
				bul.directhit = 1;
			}
		}
		sprite_index = spr_sneo_arml;
		angle_final = -180 + random(50);
		repeat (3)
		{
			bul = instance_create(xx + 5 + lengthdir_x(50, image_angle + 270), yy + lengthdir_y(50, image_angle + 270), obj_sneo_armcannon_smoke);
			bul.depth = depth - 2;
		}
		con = 2;
	}
	if (con == 2)
	{
		timer++;
		if (timer < 11)
			image_angle = lerp(image_angle, angle_final, timer / 10);
		if (timer < (timervariance - 15) && eggcount > 0.4)
			image_xscale = lerp(1.8, 2.5, timer / (timervariance - 15));
		if (timer == (timervariance - 15) && eggcount > 0.4)
		{
			sprite_index = spr_sneo_arml_egg;
			image_xscale = 2;
		}
		if (timer >= timervariance)
		{
			eggcount -= 0.4;
			timervariance = 60 + irandom(15);
			con = 1;
			timer = 0;
		}
	}
}
if (variant == 2 && movecon == 1)
{
	if (con == 0)
	{
		timer++;
		if (timer >= 1)
		{
			if (!instance_exists(obj_pipis_wall))
			{
				wall = instance_create(obj_growtangle.x + 200, obj_growtangle.y + (obj_growtangle.sprite_height / 2), obj_pipis_wall);
				wall.image_xscale = 2.9;
			}
			con = 1;
			timer = 0;
		}
	}
	if (con == 1)
	{
		var aa = 1;
		pipiscount++;
		if (pipiscount == 3 || pipiscount == 5 || pipiscount == 9)
			aa = 0;
		if (pipiscount == 0 || pipiscount == 4 || pipiscount == 8 || pipiscount == 11)
			aa = 1;
		if (obj_spamton_neo_enemy.difficulty == 0)
		{
			var rand = 0.8;
			if (global.turntimer > 380)
				rand = 0.5;
			var rr = 0;
			if (instance_number(obj_pipis_egg_bullet) < 2 && global.turntimer < 250)
				rr = 1;
			if (instance_number(obj_pipis_egg_bullet) < 3 && pipiscount < maxpipis)
			{
				if (aa == 1)
				{
					bul = instance_create(xx + 5 + lengthdir_x(50, image_angle + 270), yy + lengthdir_y(50, image_angle + 270), obj_pipis_egg_bullet);
					bul.type = 2;
					bul.gravity = 0.5 + (random(10) / 100);
					bul.vspeed = -14;
					bul.hspeed = -1.55 - rr - random(rand);
					bul.target = target;
					bul.damage = damage;
					bul.depth = depth - 1;
				}
				else
				{
					bul = instance_create(xx + 5 + lengthdir_x(50, image_angle + 270), yy + lengthdir_y(50, image_angle + 270), obj_pipis_egg_bullet);
					bul.type = 2;
					bul.gravity = 0.063 + (random(4) / 100);
					bul.vspeed = -4.25;
					bul.hspeed = -4;
					bul.target = target;
					bul.damage = damage;
					bul.depth = depth - 1;
					bul.directhit = 1;
				}
			}
		}
		else
		{
			var rr = 0;
			if (instance_number(obj_pipis_egg_bullet) < 2 && global.turntimer < 250)
				rr = 1;
			if (instance_number(obj_pipis_egg_bullet) < 3)
			{
				var a = -1.6 - random(0.6);
				if (aa == 1)
				{
					repeat (2)
					{
						bul = instance_create(xx + 5 + lengthdir_x(50, image_angle + 270), yy + lengthdir_y(50, image_angle + 270), obj_pipis_egg_bullet);
						bul.type = 2;
						bul.gravity = 0.5 + (random(10) / 100);
						bul.vspeed = -14;
						bul.hspeed = -1.55 - rr - random(0.8);
						bul.target = target;
						bul.damage = damage;
						bul.depth = depth - 1;
						a = -2.2 - random(0.6);
					}
				}
				else
				{
					bul = instance_create(xx + 5 + lengthdir_x(50, image_angle + 270), yy + lengthdir_y(50, image_angle + 270), obj_pipis_egg_bullet);
					bul.type = 2;
					bul.gravity = 0.063 + (random(4) / 100);
					bul.vspeed = -4.25;
					bul.hspeed = -4;
					bul.target = target;
					bul.damage = damage;
					bul.depth = depth - 1;
					bul.directhit = 1;
					bul = instance_create(xx + 5 + lengthdir_x(50, image_angle + 270), yy + lengthdir_y(50, image_angle + 270), obj_pipis_egg_bullet);
					bul.type = 2;
					bul.gravity = 0.5 + (random(10) / 100);
					bul.vspeed = -14;
					bul.hspeed = -1.4 - random(0.4);
					bul.target = target;
					bul.damage = damage;
					bul.depth = depth - 1;
					a = -2.2 - random(0.6);
				}
			}
		}
		sprite_index = spr_sneo_arml;
		angle_final = -180 + random(50);
		repeat (3)
		{
			bul = instance_create(xx + 5 + lengthdir_x(50, image_angle + 270), yy + lengthdir_y(50, image_angle + 270), obj_sneo_armcannon_smoke);
			bul.depth = depth - 2;
		}
		con = 2;
	}
	var r = 1;
	if (instance_number(obj_pipis_egg_bullet) < 1)
		r = 3;
	repeat (r)
	{
		if (con == 2)
		{
			timer++;
			if (timer < 11)
				image_angle = lerp(image_angle, angle_final, timer / 10);
			if (timer < (timervariance - 15) && eggcount > 0.4)
				image_xscale = lerp(1.8, 2.5, timer / (timervariance - 15));
			if (timer == (timervariance - 15) && eggcount > 0.4 && pipiscount < maxpipis)
			{
				sprite_index = spr_sneo_arml_egg;
				image_xscale = 2;
			}
			if (timer >= timervariance)
			{
				eggcount -= 0.4;
				timervariance = 30 + irandom(15);
				if (eggcount > 0)
				{
					con = 0;
					timer = 0;
				}
				else
				{
					instance_destroy();
				}
			}
		}
	}
}
draw_sprite_ext(spr_sneo_wingl, 0, xx, yy + 20, 2, 2, 20, c_white, 1);
draw_sprite_ext(sprite_index, 1, xx, yy + 11 + (shake / 2), image_xscale, 2, image_angle + shake, c_white, 1);
draw_sprite_ext(spr_sneo_body, 0, xx, yy + 20, 2, 2, 0, c_white, 1);
draw_sprite_ext(spr_sneo_head, 1, xx + 26, yy, 2, 2, 0, c_white, 1);
if (pipiscount >= maxpipis && global.turntimer > 10 && !instance_exists(obj_pipis_egg_bullet))
	global.turntimer = 10;
if (global.turntimer < 1)
	instance_destroy();
if (variant == 0)
{
	if (con == 0)
	{
		timer++;
		if (timer == 1)
		{
			savex = ((obj_growtangle.x + 220) - 80) + random(160);
			instance_create(savex, (obj_growtangle.y - random(30)) + (obj_growtangle.sprite_height / 2), obj_pipis_wall);
		}
		if (timer >= 10)
		{
			con = 1;
			timer = 0;
		}
	}
	if (con == 1)
	{
		bul = instance_create(savex, cameray() - 20, obj_pipis_egg_bullet);
		bul.gravity = 0.2 + (random(10) / 100);
		bul.target = target;
		bul.damage = damage;
		con = 2;
	}
	if (con == 2)
	{
		timer++;
		if (timer >= 50)
		{
			eggcount--;
			if (eggcount > 0)
			{
				con = 0;
				timer = 0;
				with (obj_pipis_wall)
					con = 1;
			}
			else
			{
				instance_destroy();
			}
		}
	}
}
if (variant == 1)
{
	if (con == 0)
	{
		timer++;
		if (timer == 1)
		{
			wall = instance_create(((obj_growtangle.x + 190) - 50) + random(100), obj_growtangle.y + (obj_growtangle.sprite_height / 2), obj_pipis_wall);
			wall.type = 1;
		}
		if (timer >= 10)
		{
			con = 1;
			timer = 0;
		}
	}
	if (con == 1)
	{
		bul = instance_create(wall.x, cameray() - 20, obj_pipis_egg_bullet);
		bul.gravity = 0.2 + (random(10) / 100);
		bul.type = 1;
		bul.parent = wall.id;
		bul.target = target;
		bul.damage = damage;
		con = 2;
	}
	if (con == 2)
	{
		timer++;
		if (timer >= 50)
		{
			eggcount--;
			if (eggcount > 0)
			{
				con = 0;
				timer = -40;
				with (wall)
					con = 1;
			}
			else
			{
				instance_destroy();
			}
		}
	}
	if (con2 == 0)
	{
		timer2++;
		if (timer2 == 40)
		{
			wall2 = instance_create(((obj_growtangle.x + 280) - 50) + random(100), obj_growtangle.y - (obj_growtangle.sprite_height / 2), obj_pipis_wall);
			wall2.type = 1;
		}
		if (timer2 >= 50)
		{
			con2 = 1;
			timer2 = 0;
		}
	}
	if (con2 == 1)
	{
		bul = instance_create(wall2.x, cameray() + cameraheight() + 20, obj_pipis_egg_bullet);
		bul.gravity = 0.2 + (random(10) / 100);
		bul.gravity_direction = 90;
		bul.type = 1;
		bul.parent = wall2.id;
		bul.target = target;
		bul.damage = damage;
		con2 = 2;
	}
	if (con2 == 2)
	{
		timer2++;
		if (timer2 >= 50)
		{
			eggcount--;
			if (eggcount > 0)
			{
				con2 = 0;
				timer2 = 0;
				with (wall2)
					con = 1;
			}
			else
			{
				instance_destroy();
			}
		}
	}
	timer3++;
	if (timer3 == 150)
	{
		bul = instance_create(camerax() + camerawidth(), obj_growtangle.y, obj_pipis_egg_bullet);
		bul.gravity = 0.6 + (random(10) / 100);
		bul.gravity_direction = 180;
		bul.target = target;
		bul.damage = damage;
	}
}
