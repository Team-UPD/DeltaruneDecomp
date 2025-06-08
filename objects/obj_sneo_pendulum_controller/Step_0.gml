timer++;
if (timer == 1)
{
	d = instance_create(-1000, -1000, obj_sneo_pendulum1);
	d.sprite_index = spr_sneo_arml;
	d.image_index = 0;
	d.image_xscale = 2;
	d.image_yscale = 2;
	d = instance_create(-1000, -1000, obj_sneo_pendulum1);
	d.length = -40;
	d.myspeed = -2;
	d.place = -60;
	d.sprite_index = spr_sneo_arml;
	d.image_index = 1;
	d.image_xscale = 2;
	d.image_yscale = 2;
	d.target_x = camerax() + 310;
}
if (timer == 60)
{
	d = instance_create(-1000, -1000, obj_sneo_pendulum1);
	d.length = 310;
	d.sprite_index = spr_sneo_wingl;
	d.image_index = 0;
	d.image_xscale = 2;
	d.image_yscale = 2;
}
if (timer == 120)
{
	d = instance_create(-1000, -1000, obj_sneo_pendulum1);
	d.length = 235;
	d.sprite_index = spr_sneo_head;
	d.image_index = 0;
	d.image_xscale = 2;
	d.image_yscale = 2;
}
