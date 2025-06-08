if (o_boxingcontroller.dead == 1)
{
	o_boxingcontroller.dead = 2;
	instance_create(320, 240, obj_vector_queen_face);
}
instance_destroy();
