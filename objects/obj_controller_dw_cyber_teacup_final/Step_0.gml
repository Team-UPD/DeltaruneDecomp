if (con == 0)
{
	if (teacup1.y <= 1260)
	{
		pancakemaker1 = instance_create(140, -148, obj_dw_pancakemaker);
		pancakemaker1.image_xscale = 2;
		pancakemaker1.image_yscale = 2;
		pancakemaker1.depth = 0;
		con = 1;
		global.interact = 1;
	}
}
if (con == 1)
{
	pancakemaker1.y += 10;
	if (pancakemaker1.y >= 262)
	{
		instance_create(0, 0, obj_shake);
		snd_play(snd_locker);
		pancakemaker1.speed = 0;
		deadTeacup1 = instance_create(teacup1.x, teacup1.y, obj_soliddark);
		deadTeacup1.visible = true;
		deadTeacup1.depth = teacup1.depth;
		deadTeacup1.sprite_index = teacup1.sprite_index;
		deadTeacup1.image_xscale = teacup1.image_xscale;
		deadTeacup1.image_yscale = teacup1.image_yscale;
		deadTeacupStem1 = instance_create(140, teacup1.y + 16, obj_soliddark);
		deadTeacupStem1.depth = teacup1.depth + 1;
		deadTeacupStem1.visible = true;
		deadTeacupStem1.sprite_index = spr_dw_pancakemaker;
		deadTeacupStem1.image_xscale = 2;
		deadTeacupStem1.image_yscale = 2;
		con = 2;
	}
}
if (con == 2)
{
	timer++;
	if (timer > 20)
	{
		with (teacup1)
			instance_destroy();
		global.interact = 0;
	}
}
