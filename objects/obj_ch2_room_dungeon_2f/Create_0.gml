con = -1;
cutscene_master = noone;
leaveCounter = 0;
var cagesama = instance_create(70, 75, obj_npc_room);
cagesama.sprite_index = spr_npc_gouldensam;
cagesama.depth = 500000;
var cagesamb = instance_create(cagesama.x + 280, cagesama.y, obj_npc_room);
cagesamb.sprite_index = spr_npc_gouldensam;
cagesamb.depth = 500000;
var cageking = instance_create(cagesama.x, cagesama.y, obj_npc_room);
cageking.sprite_index = spr_npc_cage_king_castle;
cageking.depth = cagesama.depth - 10;
var cageanimal = instance_create(cagesamb.x, cagesamb.y, obj_npc_room);
cageanimal.sprite_index = spr_npc_cage_animals_castle;
cageanimal.depth = cagesamb.depth + 10;
var checkers = instance_create(60, 260, obj_npc_room_animated);
checkers.sprite_index = spr_smallcheckers_front;
with (checkers)
	scr_depth();
if (global.chapter != 2 || global.flag[301] == 2 || global.plot >= 200)
	instance_destroy();
