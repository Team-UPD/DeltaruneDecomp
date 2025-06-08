if (instance_exists(obj_caterpillarchara) && obj_caterpillarchara.name == "noelle")
{
	if (global.interact == 0)
	{
		with (obj_mainchara)
		{
			if (place_meeting(x, y, obj_traffic_road_trigger))
				other.fakeNoelleActive = true;
		}
	}
}
if (fakeNoelleActive == true)
{
	if (instance_exists(obj_caterpillarchara) && obj_caterpillarchara.name == "noelle")
	{
		with (obj_caterpillarchara)
			visible = false;
		if (instance_exists(obj_noelle_city_traffic_2))
			fakeNoelle = instance_find(obj_noelle_city_traffic_2, 0);
		else
			fakeNoelle = -4;
		if (!i_ex(fakeNoelle))
		{
			fakeNoelle = instance_create(obj_caterpillarchara.x, obj_caterpillarchara.y, obj_noelle_city_traffic_2);
			fakeNoelle.image_xscale = 2;
			fakeNoelle.image_yscale = 2;
			fakeNoelle.sprite_index = obj_caterpillarchara.sprite_index;
			fakeNoelle.image_index = obj_mainchara.image_index;
		}
	}
}
if (fakeNoelleActive == false)
{
	if (instance_exists(obj_caterpillarchara) && obj_caterpillarchara.name == "noelle")
		obj_caterpillarchara.visible = true;
}
