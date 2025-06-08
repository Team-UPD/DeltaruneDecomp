global.entrance = 4;
instance_create(0, 0, obj_persistentfadein);
event_user(7);
room_goto(room_previous(room_previous(room)));
