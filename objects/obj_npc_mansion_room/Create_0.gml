if (room == room_dw_mansion_krisroom)
{
	var bathbombs = instance_create(120, 152, obj_npc_room);
	bathbombs.sprite_index = spr_dw_mansion_room_kris_bathbomb;
	with (bathbombs)
		scr_depth();
	var jongler = instance_create(124, 323, obj_npc_room_animated);
	jongler.sprite_index = spr_dw_mansion_room_kris_book_juggling;
	with (jongler)
		scr_depth();
	var tutoriel = instance_create(448, 326, obj_npc_room_animated);
	tutoriel.sprite_index = spr_dw_mansion_room_kris_toriel_piano;
	with (tutoriel)
		scr_depth();
	if (global.lang == "en")
	{
		var tutorial = instance_create(378, 326, obj_npc_room_animated);
		tutorial.sprite_index = spr_dw_mansion_room_kris_toriel_piano;
		with (tutorial)
			scr_depth();
	}
	var jello = instance_create(124, 275, obj_npc_room_animated);
	jello.sprite_index = spr_dw_mansion_room_kris_knife_jello;
	with (jello)
		scr_depth();
	var calendar = instance_create(199, 345, obj_npc_room_animated);
	calendar.sprite_index = spr_dw_mansion_room_kris_calendar;
	with (calendar)
		scr_depth();
	var casette = instance_create(470, 266, obj_npc_room_animated);
	casette.sprite_index = spr_dw_mansion_room_kris_casette_floating;
	casette.depth = 500000;
	if (global.plot >= 100)
	{
		var computer = instance_create(130, 24, obj_npc_room);
		computer.sprite_index = spr_dw_mansion_room_kris_monitor;
		with (computer)
			scr_depth();
		var talktube = instance_create(437, 150, obj_npc_sign);
		talktube.sprite_index = spr_dw_mansion_room_kris_talk_tube;
		talktube.image_speed = 0;
		with (talktube)
			scr_depth();
	}
}
if (room == room_dw_mansion_susieroom)
{
	var book = instance_create(138, 335, obj_npc_room_animated);
	book.sprite_index = spr_dw_mansion_room_susie_book_vacuum;
	with (book)
		scr_depth();
	var egg = instance_create(142, 282, obj_npc_room);
	egg.sprite_index = spr_dw_mansion_room_susie_easter_egg;
	with (egg)
		scr_depth();
	var glitch = instance_create(447, 200, obj_npc_room_animated);
	glitch.sprite_index = spr_dw_mansion_room_susie_glitch;
	with (glitch)
		scr_depth();
	var computer = instance_create(130, 26, obj_npc_room);
	computer.sprite_index = spr_dw_mansion_room_susie_computer;
	with (computer)
		scr_depth();
	var game = instance_create(368, 330, obj_npc_room_animated);
	game.sprite_index = spr_dw_mansion_room_susie_video_game;
	with (game)
		scr_depth();
	var gamebroke = instance_create(450, 302, obj_npc_room_animated);
	gamebroke.sprite_index = spr_dw_mansion_room_susie_video_game_broken;
	with (gamebroke)
		scr_depth();
	var talktube = instance_create(124, 168, obj_npc_room);
	talktube.sprite_index = spr_dw_mansion_room_susie_talk_tube;
	with (talktube)
		scr_depth();
}
