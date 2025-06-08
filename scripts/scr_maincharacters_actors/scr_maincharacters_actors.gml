function scr_maincharacters_actors()
{
	actor_count = 0;
	kr = 0;
	kr_actor = instance_create(obj_mainchara.x, obj_mainchara.y, obj_actor);
	scr_actor_setup(kr, kr_actor, "kris");
	kr_actor.sprite_index = obj_mainchara.sprite_index;
	kr_actor.depth = obj_mainchara.depth;
	with (obj_mainchara)
		visible = 0;
	for (__jj = 0; __jj < array_length_1d(global.cinstance); __jj++)
	{
		if (i_ex(global.cinstance[__jj]))
		{
			if (global.cinstance[__jj].name == "susie")
			{
				actor_count++;
				su = __jj + 1;
				su_actor = instance_create(global.cinstance[__jj].x, global.cinstance[__jj].y, obj_actor);
				scr_actor_setup(su, su_actor, "susie");
				su_actor.sprite_index = global.cinstance[__jj].sprite_index;
				su_actor.depth = global.cinstance[__jj].depth;
				with (global.cinstance[__jj])
					visible = 0;
			}
			if (global.cinstance[__jj].name == "ralsei")
			{
				actor_count++;
				ra = __jj + 1;
				ra_actor = instance_create(global.cinstance[__jj].x, global.cinstance[__jj].y, obj_actor);
				scr_actor_setup(ra, ra_actor, "ralsei");
				ra_actor.sprite_index = global.cinstance[__jj].sprite_index;
				ra_actor.depth = global.cinstance[__jj].depth;
				with (global.cinstance[__jj])
					visible = 0;
			}
			if (global.cinstance[__jj].name == "noelle")
			{
				actor_count++;
				no = __jj + 1;
				no_actor = instance_create(global.cinstance[__jj].x, global.cinstance[__jj].y, obj_actor);
				scr_actor_setup(no, no_actor, "noelle");
				no_actor.sprite_index = global.cinstance[__jj].sprite_index;
				no_actor.depth = global.cinstance[__jj].depth;
				with (global.cinstance[__jj])
					visible = 0;
			}
		}
	}
}
