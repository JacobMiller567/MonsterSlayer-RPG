// XP/Gold:
global.coins = 0;
global.xp = 0;
global.xp_needed = 15;
global.level = 1;
global.skill_points = 0;

// Quests:
global.active_quest = false;
global.quest_complete = false;
global.current_quest = 0;
global.track_kills = 0;
global.quest = array_create(15, global.current_quest);

global.quest[0] = "Hunt 4 Snails";
global.quest[1] = "Investigate Caves Out East";

global.quest[2] = "Hunt 4 Boars";
global.quest[3] = "Hunt 3 Elite Boars";

global.quest[4] = "Find Mountain Village";
global.quest[5] = "Explore Dungeon";
global.quest[6] = "Defeat Dungeon Boss";

// Skills : must be global to transfer between rooms
global.health_level = 0;
global.strength_level = 0;
global.speed_level = 0;

// Player Vitals:
global.health = 100; // using global so that health stays the same whehn changing rooms
global.max_health = 100;
global.player_speed = 5.5;
global.player_damage = 8;
global.death_count = 0;


//Player position when switching between rooms:
global.player_position_x = 35;
global.player_position_y = 745;
global.last_room = rRoom1;



// Unlockable Abilility:
global.fireball = false;
global.fire_damage = 15;
global.cool_down = room_speed * 3;
global.fire_range = 200;


// Text Holder:
global.current_text = 0;
global.last_text = 4;


// Chest System: 
global.chest_id = ds_list_create(); // stores chests id

//Boss Key
global.bossKey = false;
global.boss_fight = false;

// Music
//global.changeSong = false;


// Play Game Music
audio_play_sound(sndMusic_Calm, 80, true);