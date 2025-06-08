d = instance_create(other.x, other.y, obj_omawaroid_explosion);
d.direction = 90;
d.speed = other.speed;
instance_destroy(other);
instance_destroy();
